# include <stdlib.h>
# include <stdio.h>
# include <math.h>
#include "../timing.h"

#if defined(ISPC_ALLCORE) || defined(ISPC_1CORE) 
#include "jacobi_ispc.h"
using namespace ispc;
#endif 

#if defined(ISPC_SERIAL)
# include "jacobi_serial.h"
#endif

#ifdef INST
extern int printFaultSitesData(void);
extern int printFaultInjectionData(void);
#endif

void r8vec_print(int n, double a[], char *title );
void jacobi_test(int, int, FILE*);
double sum_array(double *a, int n);
double sqrt_sum_array(double *a, int n);

double *dif2 ( int m, int n );
double *r8mat_mv_new ( int m, int n, double a[], double x[] );
double* r8mat_residual_norm ( int m, int n, double a[], double x[], double b[] );
void r8vec_copy ( int n, double a1[], double a2[] );
double* r8vec_diff_norm_squared ( int n, double a[], double b[] );


int main (int argc, char* argv[]){  
	if(argc != 4){
		printf("\nError:insufficient arguments!\n");
		exit(-1);
	}
	int n = atoi(argv[1]);
	int iter = atoi(argv[2]);
	char* outfilename = argv[3];
	FILE *fp = fopen(outfilename, "w");
    if (!fp){
        perror(outfilename);
        exit(-1);
    }
    
  printf("\nNumber of elements: %d\n",n);
  
  printf ( "\n" );
  printf ( "JACOBI_PRB\n" );
  printf ( "  C version.\n" );
  printf ( "  Test the JACOBI library.\n" );

#if defined(ISPC_ALLCORE) || defined(ISPC_1CORE) 
	double minTimeISPC = 0.0;
	reset_and_start_timer();   
	jacobi_test(n,iter,fp);
	double dt = get_elapsed_mcycles();
	minTimeISPC += dt;

	printf("@time of ISPC run:\t\t\t[%.3f] million cycles\n", minTimeISPC); 
#endif

#if defined(ISPC_SERIAL)   
	double minTimeSerial = 0.0; 
	reset_and_start_timer();   
	jacobi_test(n,iter,fp);
	double dt = get_elapsed_mcycles();	
	minTimeSerial += dt;  
	printf("@time of serial run:\t\t\t[%.3f] million cycles\n", minTimeSerial);
#endif
  

  // Terminate.
  printf ( "\n" );
  printf ( "JACOBI_PRB\n" );
  printf ( "  Normal end of execution.\n" );
  printf ( "\n" ); 

#ifdef INST
	printFaultSitesData();
	printFaultInjectionData();
#endif
  fclose(fp);
  return 0;
}

//****************************************************************************80
void jacobi_test(int n, int it_num, FILE* fp){
//****************************************************************************80
//
//  Purpose:
//
//    JACOBI_TEST01 tests JACOBI1.
//
//  Licensing:
//
//    This code is distributed under the GNU LGPL license.
//
//  Modified:
//
//    31st July 2015
//
//  Author:
//    John Burkardt
//  
//  Modified by: 
//    Vishal Sharma
//	
  double *a;
  double *b;
  int i;
  int it;  
  int j;
  double t;
  double *x;
  double *x_exact;
  double *x_new;
  double w = 0.5;

  printf ( "\n" );
  printf ( "JACOBI_TEST01:\n" );  

  // Set the matrix A.
  a = dif2 ( n, n );

  // Determine the right hand side vector B.
  x_exact = ( double * ) malloc ( n * sizeof ( double ) );  
  for ( i = 0; i < n; i++ )
  {
    t = ( double ) i / ( double ) ( n - 1 );
    x_exact[i] = exp ( t ) * ( t - 1 ) * t;

  }
  
  b = r8mat_mv_new ( n, n, a, x_exact );

  // Set the initial estimate for the solution.
  x = ( double * ) malloc ( n * sizeof ( double ) );
  for ( i = 0; i < n; i++ ){
    x[i] = 0.0;
  }
  
  // Carry out the iteration.
  for ( it = 1; it <= it_num; it++ ){
#if defined(ISPC_ALLCORE) || defined(ISPC_1CORE)
    x_new = jacobi1_ispc ( n, a, b, x );
#endif
#if defined(ISPC_SERIAL)        
    x_new = jacobi1 ( n, a, b, x );
#endif
    
    // Update the solution
#if defined(ISPC_ALLCORE) || defined(ISPC_1CORE)       
	updateSolution_ispc(n,w,x,x_new);
#endif
#if defined(ISPC_SERIAL)    
	updateSolution(n,w,x,x_new);
#endif    
    free ( x_new );
  }
  
  for(int i=0;i<n;i++){
	fprintf(fp,"%lf\n",x[i]);
  }
#ifdef DEBUG  
  r8vec_print ( n, x, "Computed soln: " );
  r8vec_print ( n, x_exact, "Actual soln: " );
#endif

  free ( a );
  free ( b ); 
  free ( x );
  free ( x_exact );
  
  return;
}

