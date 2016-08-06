#include <stdio.h>
#include <stdlib.h>
#include <algorithm>
#include <iostream>
#include <cassert>
#include <vector>
#include <iomanip>
#include <stdlib.h>
#include <string.h>
#include <unistd.h>
#include <time.h>

#define MAX_RANGE 1000

#ifdef INST
extern int printFaultSitesData(void);
extern int printFaultInjectionData(void);
#endif

/* Source: http://rosettacode.org/wiki/Sorting_algorithms/Quicksort#C */
void qsort (int *a, int n) {
    int i, j, p, t;
    if (n < 2)
        return;
    p = a[n / 2];
    for (i = 0, j = n - 1;; i++, j--) {
        while (a[i] < p)
            i++;
        while (p < a[j])
            j--;
        if (i >= j)
            break;
        t = a[i];
        a[i] = a[j];
        a[j] = t;
    }
    qsort(a, i);
    qsort(a + i, n - i);
}


void writeResult(const char* filename, int* a, std::vector<int> unsorted_a, int n){
	int i;
	FILE* fp;
	fp = fopen(filename,"w");
	if (fp == NULL){
		printf("\nError:Coudn't find a file with a name: %s\n",filename);
		exit(-1);
	}
#ifdef DEBUG
	std::sort(unsorted_a.begin(),unsorted_a.end());
	for(i=0;i<n;i++){
		assert(a[i]==unsorted_a[i]);
		if(i>0) assert(a[i-1]<=a[i]);
	}
#endif
	
	for(i=0;i<n;i++){
		fprintf(fp,"%d\n",a[i]);
	}	
	fclose(fp);
	return;
}

void writeArraytoFile(const char* filename, int n){
	int i;
	FILE* fp;
	fp = fopen(filename,"w");
	if (fp == NULL){
		printf("\nError:Coudn't find a file with a name: %s\n",filename);
		exit(-1);
	}
	
	for(i=0;i<n-1;i++){
		fprintf(fp,"%d ",rand());
	}
	fprintf(fp,"%d\n",rand());
	fclose(fp);
	return;
}
	
std::vector<int> readArrayfromFile(const char* infilename, const char* delim){
	char * line = NULL;
	ssize_t read;
	size_t len = 0;
	std::vector<int> a;
	char* resultstr;
	int result;
	FILE* fp;
	
	// open the data file for reading
	fp = fopen(infilename,"r");
	if (fp == NULL){
		printf("\nError:Coudn't find the file containing the array data \n");
		exit(-1);
	}
	
	// read the data file line by line
	while ((read = getline(&line, &len, fp)) != -1) {
		char* temp = new char[read+1];
		temp[read] = '\0';
		strcpy(temp,line);
		resultstr = strtok(temp,delim);	
		if(resultstr!=NULL){
			result = atoi(resultstr);
			a.push_back(result);
		}
		
		while(resultstr != NULL){
			resultstr = strtok(NULL,delim);
			if(resultstr!=NULL){
				result = atoi(resultstr);
				a.push_back(result);
			}
		}
		delete temp;
	}

#ifdef DEBUG    
    unsigned i;
    for(i=0;i<a.size()-1;i++){
		printf("%d ",a[i]);
	}
	printf("%d\n",a[i]);
#endif
	
	return a;
}

void printArray(int* array, int n){
	std::cout << "\n[";
	int i;
	for(i=0;i<n-1;i++){
		std::cout << array[i] << ", ";
	}
	std::cout << array[i] << "]\n";
	return;
}

int isfile(const char* infilename){	
	if( access( infilename, F_OK ) != -1 ) {
		return 1;
	} else {
		return 0;
	}
}

int main (int argc, char *argv[]){	
	int j, n; 
	std::vector<int> a;
	const char* infilename = NULL;
	const char* outfilename = NULL;
	srand(time(NULL)); 
	if(argc==5){ 
		n = atoi(argv[2]);
		infilename = argv[3];
		outfilename = argv[4];
		// generate array input, write it to a file and then do sorting
		// cmdline - sort -w <array size> <array filename> <outfilename> 
		if(strcmp("-w",argv[1])==0){
			printf("\nInfo:Bucket sort write mode enabled.");
			printf("\nInfo:Writing the array to a file..\n");
			writeArraytoFile(infilename,n);
		}
		// read array from a file and do sorting
		// cmdline - sort -r <array size> <array filename> <outfilename>  
		else if(strcmp("-r",argv[1])==0){
			printf("\nInfo:Bucket sort read mode enabled.\n");
			printf("\nInfo:Reading the array from a file..\n");
		}
		a.clear();
		a = readArrayfromFile(infilename," \n");
		n = (int) a.size();
	} else { 
		printf("\nError: Insufficient/inavlid arguments\n");
		exit(-1);// ERROR
	}

	int *arr = new int [n];
	int *order = new int [n];
	
	
	for (j = 0; j < n; j ++) arr[j] = a[j];
#ifdef DEBUG
	printArray(arr,n);
#endif
	qsort (arr, n);
#ifdef DEBUG
	printArray(arr,n);
#endif
	writeResult(outfilename,arr,a,n);

	delete arr;
  
#ifdef INST
	printFaultSitesData();
	printFaultInjectionData();
#endif
  return 0;
}
