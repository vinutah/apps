# include <stdlib.h>
# include <stdio.h>
# include <math.h>
# include <string.h>
# include <time.h>
#include <vector>
#include "../timing.h"

#if defined(ISPC_ALLCORE) || defined(ISPC_1CORE) 
#include "cg_ispc.h"
using namespace ispc;
#endif 

#if defined(ISPC_SERIAL)
# include "cg_serial.h"
#endif

#ifdef INST
extern int printFaultSitesData(void);
extern int printFaultInjectionData(void);
#endif

void test (int, FILE* ,double*);

int i4_min ( int i1, int i2 );
double *orth_random ( int n, int *seed );
double *pds_random ( int n, int *seed );
double r8_normal_01 ( int *seed );
double r8_sign ( double x );
double r8_uniform_01 ( int *seed );
double *r8mat_identity_new ( int n );
void r8mat_house_axh ( int n, double a[], double v[] );
void r8mat_copy ( int m, int n, double a1[], double a2[] );
void r8vec_copy ( int n, double a1[], double a2[] );
double r8vec_diff_norm ( int n, double a[], double b[] );
double r8vec_dot_product ( int n, double a1[], double a2[] );
double *r8vec_house_column ( int n, double a[], int k );
double r8vec_norm ( int n, double a[] );
void r8vec_print ( int n, double a[], char *title );
double *r8vec_uniform_01_new ( int n, int *seed );
double *r8vec_zero_new ( int n );
double *r83_dif2 ( int m, int n );
double *r83_mv ( int m, int n, double a[], double x[] );
double *r83_resid ( int m, int n, double a[], double x[], double b[] );

void writeArraytoFile(const char* filename, double* x1, int n);
double* readArrayfromFile(const char* infilename, const char* delim);

/******************************************************************************/

int main (int argc, char* argv[])

/******************************************************************************/
/*
  Purpose:

    MAIN is the main program for CG_PRB.

  Discussion:

    CG_PRB tests the CG library.

  Licensing:

    This code is distributed under the GNU LGPL license.

  Modified:

    09 July 2014

  Author:

    John Burkardt
*/
{
	int seed;
	srand(time(NULL));
	double *x1;
	if(argc != 5){
		printf("\nError:insufficient arguments!\n");
		exit(-1);
	}
	int n = atoi(argv[2]);
	char* infilename = argv[3];
	char* outfilename = argv[4];
	FILE *fp = fopen(outfilename, "w");
    if (!fp){
        perror(outfilename);
        exit(-1);
    }
    
  printf ( "\n" );
  printf ( "CG_PRB\n" );
  printf ( "  C version\n" );
  printf ( "  Test the CG library.\n" );


	
	if(strcmp("-w",argv[1])==0){ // write mode
		// Choose a random solution and write to a file
		seed = rand();
		x1 = r8vec_uniform_01_new (n,&seed);
		writeArraytoFile(infilename,x1,n);
	} else if(strcmp("-r",argv[1])==0) { // read mode
		x1 = readArrayfromFile(infilename," \n");
	}
    

#if defined(ISPC_ALLCORE) || defined(ISPC_1CORE) 
	double minTimeISPC = 0.0;
	reset_and_start_timer();   
	test(n,fp,x1);
	double dt = get_elapsed_mcycles();
	minTimeISPC += dt;
	printf("@time of ISPC run:\t\t\t[%.3f] million cycles\n", minTimeISPC); 
#endif

#if defined(ISPC_SERIAL)   
	double minTimeSerial = 0.0; 
	reset_and_start_timer();   
	test(n,fp,x1);
	double dt = get_elapsed_mcycles();
	minTimeSerial += dt;  
	printf("@time of serial run:\t\t\t[%.3f] million cycles\n", minTimeSerial);
#endif

/*
  Terminate.
*/
  printf ( " \n" );
  printf ( "CG_PRB\n" );
  printf ( "  Normal end of execution.\n" );
  printf ( " \n" );


#ifdef INST
	printFaultSitesData();
	printFaultInjectionData();
#endif
	fclose(fp);    
  return 0;
}

/******************************************************************************/

