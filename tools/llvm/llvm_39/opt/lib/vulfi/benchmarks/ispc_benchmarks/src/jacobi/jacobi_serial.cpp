# include <stdlib.h>
# include <stdio.h>
# include <math.h>
# include <time.h>

# include "jacobi_serial.h"

/******************************************************************************/

double *jacobi1 ( int n, double a[], double b[], double x[] )

/******************************************************************************/
/*
  Purpose:

    JACOBI1 carries out one step of the Jacobi iteration.

  Discussion:

    The linear system A*x=b is to be solved.

  Licensing:

    This code is distributed under the GNU LGPL license.

  Modified:

    10 December 2013

  Author:

    John Burkardt

  Parameters:

    Input, int N, the order of the matrix.

    Input, double A[N,N], the matrix.

    Input, double B[N], the right hand side.

    Input, double X[N], the current solution estimate.

    Output, double JACOBI1[N], the solution estimate updated by
    one step of the Jacobi iteration.
*/
{
  int i;
  int j;
  double *x_new;

  x_new = ( double * ) malloc ( n * sizeof ( double ) );

  for ( i = 0; i < n; i++ )
  {
    x_new[i] = b[i];
    for ( j = 0; j < n; j++ )
    {
      if ( j != i )
      {
        x_new[i] = x_new[i] - a[i+j*n] * x[j];
      }
    }
    x_new[i] = x_new[i] / a[i+i*n];    
  }
  
  return x_new;
}


void updateSolution( int n, double w, double* x, double* x_new){
	for ( int i = 0 ; i < n;  i++ ){
      x[i] = ( 1.0 - w ) * x[i] + w * x_new[i];
    }    
    return;
}
