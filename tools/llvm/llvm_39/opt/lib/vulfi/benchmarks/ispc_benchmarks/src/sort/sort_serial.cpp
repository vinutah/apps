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

#include <stdio.h>
#include <vector>
#include <algorithm>
#include <utility>

int programIndex=0;
int taskIndex=0;
int programCount=1;
int taskCount=1;

void histogram (int span, int n, long long code[], int pass, int hist[])
{
  int start = taskIndex*span;
  int end = taskIndex == taskCount-1 ? n : start+span;
  int strip = (end-start)/programCount;
  int tail = (end-start)%programCount;
  int i = programCount*taskIndex + programIndex;
  int g [256];

  for (int j = 0; j < 256; j ++){
    g[j] = 0;
  }

  for (int k = start+programIndex*strip; k < start+(programIndex+1)*strip; k ++){
    unsigned char *c = (unsigned char*) &code[k];
    g[c[pass]] ++;
  }

  if (programIndex == programCount-1){
    for (int k = start+programCount*strip; k < start+programCount*strip+tail; k ++){
      unsigned char *c = (unsigned char*) &code[k];
      g[c[pass]] ++;
    }
  }

  for (int j = 0; j < 256; j ++){
    hist[j*programCount*taskCount+i] = g[j];
  }
}

void permutation (int span, int n, long long code[], int pass, int hist[], long long perm[])
{
  int start = taskIndex*span;
  int end = taskIndex == taskCount-1 ? n : start+span;
  int strip = (end-start)/programCount;
  int tail = (end-start)%programCount;
  int i = programCount*taskIndex + programIndex;
  int g [256];

  for (int j = 0; j < 256; j ++)
  {
    g[j] = hist[j*programCount*taskCount+i];
  }

  for (int k = start+programIndex*strip; k < start+(programIndex+1)*strip; k ++)
  {
    unsigned char *c = (unsigned char*) &code[k];

    int l = g[c[pass]];

    perm[l] = code[k];

    g[c[pass]] = l+1;
  }

  if (programIndex == programCount-1) /* remainder is processed by the last lane */
  {
    for (int k = start+programCount*strip; k < start+programCount*strip+tail; k ++)
    {
      unsigned char *c = (unsigned char*) &code[k];

      int l = g[c[pass]];

      perm[l] = code[k];

      g[c[pass]] = l+1;
    }
  }
}

void copy (int span, int n, long long from[], long long to[])
{
  int start = taskIndex*span;
  int end = taskIndex == taskCount-1 ? n : start+span;

  for (int i = start;i<end;i++){
    to[i] = from[i];
  }
}

void pack (int span, int n, int code[], long long pair[])
{
  int start = taskIndex*span;
  int end = taskIndex == taskCount-1 ? n : start+span;

  for (int i = start;i<end;i++){
    pair[i] = ((long long)i<<32)+code[i];
  }
}

void unpack (int span, int n, long long pair[], int code[], int order[]){
  int start = taskIndex*span;
  int end = taskIndex == taskCount-1 ? n : start+span;
  for (int i = start;i<end;i++){
    code[i] = pair[i];
    order[i] = pair[i]>>32;
  }
}

void addup (int h[], int g[])
{
  int * u = &h[256*programCount*taskIndex];
  int i, x, y = 0;

  for (i = 0; i < 256*programCount; i ++){
    x = u[i];
    u[i] = y;
    y += x;
  }
  g[taskIndex] = y;
}

void bumpup (int h[], int g[])
{
  int * u = &h[256*programCount*taskIndex];
  int z = g[taskIndex];
  for (int i = 0 ;i<256*programCount;i++)
  {
    u[i] += z;
  }
}

static void prefix_sum (int num, int h[]){
  int * g = new int [num+1];
  int i;
  addup (h, g+1);
  for (g[0] = 0, i = 1; i < num; i ++) g[i] += g[i-1];
  bumpup (h, g);
  delete g;
}

void sort_serial (int n, int code[], int order[]){
  int span = n;
  int hsize = 256*programCount;
  int * hist = new int [hsize];
  long long * pair = new long long [n];
  long long * temp = new long long [n];
  int pass, i;

#if DEBUG
  if (n < 100)
  {
    printf ("input: ");
    for (i = 0; i < n; i ++) printf ("%, ", code[i]);
    printf ("\n");
  }
#endif

  pack (span, n, code, pair); 
  for (pass = 0; pass < 4; pass ++){
    histogram (span, n, pair, pass, hist);
    prefix_sum (1, hist);
    permutation (span, n, pair, pass, hist, temp);    
    copy (span, n, temp, pair);    
  }
  unpack (span, n, pair, code, order);

#if DEBUG
  for (i = 0; i < n; i ++)
  {
    if (i > 0 && code[i-1] > code[i])
      printf ("ERR at % => % > %; ", i, code[i-1], code[i]);
  }

  if (n < 100)
  {
    printf ("output: ");
    for (i = 0; i < n; i ++) printf ("%, ", code[i]);
    printf ("\n");
    printf ("order: ");
    for (i = 0; i < n; i ++) printf ("%, ", order[i]);
    printf ("\n");
  }
#endif

  delete hist;
  delete pair;
  delete temp;
}