void test ( int n, FILE *fp, double *x1)

/******************************************************************************/
/*
  Purpose:

    TEST02 tests R83_CG.

  Licensing:

    This code is distributed under the GNU LGPL license.

  Modified:

    04 June 2014

  Author:

    John Burkardt
*/
{
  double *a;
  double *b;
  double e_norm;
  int i;  
  double *r;
  double r_norm;  
  double *x2;

  printf ( "\n" );
  printf ( "TEST02\n" );
  printf ( "  Test R83_CG, applying CG to an R83 matrix.\n" );

  
/*
  Let A be the -1 2 -1 matrix.
*/
  a = r83_dif2 ( n, n );
/*
  Compute the corresponding right hand side.
*/
  b = r83_mv ( n, n, a, x1 );
/*
  Call the CG routine.
*/
  x2 = ( double * ) malloc ( n * sizeof ( double ) );
  for ( i = 0; i < n; i++ )
  {
    x2[i] = 1.0;
  }

#if defined(ISPC_ALLCORE) || defined(ISPC_1CORE)  
  r83_cg_ispc( n, a, b, x2 );
#endif  

#if defined(ISPC_SERIAL)  
  r83_cg_ser( n, a, b, x2 );
#endif  

/*
  Compute the residual.
*/
  r = r83_resid ( n, n, a, x2, b );
  r_norm = r8vec_norm ( n, r );
/*
  Compute the error.
*/
  e_norm = r8vec_diff_norm ( n, x1, x2 );
/*
  Report.
*/
  printf ( "\n" );
  for(int i=0;i<n;i++){
	  fprintf(fp,"%lf\n",x2[i]);
  }
#ifdef DEBUG 
  r8vec_print (n, x2, "Solution in x2:" );  
  r8vec_print (n, x1, "Solution in x1:" );
#endif
  printf ( "  Number of variables N = %d\n", n );
  printf ( "  Norm of residual ||Ax-b|| = %g\n", r_norm );
  printf ( "  Norm of error ||x1-x2|| = %g\n", e_norm );
/*
  Free memory.
*/
  free ( a );
  free ( b );
  free ( r );
  free ( x1 );
  free ( x2 );

  return;
}




/******************************************************************************/

int i4_min ( int i1, int i2 )

/******************************************************************************/
/*
  Purpose:

    I4_MIN returns the smaller of two I4's.

  Licensing:

    This code is distributed under the GNU LGPL license.

  Modified:

    29 August 2006

  Author:

    John Burkardt

  Parameters:

    Input, int I1, I2, two integers to be compared.

    Output, int I4_MIN, the smaller of I1 and I2.
*/
{
  int value;

  if ( i1 < i2 )
  {
    value = i1;
  }
  else
  {
    value = i2;
  }
  return value;
}
/******************************************************************************/

double *orth_random ( int n, int *seed )

