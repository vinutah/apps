
export uniform double * uniform
jacobi1_ispc ( uniform int n, uniform double a[], 
		uniform double b[], uniform double x[] ){
	
	uniform double * uniform x_new;
	x_new = uniform new uniform double[n];
	int j;
	
	foreach ( i = 0 ... n ){
		x_new[i] = b[i];
		for ( j = 0; j < n; j++ ){
			if ( j != i ){
				x_new[i] = x_new[i] - a[i+j*n] * x[j];
			}
		}
		x_new[i] = x_new[i] / a[i+i*n];		
	}
	return x_new;
}

export void
updateSolution_ispc( uniform int n,  uniform double w, 
			uniform double x[], uniform double x_new[]){
	foreach ( i = 0 ... n ){
      x[i] = ( 1.0 - w ) * x[i] + w * x_new[i];
    }
    return;
}
