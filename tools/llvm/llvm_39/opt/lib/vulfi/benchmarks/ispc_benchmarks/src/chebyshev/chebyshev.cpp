# include <stdlib.h>
# include <stdio.h>
# include <math.h>
# include <time.h>
# include <algorithm>
#include "../timing.h"

using namespace std;

#define FLOAT_MIN -1.00e-05

#if defined(ISPC_ALLCORE) || defined(ISPC_1CORE) 
#include "chebyshev_ispc.h"
using namespace ispc;
#endif 

#if defined(ISPC_SERIAL)
# include "chebyshev_serial.h"
#endif

#ifdef INST
extern int printFaultSitesData(void);
extern int printFaultInjectionData(void);
#endif


void test ( bool, int, int, FILE*);

int main ( int argc, char* argv[]){
	if(argc != 4){
		printf("\nError:insufficient arguments!\n");
		exit(-1);
	}
	int n = atoi(argv[1]);
	int fntype;
	if(atoi(argv[2])>=1 && atoi(argv[2]) <=3){
		fntype=atoi(argv[3]);
	} else {
		printf("\nError:invalid function type!\n");
		exit(-1);
	}
	char* outfilename = argv[3];
	FILE *fp = fopen(outfilename, "w");
    if (!fp){
        perror(outfilename);
        exit(-1);
    }	
  printf ( "\n" );
  printf ( "CHEBYSHEV_PRB\n" );
  printf ( "  C version\n" );
  printf ( "  Test the CHEBYSHEV library.\n" );
  printf("\nNumber of elements: %d\n",n);
  
#if defined(ISPC_ALLCORE) || defined(ISPC_1CORE) 
	double minTimeISPC = 0.0;
	reset_and_start_timer();   
	test(true,n,fntype,fp);
	double dt = get_elapsed_mcycles();
	minTimeISPC += dt;
	printf("@time of ISPC run:\t\t\t[%.3f] million cycles\n", minTimeISPC); 
#endif
 
#if defined(ISPC_SERIAL)   
	double minTimeSerial = 0.0; 
	reset_and_start_timer();   
	test(false,n,fntype,fp);
	double dt = get_elapsed_mcycles();		
	minTimeSerial += dt;  
	printf("@time of serial run:\t\t\t[%.3f] million cycles\n", minTimeSerial);
#endif

  printf ( "\n" );
  printf ( "CHEBYSHEV_PRB\n" );
  printf ( "  Normal end of execution.\n" );
  printf ( "\n" );

#ifdef INST
	printFaultSitesData();
	printFaultInjectionData();
#endif  
	fclose(fp);
  return 0;
}

void test( bool ispc_flag, int n, int fntype, FILE* fp){
  double a;
  double b;
  double *c=NULL;  
  double *fc=NULL;  
  double* fx=NULL;  
  int i;
  int m;
  double *x=NULL;
  
  
  printf ( "\n" );
  printf ( "CHEBYSHEV_TEST01\n" );
  printf ( "  CHEBYSHEV_COEFFICIENTS computes the coefficients of the\n" );
  printf ( "  Chebyshev interpolant.\n" );
  printf ( "  CHEBYSHEV_INTERPOLANT evaluates the interpolant.\n" );

  a = -1.0;
  b = +1.0;

  if(ispc_flag){
#if defined(ISPC_ALLCORE) || defined(ISPC_1CORE)
	c = chebyshev_coefficients_ispc ( a, b, n, fntype);  
	x = chebyshev_zeros_ispc ( n );
#endif      
  } else {
#if defined(ISPC_SERIAL)
	c = chebyshev_coefficients ( a, b, n, fntype);  
	x = chebyshev_zeros ( n );
#endif      
  }

#if defined(ISPC_ALLCORE) || defined(ISPC_1CORE) 
	updateSolution_ispc(n,a,b,x);
#endif
  
#if defined(ISPC_SERIAL)  
	updateSolution(n,a,b,x);
#endif    

  m = n;
  if(ispc_flag){
#if defined(ISPC_ALLCORE) || defined(ISPC_1CORE)       
       fc = chebyshev_interpolant_ispc ( a, b, n, c, m, x );
#endif       
  } else {
#if defined(ISPC_SERIAL)
		fc = chebyshev_interpolant ( a, b, n, c, m, x );
#endif   
  }

#if defined(ISPC_ALLCORE) || defined(ISPC_1CORE) || defined(ISPC_SERIAL)
  printf ( "\n" );
  printf ( "  F(X) is a trig function:\n" );
  printf ( "\n" );
  printf ( "          X               C(I)            F(X)           C(F)(X)\n" );
  printf ( "\n" );

	for ( i = 0; i < n; i++ ){
		fprintf(fp,"%lf\n",x[i]);
		fprintf(fp,"%lf\n",c[i]);
		fprintf(fp,"%lf\n",fc[i]);
#ifdef DEBUG
		printf ( "  %14g  %14g  %14g  \n", x[i], c[i], fc[i]);
#endif
	}

  free ( c );  
  free ( x );
  free ( fc );
#endif
  return;
}


