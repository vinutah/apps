/**
 * This version is stamped on Apr. 14, 2015
 *
 * Contact:
 *   Louis-Noel Pouchet <pouchet.ohio-state.edu>
 *   Tomofumi Yuki <tomofumi.yuki.fr>
 *
 * Web address: http://polybench.sourceforge.net
 */
/* adi.c: this file is part of PolyBench/C */

#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <string.h>
#include <math.h>
#include <sys/time.h>


/* Presage specific headers*/
#include "Utility.h"
#include "PresageRT.h"

/* Include benchmark-specific header. */
#include "adi.h"


extern long long dim0;
extern long long dim1;
extern long long dim2;
extern int dimcount;
extern int psgdim[];
extern long long detectCounter;
#ifdef INST
//extern "C" int printFaultSitesData(void);
//extern "C" int printFaultSitesData(void);
int printFaultInjectionData(void);
int printFaultInjectionData(void);
#endif

void flipBit(void* data,unsigned bytesz,int bitPos){
	long long dest = 0;
	// Copy source data to a 64-bit integer		
	memcpy((void*)&dest,data,bytesz);
    if ((dest>>bitPos)&0x1){
	   dest = dest & (~((long long)0x1 << (bitPos)));
    } else{
	   dest = dest |  ((long long) 0x1 << (bitPos));
    }
   // Copy back the data with a random bit flipped into the source
   memcpy(data,(void*)&dest,bytesz);
   return ; // A single-bit error successfully injected!!
}

/* Array initialization. */
static
void init_array (int n,double *u)
{
  int i, j;
  srand(0);
  for (i = 0; i < n; i++)
    for (j = 0; j < n; j++)
      {
    	//u[i*n+j] =  (double) rand(); //(i + n-j) / n;
    	u[i*n+j] =  (i + n-j)*10 / n;
      }
}


void writeSimData(double* a, int n, int i, int j, const char* fname){
 FILE *fd=fopen(fname,"wb");
 fprintf(fd,"%d %d %lf\n",i,j,a[i*n+j]);
 fclose(fd);
}


/* Main computational kernel. The whole function will be timed,
   including the call and return. */
/* Based on a Fortran code fragment from Figure 5 of
 * "Automatic Data and Computation Decomposition on Distributed Memory Parallel Computers"
 * by Peizong Lee and Zvi Meir Kedem, TOPLAS, 2002
 */