//****************************************************************************80
void r8vec_print ( int n, double a[], char *title ){
//****************************************************************************80
//
//  Purpose:
//
//    R8VEC_PRINT prints an R8VEC.
//
//  Discussion:
//
//    An R8VEC is a vector of R8's.
//
//  Licensing:
//
//    This code is distributed under the GNU LGPL license.
//
//  Modified:
//
//    16 August 2004
//
//  Author:
//
//    John Burkardt
//
//  Parameters:
//
//    Input, int N, the number of components of the vector.
//
//    Input, double A[N], the vector to be printed.
//
//    Input, string TITLE, a title.
//	
  int i;

  fprintf ( stdout, "\n" );
  fprintf ( stdout, "%s\n", title );
  fprintf ( stdout, "\n" );
  for ( i = 0; i < n; i++ )
  {
    fprintf ( stdout, "  %8d: %14g\n", i, a[i] );
  }

  return;
}


double sum_array(double *a, int n){
	double result = 0.0;
	for(int i=0;i<n;i++){
		result += a[i];
	}
	return result;
}

double sqrt_sum_array(double *a, int n){
	double result = sum_array(a,n);
	result = sqrt(result);
	return result;
}

/******************************************************************************/

double *dif2 ( int m, int n )

/******************************************************************************/
/*
  Purpose:

    DIF2 returns the DIF2 matrix.

  Example:

    N = 5

    2 -1  .  .  .
   -1  2 -1  .  .
    . -1  2 -1  .
    .  . -1  2 -1
    .  .  . -1  2

  Properties:

    A is banded, with bandwidth 3.

    A is tridiagonal.

    Because A is tridiagonal, it has property A (bipartite).

    A is a special case of the TRIS or tridiagonal scalar matrix.

    A is integral, therefore det ( A ) is integral, and 
    det ( A ) * inverse ( A ) is integral.

    A is Toeplitz: constant along diagonals.

    A is symmetric: A' = A.

    Because A is symmetric, it is normal.

    Because A is normal, it is diagonalizable.

    A is persymmetric: A(I,J) = A(N+1-J,N+1-I).

    A is positive definite.

    A is an M matrix.

    A is weakly diagonally dominant, but not strictly diagonally dominant.

    A has an LU factorization A = L * U, without pivoting.

      The matrix L is lower bidiagonal with subdiagonal elements:

        L(I+1,I) = -I/(I+1)

      The matrix U is upper bidiagonal, with diagonal elements

        U(I,I) = (I+1)/I

      and superdiagonal elements which are all -1.

    A has a Cholesky factorization A = L * L', with L lower bidiagonal.

      L(I,I) =    sqrt ( (I+1) / I )
      L(I,I-1) = -sqrt ( (I-1) / I )

    The eigenvalues are

      LAMBDA(I) = 2 + 2 * COS(I*PI/(N+1))
                = 4 SIN^2(I*PI/(2*N+2))

    The corresponding eigenvector X(I) has entries

       X(I)(J) = sqrt(2/(N+1)) * sin ( I*J*PI/(N+1) ).

    Simple linear systems:

      x = (1,1,1,...,1,1),   A*x=(1,0,0,...,0,1)

      x = (1,2,3,...,n-1,n), A*x=(0,0,0,...,0,n+1)

    det ( A ) = N + 1.

    The value of the determinant can be seen by induction,
    and expanding the determinant across the first row:

      det ( A(N) ) = 2 * det ( A(N-1) ) - (-1) * (-1) * det ( A(N-2) )
                = 2 * N - (N-1)
                = N + 1

  Licensing:

    This code is distributed under the GNU LGPL license.

  Modified:

    30 September 2010

  Author:

    John Burkardt

  Reference:

    Robert Gregory, David Karney,
    A Collection of Matrices for Testing Computational Algorithms,
    Wiley, 1969,
    ISBN: 0882756494,
    LC: QA263.68

    Morris Newman, John Todd,
    Example A8,
    The evaluation of matrix inversion programs,
    Journal of the Society for Industrial and Applied Mathematics,
    Volume 6, Number 4, pages 466-476, 1958.

    John Todd,
    Basic Numerical Mathematics,
    Volume 2: Numerical Algebra,
    Birkhauser, 1980,
    ISBN: 0817608117,
    LC: QA297.T58.

    Joan Westlake,
    A Handbook of Numerical Matrix Inversion and Solution of 
    Linear Equations,
    John Wiley, 1968,
    ISBN13: 978-0471936756,
    LC: QA263.W47.

  Parameters:

    Input, int M, N, the order of the matrix.

    Output, double DIF2[M*N], the matrix.
*/
{
  double *a;
  int i;
  int j;

  a = ( double * ) malloc ( m * n * sizeof ( double ) );

  for ( j = 0; j < n; j++ )
  {
    for ( i = 0; i < m; i++ )
    {
      if ( j == i - 1 )
      {
        a[i+j*m] = -1.0;
      }
      else if ( j == i )
      {
        a[i+j*m] = 2.0;
      }
      else if ( j == i + 1 )
      {
        a[i+j*m] = -1.0;
      }
      else
      {
        a[i+j*m] = 0.0;
      }
    }
  }

  return a;
}
/******************************************************************************/

