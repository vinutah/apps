# include <stdlib.h>
# include <stdio.h>
# include <math.h>
# include <time.h>
# include "chebyshev_serial.h"

static inline
double f1 ( double x ){
  double pi = 3.141592653589793;
  double value;
  value = cos ( 2.0 * pi * x ) * sin ( 3.0 * pi * x );
  return value;
}


static inline
double f2 ( double x ){
  double value;
  value = exp ( x );
  return value;
}

static inline
double f3 ( double x ){
  double value;
  value = ( x - 3.0 ) * ( x - 1.0 ) * ( x - 1.0 ) * ( x + 2.0 );
  return value;
}

void updateSolution(int n, double a, double b, double* x){
	for ( int i = 0; i < n; i++ ){
		x[i] = 0.5 * ( a + b ) + x[i] * 0.5 * ( b - a );
	}
	return;
}

/******************************************************************************/

double * chebyshev_coefficients ( double a, double b, int n, int fntype)

/******************************************************************************/
/*
  Purpose:

    CHEBYSHEV_COEFFICIENTS determines Chebyshev interpolation coefficients.

  Licensing:

    This code is distributed under the GNU LGPL license.

  Modified:

    12 February 2012

  Author:

    John Burkardt

  Reference:

    Roger Broucke,
    Algorithm 446:
    Ten Subroutines for the Manipulation of Chebyshev Series,
    Communications of the ACM,
    Volume 16, Number 4, April 1973, pages 254-256.

    William Press, Brian Flannery, Saul Teukolsky, William Vetterling,
    Numerical Recipes in FORTRAN: The Art of Scientific Computing,
    Second Edition,
    Cambridge University Press, 1992,
    ISBN: 0-521-43064-X,
    LC: QA297.N866.

  Parameters:

    Input, double A, B, the domain of definition.

    Input, int N, the order of the interpolant.

    Input, double F ( double X ), an external function.

    Output, double CHEBYSHEV_COEFFICIENTS[N], the Chebyshev coefficients.
*/
{
  double angle;
  double *c;
  double *fx;
  int i;
  int j;
  const double pi = 3.141592653589793;
  double x;

  fx = ( double * ) malloc ( n * sizeof ( double ) );

  for ( i = 0; i < n; i++ )
  {
    angle = ( double ) ( 2 * i + 1 ) * pi / ( double ) ( 2 * n );
    x = cos ( angle );
    x = 0.5 * ( a + b ) + x * 0.5 * ( b - a );
    if(fntype==1){
        fx[i] = f1( x );
    } else if(fntype==2){
        fx[i] = f2( x );
    } else{
        fx[i] = f3( x );
    }
  }

  c = ( double * ) malloc ( n * sizeof ( double ) );

  for ( i = 0; i < n; i++ )
  {
    c[i] = 0.0;
    for ( j = 0; j < n; j++ )
    {
      angle = ( double ) ( i * ( 2 * j + 1 ) ) * pi / ( double ) ( 2 * n );
      c[i] = c[i] + fx[j] * cos ( angle );
    }
  }

  for ( i = 0; i < n; i++ )
  {
    c[i] = 2.0 * c[i] / ( double ) ( n );
  }

  free ( fx );
  
  return c;
}
/******************************************************************************/

double * chebyshev_interpolant ( double a, double b, int n, double c[], int m, 
  double x[])

/******************************************************************************/
/*
  Purpose:

    CHEBYSHEV_INTERPOLANT evaluates a Chebyshev interpolant.

  Licensing:

    This code is distributed under the GNU LGPL license.

  Modified:

    12 February 2012

  Author:

    John Burkardt

  Reference:

    Roger Broucke,
    Algorithm 446:
    Ten Subroutines for the Manipulation of Chebyshev Series,
    Communications of the ACM,
    Volume 16, Number 4, April 1973, pages 254-256.

    William Press, Brian Flannery, Saul Teukolsky, William Vetterling,
    Numerical Recipes in FORTRAN: The Art of Scientific Computing,
    Second Edition,
    Cambridge University Press, 1992,
    ISBN: 0-521-43064-X,
    LC: QA297.N866.

  Parameters:

    Input, double A, B, the domain of definition.

    Input, int N, the order of the polynomial.

    Input, double C[N], the Chebyshev coefficients.

    Input, int M, the number of points.

    Input, double X[M], the point at which the polynomial is
    to be evaluated.

    Output, double CHEBYSHEF_INTERPOLANT[M], the value of the Chebyshev
    polynomial at X.
*/
{
  double *cf;
  double di;
  double dip1;
  double dip2;
  int i;
  int j;
  double y;

  cf = ( double * ) malloc ( m * sizeof ( double ) );

  for ( j = 0; j < m; j++ )
  {
    dip1 = 0.0;
    di = 0.0;
    y = ( 2.0 * x[j] - a  - b ) / ( b - a );

    for ( i = n - 1; 1 <= i; i-- )
    {
      dip2 = dip1;
      dip1 = di;
      di = 2.0 * y * dip1 - dip2 + c[i];
    }
    cf[j] = y * di - dip1 + 0.5 * c[0];
  }

  return cf;
}
/******************************************************************************/

double * chebyshev_zeros ( int n)

/******************************************************************************/
/*
  Purpose:

    CHEBYSHEV_ZEROS returns zeroes of the Chebyshev polynomial T(N)(X).

  Discussion:

    We produce the Chebyshev zeros in ascending order.

  Licensing:

    This code is distributed under the GNU LGPL license. 

  Modified:

    12 February 2012

  Author:

    John Burkardt

  Parameters:

    Input, int N, the order of the polynomial.

    Output, double CHEBYSHEV_ZEROS[N], the zeroes of T(N)(X).
*/
{
  double angle;
  int i;
  const double pi = 3.141592653589793;
  double *x;

  x = ( double * ) malloc ( n * sizeof ( double ) );

  for ( i = 0; i < n; i++ )
  {
    angle = ( double) ( 2 * ( n - i ) - 1 ) * pi / ( double ) ( 2 * n );
    x[i] = cos ( angle );
  }

  return x;
}