static
void kernel_adi(int tsteps, int n,double *u,double *v,double *p,double *q)
{

FILE *fp_u;  
FILE *fp_v;
FILE *fp_p;
FILE *fp_q;
//long long* ntv_adr=(long long) malloc(n*n*sizeof())
  int t, i, j;
  char fu[50],fv[50],fp[50],fq[50];
  double DX, DY, DT;
  double B1, B2;
  double mul1, mul2;
  double a, b, c, d, e, f;

#pragma scop

  DX = 1.0/(double)n;
  DY = 1.0/(double)n;
  DT = 1.0/(double)tsteps;
  B1 = 2.0;
  B2 = 1.0;
  mul1 = B1 * DT / (DX * DX);
  mul2 = B2 * DT / (DY * DY);

  a = -mul1 /  2.0;
  b = 1.0+mul1;
  c = a;
  d = -mul2 / 2.0;
  e = 1.0+mul2;
  f = d;

 for (t=1; t<=tsteps; t++) {
    //Column Sweep
    for (i=1; i<n-1; i++) {
      v[i] = 1.0;
      p[i*n] = 0.0;
      q[i*n] = v[i];
      for (j=1; j<n-1; j++) {
        p[i*n+j] = -c / (a*p[i*n+(j-1)]+b);
        q[i*n+j] = (-d*u[j*n+(i-1)]+(1.0+2.0*d)*u[j*n+i] - f*u[j*n+(i+1)]-a*q[i*n+(j-1)])/(a*p[i*n+(j-1)]+b);
      }
      
      v[n*(n-1)+i] = 1.0;
      for (j=n-2; j>=1; j--) {
        v[j*n+i] = p[i*n+j] * v[(j+1)*n+i] + q[i*n+j];
      }
    }
    //Row Sweep
    for (i=1; i<n-1; i++) {
      u[i*n] = 1.0;
      p[i*n] = 0.0;
      q[i*n] = u[i*n];
      for (j=1; j<n-1; j++) {
        p[i*n+j] = -f / (d*p[i*n+(j-1)]+e);
        q[i*n+j] = (-a*v[(i-1)*n+j]+(1.0+2.0*a)*v[i*n+j] - c*v[(i+1)*n+j]-d*q[i*n+(j-1)])/(d*p[i*n+(j-1)]+e);
      }
      u[i*n+(n-1)] = 1.0;
      for (j=n-2; j>=1; j--) {
        u[i*n+j] = p[i*n+j] * u[i*n+(j+1)] + q[i*n+j];
      }

    }


//      string fu=;
//      string fv="simData_v_"+ std::to_string(t)+".txt";
//      string fp="simData_p_"+ std::to_string(t)+".txt";
//      string fq="simData_q_"+ std::to_string(t)+".txt";
//      strcpy(fu,"simData_v_");
//      strcat(fu,itoa(t));
//      strcat(fu,".txt");
//      for(int i=0;i<n;i++){
//    	  for(int j=0;j<n;j++){
//    		  writeSimData(u,n,i,j,fu);
//			  writeSimData(v,n,i,j,fv.c_str());
//			  writeSimData(p,n,i,j,fp.c_str());
//			  writeSimData(q,n,i,j,fq.c_str());
//    	  }
//      }

     long long adr = (long long) & q[n*(n+1)/2];
    if(t==tsteps/2){
     // long long adr = (long long) & q[n*(n+1)/2];
      adr=adr+256;
      q[n*(n+1)/2] =  *((double *)adr);

    }

    char buffer_u[40] ;
    char buffer_v[40] ;
    char buffer_p[40] ;
    char buffer_q[40] ;
    sprintf(buffer_u, "%d", t);
    sprintf(buffer_v, "%d", t);
    sprintf(buffer_p, "%d", t);
    sprintf(buffer_q, "%d", t);
#ifdef FAULTY
    strcat(buffer_u, "_simData_faulty_u.dat");
    strcat(buffer_v, "_simData_faulty_v.dat");
    strcat(buffer_p, "_simData_faulty_p.dat");
    strcat(buffer_q, "_simData_faulty_q.dat");
#else
    strcat(buffer_u, "_simData_u.dat");
    strcat(buffer_v, "_simData_v.dat");
    strcat(buffer_p, "_simData_p.dat");
    strcat(buffer_q, "_simData_q.dat");
#endif
    fp_u = fopen(buffer_u, "wb");
    fp_v = fopen(buffer_v, "wb");
    fp_p = fopen(buffer_p, "wb");
    fp_q = fopen(buffer_q, "wb");
    for(int i=0; i<n; i++) {
      for(int j=0; j<n; j++) {
          fprintf(fp_u, "%d %d %lf\n", i, j, u[i*n + j]) ;
          fprintf(fp_v, "%d %d %lf\n", i, j, v[i*n + j]) ;
          fprintf(fp_p, "%d %d %lf\n", i, j, p[i*n + j]) ;
         // printf("Address diff = %lld", adr - (long long)&q[n*(n+1)/2]) ;
          if(i==n/2 && j==n/2 && t==tsteps/2) {
              printf("Address diff = %lld", adr - (long long)&q[n*(n+1)/2]) ;
        	  fprintf(fp_q, "%d %d %lld\n", i, j, (long long) adr - (long long) &q[0]) ;
          }
          else fprintf(fp_q, "%d %d %lld\n", i, j, (long long) &q[i*n + j] - (long long) &q[0]) ;
      }
    }

    
//fprintf(fp_p, "%d %d %lf\n", i, j, p[i*n + j]) ;
    
  fclose(fp_u);
  fclose(fp_v);
  fclose(fp_p);
  fclose(fp_q);


  }
#pragma endscop
}

