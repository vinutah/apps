/*
  Copyright (c) 2010-2011, Intel Corporation
  All rights reserved.

  Redistribution and use in source and binary forms, with or without
  modification, are permitted provided that the following conditions are
  met:

    * Redistributions of source code must retain the above copyright
      notice, this list of conditions and the following disclaimer.

    * Redistributions in binary form must reproduce the above copyright
      notice, this list of conditions and the following disclaimer in the
      documentation and/or other materials provided with the distribution.

    * Neither the name of Intel Corporation nor the names of its
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

#define NOMINMAX

#include <iostream>
#include <fstream>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <assert.h>
#include <math.h>
#include <algorithm>
using std::max;

#include "options_defs.h"
#include "../timing.h"

#if defined(ISPC_ALLCORE) || defined(ISPC_1CORE) 
#include "options_ispc.h"
using namespace ispc;
#endif


#if defined(ISPC_SERIAL)
extern void black_scholes_serial(float Sa[], float Xa[], float Ta[], 
                                 float ra[], float va[], 
                                 float result[], int count);

extern void binomial_put_serial(float Sa[], float Xa[], float Ta[], 
                                float ra[], float va[], 
                                float result[], int count);
#endif

#ifdef INST
extern int printFaultSitesData(void);
extern int printFaultInjectionData(void);
#endif

static void usage() {
    printf("usage: options [--count=<num options>]\n");
}

static inline
void writeResult(const char* outfilename, float* result, int len){
	std::ofstream fout;
	fout.open(outfilename,std::ios::out);
	fout << floorf(result[0]*100)/100;
    for(int i = 1; i < len; i++){
		fout << result[i] << std::endl;
	}
	fout.close();
}

int main(int argc, char *argv[]) {
    int nOptions;
    const char* infilename;
    const char* outfilename;
	if(argc != 3){
		printf("\nError:insufficient arguments!\n");
		exit(-1);
	}
	infilename = argv[1];
	outfilename = argv[2];
	
	// read nOptions
	FILE *fin = fopen(infilename, "r");
    if (!fin){
        perror(infilename);
        exit(-1);
    }    
    fscanf(fin, "%i", &nOptions);
	
	// init ds
	float *S = new float[nOptions];
    float *X = new float[nOptions];
    float *T = new float[nOptions];
    float *r = new float[nOptions];
    float *v = new float[nOptions];
    float *result = new float[nOptions];
    
    // read rest of the data 
    float tmp1,tmp2,tmp3,tmp4; // dummies
	for (int i=0;i<nOptions;i++){
        fscanf(fin, "%f %f %f %f %f %f %c %f %f", &S[i], 
        &X[i], &r[i], &tmp1, 
        &v[i], &T[i], &tmp2, 
        &tmp3, &tmp4);
     }     
     fclose(fin);
     
	FILE *fout = fopen(outfilename, "w");
    if (!fout){
        perror(infilename);
        exit(-1);
    }    
    
    double sum;

#if defined(ISPC_1CORE)
    //
    // Black-Scholes options pricing model, ispc implementation, 1 thread
    //
    double bs_ispc = 1e30;
	reset_and_start_timer();
	black_scholes_ispc(S, X, T, r, v, result, nOptions);
	double dt = get_elapsed_mcycles();
	sum = 0.;
	for (int i = 0; i < nOptions; ++i)
		sum += result[i];
	bs_ispc = std::min(bs_ispc, dt);

    printf("[black-scholes ispc, 1 thread]:\t[%.3f] million cycles (avg %f)\n", 
           bs_ispc, sum / nOptions);
    writeResult(outfilename,result,nOptions);       
#endif

#if defined(ISPC_ALLCORE)
    //
    // Black-Scholes options pricing model, ispc implementation, tasks
    //
    double bs_ispc_tasks = 1e30;
	reset_and_start_timer();
	black_scholes_ispc_tasks(S, X, T, r, v, result, nOptions);
	double dt = get_elapsed_mcycles();
	sum = 0.;
	for (int i = 0; i < nOptions; ++i)
		sum += result[i];
	bs_ispc_tasks = std::min(bs_ispc_tasks, dt);

    printf("[black-scholes ispc, tasks]:\t[%.3f] million cycles (avg %f)\n", 
           bs_ispc_tasks, sum / nOptions);
	writeResult(outfilename,result,nOptions);       
#endif

#if defined(ISPC_SERIAL)
    //
    // Black-Scholes options pricing model, serial implementation
    //
    double bs_serial = 1e30;
	reset_and_start_timer();
	black_scholes_serial(S, X, T, r, v, result, nOptions);
	double dt = get_elapsed_mcycles();
	sum = 0.;
	for (int i = 0; i < nOptions; ++i)
		sum += result[i];
	bs_serial = std::min(bs_serial, dt);
    printf("[black-scholes serial]:\t\t[%.3f] million cycles (avg %f)\n", bs_serial, 
           sum / nOptions);

#if defined(ISPC_ALLCORE) && defined(ISPC_1CORE) 
    printf("\t\t\t\t(%.2fx speedup from ISPC, %.2fx speedup from ISPC + tasks)\n", 
           bs_serial / bs_ispc, bs_serial / bs_ispc_tasks);
#endif 
	writeResult(outfilename,result,nOptions);       
#endif

#ifdef INST
	printFaultSitesData();
	printFaultInjectionData();
#endif
    fclose(fout);
    return 0;
}
