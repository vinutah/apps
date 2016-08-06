/*
  Copyright (c) 2013, Durham University
  All rights reserved.

  Redistribution and use in source and binary forms, with or without
  modification, are permitted provided that the following conditions are
  met:

    * Redistributions of source code must retain the above copyright
      notice, this list of conditions and the following disclaimer.

    * Redistributions in binary form must reproduce the above copyright
      notice, this list of conditions and the following disclaimer in the
      documentation and/or other materials provided with the distribution.

    * Neither the name of Durham University nor the names of its
      contributors may be used to endorse or promote products derived from
      this software without specific prior written permission.


   THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS
   IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED
   TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A
   PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT OWNER
   OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL,
   EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO,
   PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR
   PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF
   LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING
   NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS
   SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.  
*/
/* Author: Tomasz Koziara */


/* Modified by: Vishal Sharma (School of Computing, University of Utah) */

#include <stdio.h>
#include <stdlib.h>
#include <algorithm>
#include <iostream>
#include <cassert>
#include <vector>
#include <iomanip>
#include "../timing.h"
#include <stdlib.h>
#include <string.h>
#include <unistd.h>
#include <time.h>

#define MAX_RANGE 1000

#if defined(ISPC_ALLCORE) || defined(ISPC_1CORE) 
#include "sort_ispc.h"
using namespace ispc;
#endif

#if defined(ISPC_SERIAL)
extern void sort_serial (int n, int code[], int order[]);
#endif

#ifdef INST
extern int printFaultSitesData(void);
extern int printFaultInjectionData(void);
#endif


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

void printArray(int* array, int* order, int n){
	std::cout << "\n[";
	int i;
	for(i=0;i<n-1;i++){
		std::cout << array[order[i]] << ", ";
	}
	std::cout << array[i] << "]\n";
	return;
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
	int i, j, n; 
	std::vector<int> a;
	double tISPC1 = 0.0, tISPC2 = 0.0, tSerial = 0.0;
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

	int *code = new int [n];
	int *order = new int [n];
	
	
#if defined(ISPC_1CORE)
	// ispc 1core
	for (j = 0; j < n; j ++) code [j] = a[j];
	reset_and_start_timer();
	sort_ispc (n, code, order, 1);       
	tISPC1 += get_elapsed_mcycles();
	printf("[sort ispc]:\t[%.3f] million cycles\n", tISPC1);
	writeResult(outfilename,code,a,n);
#endif

#if defined(ISPC_ALLCORE)
	// ispc all core
	for (j = 0; j < n; j ++) code [j] = a[j];
	reset_and_start_timer();
	sort_ispc (n, code, order, 0);
	tISPC2 += get_elapsed_mcycles();
	printf("[sort ispc + tasks]:\t[%.3f] million cycles\n", tISPC2);
	writeResult(outfilename,code,a,n);
#endif

#if defined(ISPC_SERIAL)
	// serial
	for (j = 0; j < n; j ++) code [j] = a[j];
	reset_and_start_timer();
	sort_serial (n, code, order);
	tSerial += get_elapsed_mcycles();
	printf("[sort serial]:\t\t[%.3f] million cycles\n", tSerial);
	writeResult(outfilename,code,a,n);

#if defined(ISPC_ALLCORE) && defined(ISPC_1CORE) 
	printf("\t\t\t\t(%.2fx speedup from ISPC, %.2fx speedup from ISPC + tasks)\n", tSerial/tISPC1, tSerial/tISPC2);
#endif
#endif

	delete code;
	delete order;
  
#ifdef INST
	printFaultSitesData();
	printFaultInjectionData();
#endif
  return 0;
}