static
void kernel_adi_psg(int tsteps, int n,double *u,double *v,double *p,double *q)
{

  long long* psg_adr = (long long*)malloc(n*n*sizeof(long long));

FILE *fp_u;
FILE *fp_v;
FILE *fp_p;
FILE *fp_q;
//double *reb_q=q;
double *lca_q=q;
psg_adr[0] = (long long) lca_q;

int rei_q=0;
int lui_q=0;

  int t, i, j;
  char fu[50],fv[50],fp[50],fq[50];
  double DX, DY, DT;
  double B1, B2;
  double mul1, mul2;
  double a, b, c, d, e, f;

#pragma scop

  DX = 1.0/(double)n;
  DY = 1.0/(double)n;
  DT = 1.0/(double)tsteps;
  B1 = 2.0;
  B2 = 1.0;
  mul1 = B1 * DT / (DX * DX);
  mul2 = B2 * DT / (DY * DY);

  a = -mul1 /  2.0;
  b = 1.0+mul1;
  c = a;
  d = -mul2 / 2.0;
  e = 1.0+mul2;
  f = d;

 for (t=1; t<=tsteps; t++) {
    //Column Sweep
    for (i=1; i<n-1; i++) {
      v[i] = 1.0;
      p[i*n] = 0.0;
      rei_q=(i*n)-lui_q;
      lca_q=lca_q+rei_q;
      psg_adr[i*n] = (long long) lca_q;
      *lca_q=v[i];
      lui_q=(i*n);
      //q[i*n] = v[i];
      for (j=1; j<n-1; j++) {
        p[i*n+j] = -c / (a*p[i*n+(j-1)]+b);
        rei_q=(i*n+(j-1))-lui_q;
		lca_q=lca_q+rei_q;
		psg_adr[i*n+(j-1)] = (long long) lca_q;
        double temp1=a*(*lca_q);
		lui_q=(i*n+(j-1));

        rei_q=(i*n+j)-lui_q;
	    lca_q=lca_q+rei_q;
	    psg_adr[i*n+(j)] = (long long) lca_q;
        //q[i*n+j] = (-d*u[j*n+(i-1)]+(1.0+2.0*d)*u[j*n+i] - f*u[j*n+(i+1)]-a*q[i*n+(j-1)])/(a*p[i*n+(j-1)]+b);
	    *lca_q = (-d*u[j*n+(i-1)]+(1.0+2.0*d)*u[j*n+i] - f*u[j*n+(i+1)]-temp1)/(a*p[i*n+(j-1)]+b);
	    lui_q=(i*n+j);
      }

      v[n*(n-1)+i] = 1.0;
      for (j=n-2; j>=1; j--) {
        rei_q=(i*n+j)-lui_q;
  	    lca_q=lca_q+rei_q;
  	  psg_adr[i*n+(j)] = (long long) lca_q;
        //v[j*n+i] = p[i*n+j] * v[(j+1)*n+i] + q[i*n+j];
        v[j*n+i] = p[i*n+j] * v[(j+1)*n+i] + *lca_q;
        lui_q=(i*n+j);
      }
    }
    //Row Sweep
    for (i=1; i<n-1; i++) {
      u[i*n] = 1.0;
      p[i*n] = 0.0;

      rei_q=(i*n)-lui_q;
	  lca_q=lca_q+rei_q;
	  psg_adr[i*n] = (long long) lca_q;
//      q[i*n] = u[i*n];
      *lca_q = u[i*n];
      lui_q=(i*n);

      for (j=1; j<n-1; j++) {
        p[i*n+j] = -f / (d*p[i*n+(j-1)]+e);

        rei_q=(i*n+(j-1))-lui_q;
  	    lca_q=lca_q+rei_q;
  	  psg_adr[i*n+(j-1)] = (long long) lca_q;
        //double temp=d*q[i*n+(j-1)];
        double temp=d*(*lca_q);
        lui_q=(i*n+(j-1));

        rei_q=(i*n+j)-lui_q;
        lca_q=lca_q+rei_q;
        psg_adr[i*n+(j)] = (long long) lca_q;
        //q[i*n+j] = (-a*v[(i-1)*n+j]+(1.0+2.0*a)*v[i*n+j] - c*v[(i+1)*n+j]-d*q[i*n+(j-1)])/(d*p[i*n+(j-1)]+e);
        *lca_q = (-a*v[(i-1)*n+j]+(1.0+2.0*a)*v[i*n+j] - c*v[(i+1)*n+j] - temp)/(d*p[i*n+(j-1)]+e);
        lui_q=(i*n+j);
      }

      u[i*n+(n-1)] = 1.0;
      for (j=n-2; j>=1; j--) {
	    rei_q=(i*n+j)-lui_q;
		lca_q=lca_q+rei_q;
		psg_adr[i*n+(j)] = (long long) lca_q;
        //u[i*n+j] = p[i*n+j] * u[i*n+(j+1)] + q[i*n+j];
        u[i*n+j] = p[i*n+j] * u[i*n+(j+1)] + *lca_q;
        lui_q=(i*n+j);
      }

    }


    if(t==tsteps/2){
      lca_q=lca_q+20;
//      flipBit((void *)&adr,8,0);
//      q[n*(n+1)/2] =  *((double *)adr);
    }

	char buffer_u[40] ;
	char buffer_v[40] ;
	char buffer_p[40] ;
	char buffer_q[40] ;
	
        sprintf(buffer_u, "%d", t);
        sprintf(buffer_v, "%d", t);
        sprintf(buffer_p, "%d", t);
        sprintf(buffer_q, "%d", t);
	
        #ifdef FAULTY
	strcat(buffer_u, "_simData_faulty_u.dat");
	strcat(buffer_v, "_simData_faulty_v.dat");
	strcat(buffer_p, "_simData_faulty_p.dat");
	strcat(buffer_q, "_simData_faulty_q.dat");
	#else
	strcat(buffer_u, "_simData_u.dat");
	strcat(buffer_v, "_simData_v.dat");
	strcat(buffer_p, "_simData_p.dat");
	strcat(buffer_q, "_simData_q.dat");
	#endif
	
        fp_u = fopen(buffer_u, "wb");
        fp_v = fopen(buffer_v, "wb");
        fp_p = fopen(buffer_p, "wb");
        fp_q = fopen(buffer_q, "wb");
	for(int i=0; i<n; i++) {
	  for(int j=0; j<n; j++) {
		   fprintf(fp_u, "%d %d %lf\n", i, j, u[i*n + j]) ;
		   fprintf(fp_v, "%d %d %lf\n", i, j, v[i*n + j]) ;
		   fprintf(fp_p, "%d %d %lf\n", i, j, p[i*n + j]) ;
		   fprintf(fp_q, "%d %d %lld\n", i, j, (long long) &lca_q[i*n + j] - (long long) &q[0]) ;
	  }
	}
	fclose(fp_u);
	fclose(fp_v);
	fclose(fp_p);
	fclose(fp_q);
  }
#pragma endscop
}



