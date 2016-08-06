/*
  Copyright (c) 2010-2014, Intel Corporation
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

#ifdef _MSC_VER
#define _CRT_SECURE_NO_WARNINGS
#define NOMINMAX
#pragma warning (disable: 4244)
#pragma warning (disable: 4305)
#endif

#include <cstdlib>
#include <stdio.h>
#include <algorithm>
#include <string.h>
#include <math.h>
#include "../timing.h"
#include <fstream>

#if defined(ISPC_ALLCORE) || defined(ISPC_1CORE) 
#include "stencil_ispc.h"
using namespace ispc;
#endif

#if defined(ISPC_SERIAL)
extern void loop_stencil_serial(int t0, int t1, int x0, int x1,
                                int y0, int y1, int z0, int z1,
                                int Nx, int Ny, int Nz,
                                const float coef[5], 
                                const float vsq[],
                                float Aeven[], float Aodd[]);


#endif

#ifdef INST
extern int printFaultSitesData(void);
extern int printFaultInjectionData(void);
#endif

void writeResult(const char* filename, float* result, int Nx, int Ny, int Nz, std::ios_base::openmode mode){
	std::ofstream fout;
	fout.open(filename,mode);
    for (int z = 0; z < Nz; ++z)
        for (int y = 0; y < Ny; ++y)
            for (int x = 0; x < Nx; ++x) {
		int idx = x + Nx*y + Nx*Ny*z;
		fout << result[idx] << "\n";
	}
	fout.close();
}

void InitData(int Nx, int Ny, int Nz, float *A[2], float *vsq) {
	srand(12345678);
	int scale = 10 + rand()%1000;
    int offset = 0;
    for (int z = 0; z < Nz; ++z)
        for (int y = 0; y < Ny; ++y)
            for (int x = 0; x < Nx; ++x, ++offset) {
                A[0][offset] = (x < Nx / 2) ? (scale*x) / float(Nx) : (scale*y) / float(Ny);
                A[1][offset] = 0;
                vsq[offset] = x*y*z / float(Nx * Ny * Nz);
            }
}


int main(int argc, char *argv[]) {
	if(argc != 3){
		printf("\nError:insufficient arguments!\n");
		exit(-1);
	}
	int n = atoi(argv[1]);
	char* outfilename = argv[2];
	FILE *fp = fopen(outfilename, "w");
    if (!fp){
        perror(outfilename);
        exit(-1);
    }
    int Nx = n, Ny = n, Nz = n;
    int width = 4;    
  

    float *Aserial[2], *Aispc[2];
    Aserial[0] = new float [Nx * Ny * Nz];
    Aserial[1] = new float [Nx * Ny * Nz];
    Aispc[0] = new float [Nx * Ny * Nz];
    Aispc[1] = new float [Nx * Ny * Nz];
    float *vsq = new float [Nx * Ny * Nz];

    float coeff[4] = { 0.5, -.25, .125, -.0625 }; 

#if defined(ISPC_1CORE)
    InitData(Nx, Ny, Nz, Aispc, vsq);
    //
    // Compute the image using the ispc implementation on one core; report
    // the minimum time of three runs.
    //
    double minTimeISPC = 1e30;
	reset_and_start_timer();
	loop_stencil_ispc(0, 6, width, Nx - width, width, Ny - width,
					  width, Nz - width, Nx, Ny, Nz, coeff, vsq,
					  Aispc[0], Aispc[1]);
	double dt = get_elapsed_mcycles();
	printf("@time of ISPC run:\t\t\t[%.3f] million cycles\n", dt);
	minTimeISPC = std::min(minTimeISPC, dt);

    
	if(outfilename){
		writeResult(outfilename,Aispc[0],Nx,Ny,Nz, std::ios::out);
		writeResult(outfilename,Aispc[1],Nx,Ny,Nz, std::ios::app);
	} else {
		writeResult("result_stencil_ispc_1core.out",Aispc[0],Nx,Ny,Nz, std::ios::out);
		writeResult("result_stencil_ispc_1core.out",Aispc[1],Nx,Ny,Nz, std::ios::app);
	}
    printf("[stencil ispc 1 core]:\t\t[%.3f] million cycles\n", minTimeISPC);
#endif

#if defined(ISPC_ALLCORE)
    InitData(Nx, Ny, Nz, Aispc, vsq);

    //
    // Compute the image using the ispc implementation with tasks; report
    // the minimum time of three runs.
    //
    double minTimeISPCTasks = 1e30;
	reset_and_start_timer();
	loop_stencil_ispc_tasks(0, 6, width, Nx - width, width, Ny - width,
							width, Nz - width, Nx, Ny, Nz, coeff, vsq,
							Aispc[0], Aispc[1]);
	double dt = get_elapsed_mcycles();
	printf("@time of ISPC + TASKS run:\t\t\t[%.3f] million cycles\n", dt);
	minTimeISPCTasks = std::min(minTimeISPCTasks, dt);
	if(outfilename){
		writeResult(outfilename,Aispc[0],Nx,Ny,Nz, std::ios::out);
		writeResult(outfilename,Aispc[1],Nx,Ny,Nz, std::ios::app);
	} else {
		writeResult("result_stencil_ispc_allcore.out",Aispc[0],Nx,Ny,Nz, std::ios::out);
		writeResult("result_stencil_ispc_allcore.out",Aispc[1],Nx,Ny,Nz, std::ios::app);		
	}
    printf("[stencil ispc + tasks]:\t\t[%.3f] million cycles\n", minTimeISPCTasks);
#endif

#if defined(ISPC_SERIAL)
    InitData(Nx, Ny, Nz, Aserial, vsq);

    // 
    // And run the serial implementation 3 times, again reporting the
    // minimum time.
    //
    double minTimeSerial = 1e30;
	reset_and_start_timer();
	loop_stencil_serial(0, 6, width, Nx-width, width, Ny - width,
						width, Nz - width, Nx, Ny, Nz, coeff, vsq,
						Aserial[0], Aserial[1]);
	double dt = get_elapsed_mcycles();
	printf("@time of serial run:\t\t\t[%.3f] million cycles\n", dt);
	minTimeSerial = std::min(minTimeSerial, dt);

	if(outfilename){
		writeResult(outfilename,Aserial[0],Nx,Ny,Nz, std::ios::out);
		writeResult(outfilename,Aserial[1],Nx,Ny,Nz, std::ios::app);
	} else {
		writeResult("result_stencil_serial.out",Aserial[0],Nx,Ny,Nz, std::ios::out);
		writeResult("result_stencil_serial.out",Aserial[1],Nx,Ny,Nz, std::ios::app);		
	}
    printf("[stencil serial]:\t\t[%.3f] million cycles\n", minTimeSerial);

#if defined(ISPC_ALLCORE) && defined(ISPC_1CORE) 
    printf("\t\t\t\t(%.2fx speedup from ISPC, %.2fx speedup from ISPC + tasks)\n", 
           minTimeSerial / minTimeISPC, minTimeSerial / minTimeISPCTasks);


    // Check for agreement
    int offset = 0;
    for (int z = 0; z < Nz; ++z)
        for (int y = 0; y < Ny; ++y)
            for (int x = 0; x < Nx; ++x, ++offset) {
                float error = fabsf((Aserial[1][offset] - Aispc[1][offset]) /
                                    Aserial[1][offset]);
                if (error > 1e-4)
                    printf("Error @ (%d,%d,%d): ispc = %f, serial = %f\n",
                           x, y, z, Aispc[1][offset], Aserial[1][offset]);
            }
#endif
            
#endif

#ifdef INST
	printFaultSitesData();
	printFaultInjectionData();
#endif
    return 0;
}
