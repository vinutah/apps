
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

export void 
updateSolution_ispc(uniform int n, uniform double a, 
					uniform double b, uniform double x[]){
	foreach ( i = 0 ... n){
		x[i] = 0.5 * ( a + b ) + x[i] * 0.5 * ( b - a );
	}
	return;
}

/*
 * Author: Vishal Sharma
 * 
 * Modified on: 7/31/2015
 * 
 * Information: This ISPC function is based on the C++ function 
 * CHEBYSHEV_COEFFICIENTS authored by John Burkardt.
 * 
 * */
 
//  Parameters:
//  Input, double A, B, the domain of definition.
//  Input, int N, the order of the interpolant.
//  Input, double F ( double X ), an external function.
//  Output, double CHEBYSHEV_COEFFICIENTS[N], the Chebyshev coefficients.

export uniform double * uniform
chebyshev_coefficients_ispc( uniform double a, uniform double b, uniform int n,
uniform int fntype){  
	
  uniform double * uniform c;
  uniform double * uniform fx;  
  uniform int j;
  const uniform double pi = 3.141592653589793;
  double angle;
  double x;

  fx = uniform new uniform double[n];  
  foreach ( i = 0 ... n){
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
  
  memory_barrier();
  
  c = uniform new uniform double[n];
  foreach ( i = 0 ... n){
     c[i] = 0.0;
     for(j = 0 ; j < n ; j++ ){     
         angle = ( double ) ( i * ( 2 * j + 1 ) ) * pi / ( double ) ( 2 * n );
         c[i] = c[i] + fx[j] * cos ( angle );
      }
  }
    
  foreach ( i = 0 ... n){
     c[i] = 2.0 * c[i] / ( double ) ( n );
  }

  delete[] fx;  
  return c;
}

/*
 * Author: Vishal Sharma
 * 
 * Modified on: 7/31/2015
 * 
 * Information: This ISPC function is based on the C++ function 
 * CHEBYSHEV_INTERPOLANT authored by John Burkardt.
 * 
 * */
 
//  Parameters:
//  Input, double A, B, the domain of definition.
//  Input, int N, the order of the polynomial.
//  Input, double C[N], the Chebyshev coefficients.
//  Input, int M, the number of points.
//  Input, double X[M], the point at which the polynomial is to be evaluated.
//  Output, double CHEBYSHEF_INTERPOLANT[M], the value of the Chebyshev polynomial at X.

export uniform double * uniform
chebyshev_interpolant_ispc ( uniform double a, uniform double b, uniform int n, 
                        uniform double * uniform c, uniform int m, 
                        uniform double * uniform x){
  
  uniform double * uniform cf;
  double di;
  double dip1;
  double dip2;
  int i;
  double y;
    
  cf = uniform new uniform double[m];
  foreach ( j = 0 ... m){
    dip1 = 0.0;
    di = 0.0;
    y = ( 2.0 * x[j] - a  - b ) / ( b - a );
    for ( i = n - 1; 1 <= i; i-- ){
      dip2 = dip1;
      dip1 = di;
      di = 2.0 * y * dip1 - dip2 + c[i];
    }
    cf[j] = y * di - dip1 + 0.5 * c[0];
  }

  return cf;
}

/*
 * Author: Vishal Sharma
 * 
 * Modified on: 7/31/2015
 * 
 * Information: This ISPC function is based on the C++ function 
 * CHEBYSHEV_ZEROS authored by John Burkardt.
 * 
 * */
 
//  Parameters:
//  Input, int N, the order of the polynomial.
//  Output, double CHEBYSHEV_ZEROS[N], the zeroes of T(N)(X).

export uniform double * uniform
chebyshev_zeros_ispc ( uniform int n){
  double angle;
  const double pi = 3.141592653589793;
  uniform double * uniform x;

  x = uniform new uniform double[n];  
  foreach ( i = 0 ... n){
    angle = ( double) ( 2 * ( n - i ) - 1 ) * pi / ( double ) ( 2 * n );
    x[i] = cos ( angle );
  }    
  return x;
}