int main(int argc, char** argv)
{
  double runtime=0.0;
  struct timeval start, end;
  /* Retrieve problem size. */
  if(argc<3){
	  printf("\nINFO: Insufficient arguments!\n\n");
  }
  
  int n = atoi(argv[1]);
  int tsteps = atoi(argv[2]);
  
  dimcount=1;
  psgdim[0]=n;
  dim0=n;

  double *u=(double*)malloc(n*n*sizeof(double));
  double *v=(double*)malloc(n*n*sizeof(double));
  double *p=(double*)malloc(n*n*sizeof(double));
  double *q=(double*)malloc(n*n*sizeof(double));

  psgProtect(u,(long long) &u[0],(long long) &u[(n*n)-1]);
  psgProtect(v,(long long) &v[0],(long long) &v[(n*n)-1]);
  psgProtect(p,(long long) &p[0],(long long) &p[(n*n)-1]);
  psgProtect(q,(long long) &q[0],(long long) &q[(n*n)-1]);

    /* Initialize array(s). */
  init_array (n,u);
  init_array (n,v);
  init_array (n,p);
  init_array (n,q);

  gettimeofday(&start, NULL);
  //kernel_adi (tsteps,n,u,v,p,q);
  kernel_adi_psg (tsteps,n,u,v,p,q);
  gettimeofday(&end, NULL);
  printf("Total time taken to execute the kernel: %lf seconds\n", (double) ((end.tv_sec * 1000000 + end.tv_usec) - (start.tv_sec * 1000000 + start.tv_usec))/(double)1000000);
  runtime=(double) ((end.tv_sec * 1000000 + end.tv_usec) - (start.tv_sec * 1000000 + start.tv_usec))/(double)1000000;

  //if(argc==4){
  //  print_data_2d(n,n,u,argv[3],1);
  //  print_data_2d(n,n,v,argv[3],0);
  //  print_data_2d(n,n,p,argv[3],0);
  //  print_data_2d(n,n,q,argv[3],0);
  //}


  //if(argc>=5) writeOVRData(argv[4],runtime,0);
  //if(argc>=6) writeFPRData(argv[5],detectCounter,0);

  if(detectCounter)
   	printf("\nINFO: Soft error detected\n");
  else
   	printf("\nINFO: No Soft errors detected\n");

free(u);
free(v);
free(p);
free(q);

#ifdef INST
  printFaultSitesData();
  printFaultInjectionData();
#endif

  return 0;
}
