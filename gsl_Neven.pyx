cimport gsl_Neven

def gsl_sf_poch_cython_Def(double n, double k):   
	return gsl_sf_poch(n, k)

def gsl_sf_bessel_Jn_cython_Def(int n, double x):
	return gsl_sf_bessel_Jn (n,x) 

def gsl_sf_bessel_jl_cython_Def(int n, double x):
	return gsl_sf_bessel_jl (n,x) 