/******************************************************************************/
/*
  Purpose:

    ORTH_RANDOM returns the ORTH_RANDOM matrix.

  Discussion:

    The matrix is a random orthogonal matrix.

  Properties:

    The inverse of A is equal to A'.

    A is orthogonal: A * A' = A' * A = I.

    Because A is orthogonal, it is normal: A' * A = A * A'.

    Columns and rows of A have unit Euclidean norm.

    Distinct pairs of columns of A are orthogonal.

    Distinct pairs of rows of A are orthogonal.

    The L2 vector norm of A*x = the L2 vector norm of x for any vector x.

    The L2 matrix norm of A*B = the L2 matrix norm of B for any matrix B.

    det ( A ) = +1 or -1.

    A is unimodular.

    All the eigenvalues of A have modulus 1.

    All singular values of A are 1.

    All entries of A are between -1 and 1.

  Discussion:

    Thanks to Eugene Petrov, B I Stepanov Institute of Physics,
    National Academy of Sciences of Belarus, for convincingly
    pointing out the severe deficiencies of an earlier version of
    this routine.

    Essentially, the computation involves saving the Q factor of the
    QR factorization of a matrix whose entries are normally distributed.
    However, it is only necessary to generate this matrix a column at
    a time, since it can be shown that when it comes time to annihilate
    the subdiagonal elements of column K, these (transformed) elements of
    column K are still normally distributed random values.  Hence, there
    is no need to generate them at the beginning of the process and
    transform them K-1 times.

    For computational efficiency, the individual Householder transformations
    could be saved, as recommended in the reference, instead of being
    accumulated into an explicit matrix format.

  Licensing:

    This code is distributed under the GNU LGPL license.

  Modified:

    06 October 2010

  Author:

    John Burkardt

  Reference:

    Pete Stewart,
    Efficient Generation of Random Orthogonal Matrices With an Application
    to Condition Estimators,
    SIAM Journal on Numerical Analysis,
    Volume 17, Number 3, June 1980, pages 403-409.

  Parameters:

    Input, int N, the order of the matrix.

    Input/output, int *SEED, a seed for the random number
    generator.

    Output, double ORTH_RANDOM[N*N] the matrix.
*/
{
  double *a;
  int i;
  int j;
  double *v;
  double *x;
/*
  Start with A = the identity matrix.
*/
  a = r8mat_identity_new ( n );
/*
  Now behave as though we were computing the QR factorization of
  some other random matrix.  Generate the N elements of the first column,
  compute the Householder matrix H1 that annihilates the subdiagonal elements,
  and set A := A * H1' = A * H.

  On the second step, generate the lower N-1 elements of the second column,
  compute the Householder matrix H2 that annihilates them,
  and set A := A * H2' = A * H2 = H1 * H2.

  On the N-1 step, generate the lower 2 elements of column N-1,
  compute the Householder matrix HN-1 that annihilates them, and
  and set A := A * H(N-1)' = A * H(N-1) = H1 * H2 * ... * H(N-1).
  This is our random orthogonal matrix.
*/
  x = ( double * ) malloc ( n * sizeof ( double ) );

  for ( j = 0; j < n - 1; j++ )
  {
/*
  Set the vector that represents the J-th column to be annihilated.
*/
    for ( i = 0; i < j; i++ )
    {
      x[i] = 0.0;
    }
    for ( i = j; i < n; i++ )
    {
      x[i] = r8_normal_01 ( seed );
    }
/*
  Compute the vector V that defines a Householder transformation matrix
  H(V) that annihilates the subdiagonal elements of X.

  The COLUMN argument here is 1-based.
*/
    v = r8vec_house_column ( n, x, j + 1 );
/*
  Postmultiply the matrix A by H'(V) = H(V).
*/
    r8mat_house_axh ( n, a, v );

    free ( v );
  }
  free ( x );

  return a;
}
/******************************************************************************/

double *pds_random ( int n, int *seed )

/******************************************************************************/
/*
  Purpose:

    PDS_RANDOM returns the PDS_RANDOM matrix.

  Discussion:

    The matrix is a "random" positive definite symmetric matrix.

    The matrix returned will have eigenvalues in the range [0,1].

  Properties:

    A is symmetric: A' = A.

    A is positive definite: 0 < x'*A*x for nonzero x.

    The eigenvalues of A will be real.

  Licensing:

    This code is distributed under the GNU LGPL license.

  Modified:

    01 July 2011

  Author:

    John Burkardt

  Parameters:

    Input, int N, the order of the matrix.

    Input/output, int *SEED, a seed for the random 
    number generator.

    Output, double PDS_RANDOM[N*N], the matrix.
*/
{
  double *a;
  int i;
  int j;
  int k;
  double *lambda;
  double *q;
/*
  Get a random set of eigenvalues.
*/
  lambda = r8vec_uniform_01_new ( n, seed );
/*
  Get a random orthogonal matrix Q.
*/
  q = orth_random ( n, seed );
/*
  Set A = Q * Lambda * Q'.
*/
  a = ( double * ) malloc ( n * n * sizeof ( double ) );

  for ( j = 0; j < n; j++ )
  {
    for ( i = 0; i < n; i++ )
    {
      a[i+j*n] = 0.0;
      for ( k = 0; k < n; k++ )
      {
        a[i+j*n] = a[i+j*n] + q[i+k*n] * lambda[k] * q[j+k*n];
      }
    }
  }
  free ( lambda );
  free ( q );

  return a;
}
/******************************************************************************/

