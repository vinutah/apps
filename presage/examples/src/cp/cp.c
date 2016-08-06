#include <stdio.h>
#include <stdlib.h>

void init(double *src, int n){
  for(int i=0;i<n;i++)
	src[i] = (double) rand();
}

void cp(double *dest, double *src, int n){
  for(int i=0;i<n;i++)
	dest[i]=src[i];
}

int main(int argc, char* argv[]){
	int n=atoi(argv[1]);
	double *src=(double *)malloc(n*sizeof(double));
	double *dest=(double *)malloc(n*sizeof(double));
	init(src,n);
	cp(dest,src,n);
	free(src);
	free(dest);
	return 0;
}


