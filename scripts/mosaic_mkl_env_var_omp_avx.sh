#!/bin/zsh
export MKLROOT=/usr/include/mkl/
export PATH_TO_MOSAIC_ARTIFACT=/mosaic-artifact

export INCLUDE_PATH=" -I$PATH_TO_MOSAIC_ARTIFACT/tensor_algebra_systems_lib/ -I/usr/include/mkl/"

export LIB_PATH=" -L/usr/lib/intel64 -Wl,-R/usr/lib/mkl/intel64"

# OMP w/ AVX
export DYNAMIC_LIB_FILES="-Wl,--no-as-needed -lmkl_intel_lp64 -lmkl_gnu_thread -lgomp -lmkl_avx512 -lmkl_vml_avx512 -lmkl_core -lpthread -lm -ldl"
# Seq w/ AVX
# export DYNAMIC_LIB_FILES="-Wl,--no-as-needed -lmkl_intel_lp64 -lmkl_sequential -lmkl_avx512 -lmkl_core -lpthread -lm -ldl"
# Seq w/o AVX
# export DYNAMIC_LIB_FILES="-Wl,--no-as-needed -lmkl_intel_lp64 -lmkl_sequential -lmkl_def -lmkl_core -lpthread -lm -ldl"

export INCLUDE_HEADERS="#include \"mkl.h\"
"
export MKL_NUM_THREADS=12
export OMP_NUM_THREADS=12

export TENSOR_ALGEBRA_SRC=$PATH_TO_MOSAIC_ARTIFACT/tensor_algebra_systems_src
export TENSOR_ALGEBRA_LIB=$PATH_TO_MOSAIC_ARTIFACT/tensor_algebra_systems_lib
