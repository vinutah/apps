static inline void
print_vector_ispc(uniform int n, uniform double* ap){
  print("\n");  
  for(int k=0;k<n;k++){
     print(" %lf ",ap[k]);
  }
  print("\n");
}


/*
 * Author: Vishal Sharma
 * 
 * Modified on: 7/31/2015
 * 
 * Information: This ISPC function is based on the C++ function 
 * R8VEC_DOT_PRODUCT authored by John Burkardt.
 * 
 * */
 
static inline uniform double
r8vec_dot_product_ispc (uniform int n, uniform double* a1, uniform double* a2 ){
	uniform double retval=0.0;
	uniform double* uniform value = uniform new uniform double[n];

	foreach (i = 0 ... n){
		value[i] = a1[i] * a2[i];
	}
	
	if(programIndex==0){
		for(uniform int j=0;j<n;j++){
			for(uniform int k=0;k<n;k++){
				if(j!=k)
					value[j] += value[k];
			}
		}
	}
	retval = value[0];
	delete[] value;
	return retval;
}


/*
 * Author: Vishal Sharma
 * 
 * Modified on: 7/31/2015
 * 
 * Information: This ISPC function is based on the C++ function R83_MV
 * authored by John Burkardt.
 * 
 * */
static inline uniform double *
r83_mv_ispc ( uniform int m, uniform int n, uniform double* a, uniform double* x ){
	uniform double *b;
	b = new uniform double[n];

	foreach ( i = 0 ... n){
		b[i] = 0.0;
	}
	
	memory_barrier();
	
	foreach ( i = 0 ... n ){
		b[i] = b[i] + a[1+i*3] * x[i];
	}

	foreach ( i = 0 ... n ){
			b[i] = b[i] + a[0+(i+1)*3] * x[i+1];
	}
	
	foreach ( i = 0 ... n ){
		if(i>0){
			b[i] = b[i] + a[2+(i-1)*3] * x[i-1];
		}
	}
	return b;
}


/*
 * Author: Vishal Sharma
 * 
 * Modified on: 7/31/2015
 * 
 * Information: This ISPC function is based on the C++ function R83_CG
 * authored by John Burkardt.
 * 
 * */

export void 
r83_cg_ispc ( uniform int n, uniform double a[], uniform double b[], uniform double x[] ){
	uniform double alpha;
	uniform double * ap;
	uniform double beta;
	int it;
	uniform double pap;
	uniform double pr;
	uniform double rap;
	ap = r83_mv_ispc ( n, n, a, x );
	uniform double r[262144]; // hack
	uniform double p[262144]; // hack

	foreach ( i = 0 ... n ){
		r[i] = b[i] - ap[i];
		p[i] = r[i];
	}

	// Do the N steps of the conjugate gradient method.
	for ( it=0;it<n;it++ ){
		delete[] ap;
		ap = r83_mv_ispc( n, n, a, p );
		pap = r8vec_dot_product_ispc( n, p, ap );
		pr = r8vec_dot_product_ispc( n, p, r );
		if ( pap == 0.0 ){
			delete[] ap;
			print("\nit=%d\n",it);
			break;
		}
		alpha = pr / pap;
	
		foreach(i = 0 ... n){
			x[i] = x[i] + alpha * p[i];
			r[i] = r[i] - alpha * ap[i];
		}
		rap = r8vec_dot_product_ispc ( n, r, ap );
		beta = - rap / pap;
	
		foreach(i = 0 ... n){
			p[i] = r[i] + beta * p[i];
		}
	}
	return;
}