double *r8mat_mv_new ( int m, int n, double a[], double x[] )

/******************************************************************************/
/*
  Purpose:

    R8MAT_MV_NEW multiplies a matrix times a vector.

  Discussion:

    An R8MAT is a doubly dimensioned array of R8 values, stored as a vector
    in column-major order.

    For this routine, the result is returned as the function value.

  Licensing:

    This code is distributed under the GNU LGPL license.

  Modified:

    11 April 2007

  Author:

    John Burkardt

  Parameters:

    Input, int M, N, the number of rows and columns of the matrix.

    Input, double A[M,N], the M by N matrix.

    Input, double X[N], the vector to be multiplied by A.

    Output, double R8MAT_MV_NEW[M], the product A*X.
*/
{
  int i;
  int j;
  double *y;

  y = ( double * ) malloc ( m * sizeof ( double ) );

  for ( i = 0; i < m; i++ )
  {
    y[i] = 0.0;
    for ( j = 0; j < n; j++ )
    {
      y[i] = y[i] + a[i+j*m] * x[j];
    }
  }

  return y;
}
/******************************************************************************/

double* r8mat_residual_norm ( int m, int n, double a[], double x[], double b[] )

/******************************************************************************/
/*
  Purpose:

    R8MAT_RESIDUAL_NORM returns the norm of A*x-b.

  Discussion:

    A is an MxN R8MAT, a matrix of R8's.

    X is an N R8VEC, and B is an M R8VEC.

  Licensing:

    This code is distributed under the GNU LGPL license.

  Modified:

    24 June 2011

  Author:

    John Burkardt

  Parameters:

    Input, int M, N, the number of rows and columns of the matrix.

    Input, double A[M,N], the M by N matrix.

    Input, double X[N], the vector to be multiplied by A.

    Input, double B[M], the right hand side vector.

    Output, double R8MAT_RESIDUAL_NORM, the norm of A*x-b.
*/
{
  int i;
  int j;
  double *r;
  double *r_norm;

  r = ( double * ) malloc ( m * sizeof ( double ) );

  for ( i = 0; i < m; i++ )
  {
    r[i] = - b[i];
    for ( j = 0; j < n; j++ )
    {
      r[i] = r[i] + a[i+j*m] * x[j];
    }
  }

  //~ r_norm = 0.0;
  r_norm = ( double * ) malloc ( m * sizeof ( double ) );
  for ( i = 0; i < m; i++ )
  {
    r_norm[i] = r[i] * r[i];
  }
  //~ r_norm = sqrt ( r_norm );

  free ( r );

  return r_norm;
}
/******************************************************************************/

void r8vec_copy ( int n, double a1[], double a2[] )

/******************************************************************************/
/*
  Purpose:

    R8VEC_COPY copies an R8VEC.

  Discussion:

    An R8VEC is a vector of R8's.

  Licensing:

    This code is distributed under the GNU LGPL license.

  Modified:

    03 July 2005

  Author:

    John Burkardt

  Parameters:

    Input, int N, the number of entries in the vectors.

    Input, double A1[N], the vector to be copied.

    Input, double A2[N], the copy of A1.
*/
{
  int i;

  for ( i = 0; i < n; i++ )
  {
    a2[i] = a1[i];
  }
  return;
}
/******************************************************************************/

double* r8vec_diff_norm_squared ( int n, double a[], double b[] )

/******************************************************************************/
/*
  Purpose:

    R8VEC_DIFF_NORM_SQUARED: square of the L2 norm of the difference of R8VEC's.

  Discussion:

    An R8VEC is a vector of R8's.

    The square of the L2 norm of the difference of A and B is:

      R8VEC_DIFF_NORM_SQUARED = sum ( 1 <= I <= N ) ( A[I] - B[I] )^2.

  Licensing:

    This code is distributed under the GNU LGPL license.

  Modified:

    24 June 2011

  Author:

    John Burkardt

  Parameters:

    Input, int N, the number of entries in A.

    Input, double A[N], B[N], the vectors.

    Output, double R8VEC_DIFF_NORM_SQUARED, the square of the L2 norm of A - B.
*/
{
  int i;
  double* value;

  value = ( double * ) malloc ( n * sizeof ( double ) );
  for ( i = 0; i < n; i++ )
  {
    value[i] = ( a[i] - b[i] ) * ( a[i] - b[i] );
  }

  return value;
}