double r8_normal_01 ( int *seed )

/******************************************************************************/
/*
  Purpose:

    R8_NORMAL_01 samples the standard normal probability distribution.

  Discussion:

    The standard normal probability distribution function (PDF) has 
    mean 0 and standard deviation 1.

    The Box-Muller method is used, which is efficient, but 
    generates two values at a time.

  Licensing:

    This code is distributed under the GNU LGPL license. 

  Modified:

    01 July 2008

  Author:

    John Burkardt

  Parameters:

    Input/output, int *SEED, a seed for the random number generator.

    Output, double R8_NORMAL_01, a normally distributed random value.
*/
{
  const double r8_pi = 3.141592653589793;
  double r1;
  double r2;
  static int used = -1;
  double x;
  static double y = 0.0;

  if ( used == -1 )
  {
    used = 0;
  }
/*
  If we've used an even number of values so far, generate two more, return one,
  and save one.
*/
  if ( ( used % 2 )== 0 )
  {
    for ( ; ; )
    {
      r1 = r8_uniform_01 ( seed );
      if ( r1 != 0.0 )
      {
        break;
      }
    }

    r2 = r8_uniform_01 ( seed );

    x = sqrt ( -2.0 * log ( r1 ) ) * cos ( 2.0 * r8_pi * r2 );
    y = sqrt ( -2.0 * log ( r1 ) ) * sin ( 2.0 * r8_pi * r2 );
  }
  else
  {

    x = y;

  }

  used = used + 1;

  return x;
}
/******************************************************************************/

double r8_sign ( double x )

/******************************************************************************/
/*
  Purpose:

    R8_SIGN returns the sign of an R8.

  Licensing:

    This code is distributed under the GNU LGPL license.

  Modified:

    08 May 2006

  Author:

    John Burkardt

  Parameters:

    Input, double X, the number whose sign is desired.

    Output, double R8_SIGN, the sign of X.
*/
{
  double value;

  if ( x < 0.0 )
  {
    value = - 1.0;
  }
  else
  {
    value = + 1.0;
  }
  return value;
}
/******************************************************************************/

double r8_uniform_01 ( int *seed )

/******************************************************************************/
/*
  Purpose:

    R8_UNIFORM_01 returns a unit pseudorandom R8.

  Discussion:

    This routine implements the recursion

      seed = 16807 * seed mod ( 2^31 - 1 )
      r8_uniform_01 = seed / ( 2^31 - 1 )

    The integer arithmetic never requires more than 32 bits,
    including a sign bit.

    If the initial seed is 12345, then the first three computations are

      Input     Output      R8_UNIFORM_01
      SEED      SEED

         12345   207482415  0.096616
     207482415  1790989824  0.833995
    1790989824  2035175616  0.947702

  Licensing:

    This code is distributed under the GNU LGPL license. 

  Modified:

    11 August 2004

  Author:

    John Burkardt

  Reference:

    Paul Bratley, Bennett Fox, Linus Schrage,
    A Guide to Simulation,
    Springer Verlag, pages 201-202, 1983.

    Pierre L'Ecuyer,
    Random Number Generation,
    in Handbook of Simulation
    edited by Jerry Banks,
    Wiley Interscience, page 95, 1998.

    Bennett Fox,
    Algorithm 647:
    Implementation and Relative Efficiency of Quasirandom
    Sequence Generators,
    ACM Transactions on Mathematical Software,
    Volume 12, Number 4, pages 362-376, 1986.

    P A Lewis, A S Goodman, J M Miller,
    A Pseudo-Random Number Generator for the System/360,
    IBM Systems Journal,
    Volume 8, pages 136-143, 1969.

  Parameters:

    Input/output, int *SEED, the "seed" value.  Normally, this
    value should not be 0.  On output, SEED has been updated.

    Output, double R8_UNIFORM_01, a new pseudorandom variate, strictly between
    0 and 1.
*/
{
  int k;
  double r;

  k = *seed / 127773;

  *seed = 16807 * ( *seed - k * 127773 ) - k * 2836;

  if ( *seed < 0 )
  {
    *seed = *seed + 2147483647;
  }

  r = ( ( double ) ( *seed ) ) * 4.656612875E-10;

  return r;
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

double r8vec_diff_norm ( int n, double a[], double b[] )

/******************************************************************************/
/*
  Purpose:

    R8VEC_DIFF_NORM returns the L2 norm of the difference of R8VEC's.

  Discussion:

    An R8VEC is a vector of R8's.

    The vector L2 norm is defined as:

      R8VEC_NORM_L2 = sqrt ( sum ( 1 <= I <= N ) A(I)^2 ).

  Licensing:

    This code is distributed under the GNU LGPL license.

  Modified:

    24 June 2011

  Author:

    John Burkardt

  Parameters:

    Input, int N, the number of entries in A.

    Input, double A[N], B[N], the vectors.

    Output, double R8VEC_DIFF_NORM, the L2 norm of A - B.
*/
{
  int i;
  double value;

  value = 0.0;

  for ( i = 0; i < n; i++ )
  {
    value = value + ( a[i] - b[i] ) * ( a[i] - b[i] );
  }
  value = sqrt ( value );

  return value;
}
/******************************************************************************/

double r8vec_dot_product ( int n, double a1[], double a2[] )

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
  for ( i = 0; i < n; i++ )
  {
    value = value + a1[i] * a2[i];
  }
  return value;
}
/******************************************************************************/

