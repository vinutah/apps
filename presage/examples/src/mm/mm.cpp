#include <iostream>
#include <fstream>
#include <stdlib.h>
#include <string>

#ifdef INST
extern "C" int printFaultSitesData(void);
extern "C" int printFaultInjectionData(void);
#endif

using namespace std;

void printArray(string msg, int* a, int n, int m){
  cout << "\n" << msg << endl;
  for(int i=0;i<n;i++){
    cout << "| ";
    for(int j=0;j<m;j++){
      cout << a[(n*i)+j] << " ";
    }
    cout << "|" << endl;
  }
  cout << endl;
  return;
}

void init2DArray(int *a, int r, int c){
  for(int i=0;i<r;i++)
    for(int j=0;j<c;j++)
      a[(c*i) + j] = i+j;
  return;
}

void copy2DArray(int *src, int *dest, int r, int c){
  for(int i=0;i<r;i++)
    for(int j=0;j<c;j++)
      dest[(c*i) + j] = src[(c*i) + j];
  return;
}

int* alloc2Darray(int *a, int r, int c){
  a = new int[r*c];
  return a;
}

void dealloc2Darray(int *a, int r, int c){
  delete [] a;
  return;
}

void mm(int*c, int *a, int* b, int n){
  for(int i=0;i<n;i++){
    for(int j=0;j<n;j++){
      int sum=0;
      for(int k=0;k<n;k++){
	sum+= a[(n*i)+k]*b[(k*n)+j];
      }
      c[(i*n)+j] = sum;
    }
  }
  return;
}

void writeResult(const char* fname, int* a, int* b, int* c, int n){
  fstream fout;
  fout.open(fname,ios::out);
  for(int i=0;i<n;i++)
    for(int j=0;j<n;j++)
      fout << a[i*n+j] << "\n";
  for(int i=0;i<n;i++)
    for(int j=0;j<n;j++)
      fout << b[i*n+j] << "\n";
  for(int i=0;i<n;i++)
    for(int j=0;j<n;j++)
      fout << c[i*n+j] << "\n";  
  fout.close();
}

int main(int argc, char* argv[]){
  if(argc!=3){
    cout << "\nERROR: Insufficient arguments!";
    cout << "\nUSAGE: <bin name> <array size> <file name>\n\n";
    exit(-1);
  }
  
  int *a,*b,*c;
  int n=atoi(argv[1]);
  
  cout << "\nINFO: Array size is: " <<n<<"x"<<n; 
  cout << "\nINFO: Allocating memory for the arrays..";
  a=alloc2Darray(a,n,n);
  b=alloc2Darray(b,n,n);
  c=alloc2Darray(c,n,n);

  cout << "\nINFO: Initializing arrays..";
  init2DArray(a,n,n);
  init2DArray(b,n,n);  

  cout << "\nINFO: Performing matrix multiplication..";
  mm(c,a,b,n);
  
  cout << "\nINFO: Writing result to " << argv[2] << "..";
  writeResult(argv[2],a,b,c,n);
  
  cout << "\nINFO: Destroying resources..";
  dealloc2Darray(a,n,n);
  dealloc2Darray(b,n,n);
  dealloc2Darray(c,n,n);
  
  cout << "\nINFO: Finished execution!\n\n";

#ifdef INST
  printFaultSitesData();
  printFaultInjectionData();
#endif  
  return 0;
}
