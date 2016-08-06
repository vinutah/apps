# include <stdlib.h>
# include <stdio.h>
# include <math.h>
# include <string.h>
# include <time.h>

# include "cg_serial.h"

static inline void
print_vector_ser(int n, double* ap){
  printf("\n");
  for(int k=0;k<n;k++){
     printf(" %lf ",ap[k]);
  }
  printf("\n");
}

/******************************************************************************/

static inline 
double *r83_mv_ser ( int m, int n, double a[], double x[] )

/******************************************************************************/
/*
  Purpose:

    R83_MV multiplies a R83 matrix times a vector.

  Discussion:

    The R83 storage format is used for a tridiagonal matrix.
    The superdiagonal is stored in entries (1,2:N), the diagonal in
    entries (2,1:N), and the subdiagonal in (3,1:N-1).  Thus, the
    original matrix is "collapsed" vertically into the array.

  Example:

    Here is how a R83 matrix of order 5 would be stored:

       *  A12 A23 A34 A45
      A11 A22 A33 A44 A55
      A21 A32 A43 A54  *

  Licensing:

    This code is distributed under the GNU LGPL license. 

  Modified:

    04 June 2014

  Author:

    John Burkardt

  Parameters:

    Input, int M, N, the number of rows and columns.

    Input, double A[3*N], the R83 matrix.

    Input, double X[N], the vector to be multiplied by A.

    Output, double R83_MV[M], the product A * x.
*/
{
  double *b;
  int i;
  
  b = ( double * ) malloc ( n * sizeof ( double ) );

  for ( i = 0; i < n; i++ )
  {
    b[i] = 0.0;
  }
  
  for ( i = 0; i < n; i++ )
  {
    b[i] = b[i] + a[1+i*3] * x[i];
  }
 
  for ( i = 0; i < n - 1; i++ )
  {
    b[i] = b[i] + a[0+(i+1)*3] * x[i+1];
  }
  
  for ( i = 1; i < n; i++ )
  {
    b[i] = b[i] + a[2+(i-1)*3] * x[i-1];
  }  

  return b;
}

/******************************************************************************/

static inline
double r8vec_dot_product_ser ( int n, double a1[], double a2[] )

/******************************************************************************/
/*
  Purpose:

    R8VEC_DOT_PRODUCT computes the dot product of a pair of R8VEC's.

  Licensing:

    This code is distributed under the GNU LGPL license.

  Modified:

    26 July 2007

  Author:

    John Burkardt

  Parameters:

    Input, int N, the number of entries in the vectors.

    Input, double A1[N], A2[N], the two vectors to be considered.

    Output, double R8VEC_DOT_PRODUCT, the dot product of the vectors.
*/
{
  int i;
  double value;

  value = 0.0;
  for ( i = 0; i < n; i++ ){
    value = value + a1[i] * a2[i];
  }    
  return value;
}




/******************************************************************************/

void r83_cg_ser ( int n, double a[], double b[], double x[] )

/******************************************************************************/
/*
  Purpose:

    R83_CG uses the conjugate gradient method on an R83 system.

  Discussion:

    The R83 storage format is used for a tridiagonal matrix.
    The superdiagonal is stored in entries (1,2:N), the diagonal in
    entries (2,1:N), and the subdiagonal in (3,1:N-1).  Thus, the
    original matrix is "collapsed" vertically into the array.

    The matrix A must be a positive definite symmetric band matrix.

    The method is designed to reach the solution after N computational
    steps.  However, roundoff may introduce unacceptably large errors for
    some problems.  In such a case, calling the routine again, using
    the computed solution as the new starting estimate, should improve
    the results.

  Example:

    Here is how an R83 matrix of order 5 would be stored:

       *  A12 A23 A34 A45
      A11 A22 A33 A44 A55
      A21 A32 A43 A54  *

  Licensing:

    This code is distributed under the GNU LGPL license. 

  Modified:

    04 June 2014

  Author:

    John Burkardt

  Reference:

    Frank Beckman,
    The Solution of Linear Equations by the Conjugate Gradient Method,
    in Mathematical Methods for Digital Computers,
    edited by John Ralston, Herbert Wilf,
    Wiley, 1967,
    ISBN: 0471706892,
    LC: QA76.5.R3.

  Parameters:

    Input, int N, the order of the matrix.
    N must be positive.

    Input, double A[3*N], the matrix.

    Input, double B[N], the right hand side vector.

    Input/output, double X[N].
    On input, an estimate for the solution, which may be 0.
    On output, the approximate solution vector.
*/
{
  double alpha;
  double *ap;
  double beta;
  int i;
  int it;
  double *p;
  double pap;
  double pr;
  double *r;
  double rap;
/*
  Initialize
    AP = A * x,
    R  = b - A * x,
    P  = b - A * x.
*/
  ap = r83_mv_ser ( n, n, a, x ); 
  r = ( double * ) malloc ( n * sizeof ( double ) );
  p = ( double * ) malloc ( n * sizeof ( double ) );
  for ( i = 0; i < n; i++ ){
    r[i] = b[i] - ap[i];
    p[i] = r[i];
  }  
#ifdef DEBUG  
  print_vector_ser(n,p);
  print_vector_ser(n,ap);
  print_vector_ser(n,p);
#endif  
/*
  Do the N steps of the conjugate gradient method.
*/
  for ( it = 1; it <= n; it++ )
  {
/*
  Compute the matrix*vector product AP=A*P.
*/
    free ( ap );
    ap = r83_mv_ser ( n, n, a, p );    
/*
  Compute the dot products
    PAP = P*AP,
    PR  = P*R
  Set
    ALPHA = PR / PAP.
*/
    pap = r8vec_dot_product_ser ( n, p, ap );
    pr = r8vec_dot_product_ser ( n, p, r );

    if ( pap == 0.0 )
    {
      free ( ap );
      printf("\nit=%d",it);
      break;
    }

    alpha = pr / pap;
/*
  Set
    X = X + ALPHA * P
    R = R - ALPHA * AP.
*/
    for ( i = 0; i < n; i++ )
    {
      x[i] = x[i] + alpha * p[i];
    }
    for ( i = 0; i < n; i++ )
    {
      r[i] = r[i] - alpha * ap[i];
    }
/*
  Compute the vector dot product
    RAP = R*AP
  Set
    BETA = - RAP / PAP.
*/
    rap = r8vec_dot_product_ser ( n, r, ap );

    beta = - rap / pap;
/*
  Update the perturbation vector
    P = R + BETA * P.
*/
    for ( i = 0; i < n; i++ )
    {
      p[i] = r[i] + beta * p[i];
    }
  }
/*
  Free memory.
*/
  free ( p );
  free ( r );  
  return;
}