double *r8vec_house_column ( int n, double a[], int k )

/******************************************************************************/
/*
  Purpose:

    R8VEC_HOUSE_COLUMN defines a Householder premultiplier that "packs" a column.

  Discussion:

    An R8VEC is a vector of R8's.

    The routine returns a vector V that defines a Householder
    premultiplier matrix H(V) that zeros out the subdiagonal entries of
    column K of the matrix A.

       H(V) = I - 2 * v * v'

  Licensing:

    This code is distributed under the GNU LGPL license. 

  Modified:

    21 August 2010

  Author:

    John Burkardt

  Parameters:

    Input, int N, the order of the matrix A.

    Input, double A[N], column K of the matrix A.

    Input, int K, the column of the matrix to be modified.

    Output, double R8VEC_HOUSE_COLUMN[N], a vector of unit L2 norm which
    defines an orthogonal Householder premultiplier matrix H with the property
    that the K-th column of H*A is zero below the diagonal.
*/
{
  int i;
  double s;
  double *v;

  v = r8vec_zero_new ( n );

  if ( k < 1 || n <= k )
  {
    return v;
  }

  s = r8vec_norm ( n+1-k, a+k-1 );

  if ( s == 0.0 )
  {
    return v;
  }

  v[k-1] = a[k-1] + fabs ( s ) * r8_sign ( a[k-1] );

  r8vec_copy ( n-k, a+k, v+k );

  s = r8vec_norm ( n-k+1, v+k-1 );

  for ( i = k-1; i < n; i++ )
  {
    v[i] = v[i] / s;
  }

  return v;
}
/******************************************************************************/

double r8vec_norm ( int n, double a[] )

/******************************************************************************/
/*
  Purpose:

    R8VEC_NORM returns the L2 norm of an R8VEC.

  Discussion:

    The vector L2 norm is defined as:

      R8VEC_NORM = sqrt ( sum ( 1 <= I <= N ) A(I)^2 ).

  Licensing:

    This code is distributed under the GNU LGPL license. 

  Modified:

    01 March 2003

  Author:

    John Burkardt

  Parameters:

    Input, int N, the number of entries in A.

    Input, double A[N], the vector whose L2 norm is desired.

    Output, double R8VEC_NORM, the L2 norm of A.
*/
{
  int i;
  double v;

  v = 0.0;

  for ( i = 0; i < n; i++ )
  {
    v = v + a[i] * a[i];
  }
  v = sqrt ( v );

  return v;
}
/******************************************************************************/

void r8vec_print ( int n, double a[], char *title )

