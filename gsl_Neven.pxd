from distutils.core import setup
from distutils.extension import Extension
from Cython.Distutils import build_ext
from Cython.Build import cythonize
import numpy

# distutils: library_dirs="/Users/nevencaplar/Documents/lsst_stack/stack/miniconda3-4.3.21-10a4fa6/DarwinX86/gsl/2.4/lib/"
# distutils: include_dirs=[numpy.get_include(),"/Users/nevencaplar/Documents/lsst_stack/stack/miniconda3-4.3.21-10a4fa6/DarwinX86/gsl/2.4/include/"]
# distutils: libraries = ["gsl","gslcblas"]

cdef extern from "gsl/gsl_sf_gamma.h":
	double gsl_sf_poch(double n, double k)

cdef extern from "gsl/gsl_sf_bessel.h":
	double gsl_sf_bessel_Jn(int n, double x)

cdef extern from "gsl/gsl_sf_bessel.h":
	double gsl_sf_bessel_jl(int n, double x)