/******************************************************************************/
/*
  Purpose:

    R8VEC_PRINT prints an R8VEC.

  Discussion:

    An R8VEC is a vector of R8's.

  Licensing:

    This code is distributed under the GNU LGPL license.

  Modified:

    08 April 2009

  Author:

    John Burkardt

  Parameters:

    Input, int N, the number of components of the vector.

    Input, double A[N], the vector to be printed.

    Input, char *TITLE, a title.
*/
{
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
/******************************************************************************/

double *r8vec_uniform_01_new ( int n, int *seed )

/******************************************************************************/
/*
  Purpose:

    R8VEC_UNIFORM_01_NEW returns a unit pseudorandom R8VEC.

  Discussion:

    This routine implements the recursion

      seed = 16807 * seed mod ( 2^31 - 1 )
      unif = seed / ( 2^31 - 1 )

    The integer arithmetic never requires more than 32 bits,
    including a sign bit.

  Licensing:

    This code is distributed under the GNU LGPL license. 

  Modified:

    19 August 2004

  Author:

    John Burkardt

  Reference:

    Paul Bratley, Bennett Fox, Linus Schrage,
    A Guide to Simulation,
    Second Edition,
    Springer, 1987,
    ISBN: 0387964673,
    LC: QA76.9.C65.B73.

    Bennett Fox,
    Algorithm 647:
    Implementation and Relative Efficiency of Quasirandom
    Sequence Generators,
    ACM Transactions on Mathematical Software,
    Volume 12, Number 4, December 1986, pages 362-376.

    Pierre L'Ecuyer,
    Random Number Generation,
    in Handbook of Simulation,
    edited by Jerry Banks,
    Wiley, 1998,
    ISBN: 0471134031,
    LC: T57.62.H37.

    Peter Lewis, Allen Goodman, James Miller,
    A Pseudo-Random Number Generator for the System/360,
    IBM Systems Journal,
    Volume 8, Number 2, 1969, pages 136-143.

  Parameters:

    Input, int N, the number of entries in the vector.

    Input/output, int *SEED, a seed for the random number generator.

    Output, double R8VEC_UNIFORM_01_NEW[N], the vector of pseudorandom values.
*/
{
  int i;
  int i4_huge = 2147483647;
  int k;
  double *r;

  if ( *seed == 0 )
  {
    fprintf ( stderr, "\n" );
    fprintf ( stderr, "R8VEC_UNIFORM_01_NEW - Fatal error!\n" );
    fprintf ( stderr, "  Input value of SEED = 0.\n" );
    exit ( 1 );
  }
  
	

  r = ( double * ) malloc ( n * sizeof ( double ) );

  for ( i = 0; i < n; i++ )
  {
    k = *seed / 127773;

    *seed = 16807 * ( *seed - k * 127773 ) - k * 2836;

    if ( *seed < 0 )
    {
      *seed = *seed + i4_huge;
    }
    r[i] = ( double ) ( *seed ) * 4.656612875E-10;    
  }

  return r;
}

//~ double *r8vec_uniform_02_new( int n){
	//~ long long longrand;
	//~ double data;
	//~ double* r = ( double * ) malloc ( n * sizeof ( double ) );
	//~ for ( int p = 0; p < n; p++ ){
		//~ longrand=0x0;
		//~ data=0.0;
		//~ for(int i=0;i<64;i++){
			//~ if(rand()%2){
				//~ longrand = longrand | 0x1;
			//~ }
			//~ longrand = longrand << 1;
		//~ }
		//~ memcpy((void*)&data,(void*)&longrand,8);
		//~ if(data < 0) r[p]=-data;
		//~ else r[p]=data;
	//~ }
	//~ for ( int p = 0; p < n; p++ ){
		//~ printf("\nr[%d] = %lf",r[p]);
	//~ }
	//~ printf("\n");
	//~ return r;
//~ }



/******************************************************************************/

double *r8vec_zero_new ( int n )

/******************************************************************************/
/*
  Purpose:

    R8VEC_ZERO_NEW creates and zeroes an R8VEC.

  Discussion:

    An R8VEC is a vector of R8's.

  Licensing:

    This code is distributed under the GNU LGPL license. 

  Modified:

    25 March 2009

  Author:

    John Burkardt

  Parameters:

    Input, int N, the number of entries in the vector.

    Output, double R8VEC_ZERO_NEW[N], a vector of zeroes.
*/
{
  double *a;
  int i;

  a = ( double * ) malloc ( n * sizeof ( double ) );

  for ( i = 0; i < n; i++ )
  {
    a[i] = 0.0;
  }
  return a;
}



/******************************************************************************/

double *r83_dif2 ( int m, int n )

/******************************************************************************/
/*
  Purpose:

    R83_DIF2 returns the DIF2 matrix in R83 format.

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

    04 June 2014

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

    Output, double A[3*N], the matrix.
*/
{
  double *a;
  int i;
  int j;
  int mn;

  a = ( double * ) malloc ( 3 * n * sizeof ( double ) );

  for ( j = 0; j < n; j++ )
  {
    for ( i = 0; i < 3; i++ )
    {
      a[i+j*3] = 0.0;
    }
  }

  mn = i4_min ( m, n );

  for ( j = 1; j < mn; j++ )
  {
    a[0+j*3] = -1.0;
  }

  for ( j = 0; j < mn; j++ )
  {
    a[1+j*3] = 2.0;
  }

  for ( j = 0; j < mn -1; j++ )
  {
    a[2+j*3] = -1.0;
  }

  if ( n < m )
  {
    a[2+(mn-1)*3] = -1.0;
  }
   
  return a;
}
/******************************************************************************/

double *r83_mv ( int m, int n, double a[], double x[] )

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
  int mn;

  b = ( double * ) malloc ( m * sizeof ( double ) );

  for ( i = 0; i < m; i++ )
  {
    b[i] = 0.0;
  }

  mn = i4_min ( m, n );

  for ( i = 0; i < mn; i++ )
  {
    b[i] = b[i] + a[1+i*3] * x[i];
  }
  for ( i = 0; i < mn - 1; i++ )
  {
    b[i] = b[i] + a[0+(i+1)*3] * x[i+1];
  }
  for ( i = 1; i < mn; i++ )
  {
    b[i] = b[i] + a[2+(i-1)*3] * x[i-1];
  }

  if ( n < m )
  {
    b[n] = b[n] + a[2+(n-1)*3] * x[n-1];
  }
  else if ( m < n )
  {
    b[m-1] = b[m-1] + a[0+m*3] * x[m];
  }

  return b;
}
/******************************************************************************/

double *r83_resid ( int m, int n, double a[], double x[], double b[] )

/******************************************************************************/
/*
  Purpose:

    R83_RESID computes the residual R = B-A*X for R83 matrices.

  Licensing:

    This code is distributed under the GNU LGPL license. 

  Modified:

    04 June 2014

  Author:

    John Burkardt

  Parameters:

    Input, int M, the number of rows of the matrix.
    M must be positive.

    Input, int N, the number of columns of the matrix.
    N must be positive.

    Input, double A[3*N], the matrix.

    Input, double X[N], the vector to be multiplied by A.

    Input, double B[M], the desired result A * x.

    Output, double R83_RESID[M], the residual R = B - A * X.
*/
{
  int i;
  double *r;

  r = r83_mv ( m, n, a, x );

  for ( i = 0; i < m; i++ )
  {
    r[i] = b[i] - r[i];
  }

  return r;
}

/******************************************************************************/

double *r8mat_identity_new ( int n )

/******************************************************************************/
/*
  Purpose:

    R8MAT_IDENTITY_NEW sets the square matrix A to the identity.

  Discussion: 							    

    An R8MAT is a doubly dimensioned array of double precision values, which
    may be stored as a vector in column-major order.

  Licensing:

    This code is distributed under the GNU LGPL license. 

  Modified:

    06 September 2005

  Author:

    John Burkardt

  Parameters:

    Input, int N, the order of A.

    Output, double R8MAT_IDENTIY_NEW[N*N], the N by N identity matrix.
*/
{
  double *a;
  int i;
  int j;
  int k;

  a = ( double * ) malloc ( n * n * sizeof ( double ) );

  k = 0;
  for ( j = 0; j < n; j++ )
  {
    for ( i = 0; i < n; i++ )
    {
      if ( i == j )
      {
        a[k] = 1.0;
      }
      else
      {
        a[k] = 0.0;
      }
      k = k + 1;
    }
  }

  return a;
}

/******************************************************************************/

void r8mat_house_axh ( int n, double a[], double v[] )

/******************************************************************************/
/*
  Purpose:

    R8MAT_HOUSE_AXH computes A*H where H is a compact Householder matrix.

  Discussion: 							    

    An R8MAT is a doubly dimensioned array of double precision values, which
    may be stored as a vector in column-major order.

    The Householder matrix H(V) is defined by

      H(V) = I - 2 * v * v' / ( v' * v )

    This routine is not particularly efficient.

  Licensing:

    This code is distributed under the GNU LGPL license. 

  Modified:

    07 July 2011

  Author:

    John Burkardt

  Parameters:

    Input, int N, the order of A.

    Input/output, double A[N*N], on input, the matrix to be postmultiplied.
    On output, A has been replaced by A*H.

    Input, double V[N], a vector defining a Householder matrix.
*/
{
  double *ah;
  int i;
  int j;
  int k;
  double v_normsq;

  v_normsq = 0.0;
  for ( i = 0; i < n; i++ )
  {
    v_normsq = v_normsq + v[i] * v[i];
  }
/*
  Compute A*H' = A*H
*/
  ah = ( double * ) malloc ( n * n * sizeof ( double ) );

  for ( i = 0; i < n; i++ )
  {
    for ( j = 0; j < n; j++ )
    {
      ah[i+j*n] = a[i+j*n];
      for ( k = 0; k < n; k++ )
      {
        ah[i+j*n] = ah[i+j*n] - 2.0 * a[i+k*n] * v[k] * v[j] / v_normsq;
      }
    }
  }
/*
  Copy A = AH;
*/
  r8mat_copy ( n, n, ah, a );

  free ( ah );

  return;
}
/******************************************************************************/

void r8mat_copy ( int m, int n, double a1[], double a2[] )

/******************************************************************************/
/*
  Purpose:

    R8MAT_COPY copies one R8MAT to another.

  Discussion:

    An R8MAT is a doubly dimensioned array of double precision values, which
    may be stored as a vector in column-major order.

  Licensing:

    This code is distributed under the GNU LGPL license. 

  Modified:

    26 July 2008

  Author:

    John Burkardt

  Parameters:

    Input, int M, N, the number of rows and columns.

    Input, double A1[M*N], the matrix to be copied.

    Output, double A2[M*N], the copy of A1.
*/
{
  int i;
  int j;

  for ( j = 0; j < n; j++ )
  {
    for ( i = 0; i < m; i++ )
    {
      a2[i+j*m] = a1[i+j*m];
    }
  }

  return;
}

void writeArraytoFile(const char* filename, double* x1, int n){
	int i;
	FILE* fp;
	fp = fopen(filename,"w");
	if (fp == NULL){
		printf("\nError:coudn't find a file with a name: %s\n",filename);
		exit(-1);
	}
	
	for(i=0;i<n-1;i++){
		fprintf(fp,"%lf ",x1[i]);
	}
	fprintf(fp,"%lf\n",x1[i]);
	fclose(fp);
	return;
}

double* readArrayfromFile(const char* infilename, const char* delim){
	char * line = NULL;
	ssize_t read;
	size_t len = 0;
	std::vector<double> a;
	char* resultstr;
	double result;
	double *retval;
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
			result = atof(resultstr);
			a.push_back(result);
		}
		
		while(resultstr != NULL){
			resultstr = strtok(NULL,delim);
			if(resultstr!=NULL){
				result = atof(resultstr);
				a.push_back(result);
			}
		}
		delete temp;
	}
	
	retval = ( double * ) malloc ( a.size() * sizeof ( double ) );
	for(int i=0;i<a.size();i++){
		retval[i]=a[i];
	}
#ifdef DEBUG    
    unsigned i;
    for(i=0;i<a.size()-1;i++){
		printf("%d ",a[i]);
	}
	printf("%d\n",a[i]);
#endif
	
	return retval;
}
