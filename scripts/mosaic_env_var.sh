#!/bin/zsh
export MKLROOT=/usr/include/mkl/
export PATH_TO_MOSAIC_ARTIFACT=/mosaic-artifact

export INCLUDE_PATH=" -I$PATH_TO_MOSAIC_ARTIFACT/tensor_algebra_systems_lib/ -I/usr/include/mkl/"

export LIB_PATH=" -L/usr/lib/intel64 -Wl,-R/usr/lib/mkl/intel64"

export DYNAMIC_LIB_FILES="-Wl,--no-as-needed -lmkl_intel_lp64 -lmkl_sequential -lmkl_avx512 -lmkl_core -lpthread -lm -ldl"

export INCLUDE_HEADERS="#include \"mkl.h\"
"

#     cmd += " -I/usr/include/mkl"
#           " -I" + path_to_artifact + "/tensor_algebra_systems_lib/cuda-wrappers/"
#           " -I" + path_to_artifact + "/tensor_algebra_systems_lib/mkl/"
#           " -I/opt/nvidia/hpc_sdk/Linux_x86_64/22.9/math_libs/11.7/targets/x86_64-linux/include/"
#             " -I/usr/local/cuda-11.8/targets/x86_64-linux/include/"
#            " -I" + path_to_artifact + "/tensor_algebra_systems_lib/tblis/include"
#            " -I" + path_to_artifact + "/tensor_algebra_systems_lib/tblis/include/tblis"
#            " -I" + path_to_artifact + "/tensor_algebra_systems_lib/gsl/include"
#            " -I" + path_to_artifact + "/tensor_algebra_systems_lib/tensor/include/"
#            " -I" + path_to_artifact + "/tensor_algebra_systems_lib/tensor/include/tensor"
#            " -L" + path_to_artifact + "/tensor_algebra_systems_lib/tblis/lib"
#            " -L/usr/local/cuda-11.8/targets/x86_64-linux/lib/"
#            " -Wl,-R/usr/local/cuda-11.8/targets/x86_64-linux/lib/"
#            " -Wl,-R" + path_to_artifact + "/tensor_algebra_systems_lib/tblis/lib"
#            " -Wl,--no-as-needed -lmkl_intel_lp64 -lmkl_sequential -lmkl_avx512 -lmkl_core -lpthread -lm -ldl -l:libtblis.so.0.0.0 -lcudart -lcusparse";


#                     # Example including tblis in path.
# export INCLUDE_PATH=" -I$PATH_TO_MOSAIC_ARTIFACT/tensor_algebra_systems_lib/ -I$PATH_TO_MOSAIC_ARTIFACT/tensor_algebra_systems_lib/tblis/include \
# -I$PATH_TO_MOSAIC_ARTIFACT/tensor_algebra_systems_lib/tblis/include/tblis"
# 
# export LIB_PATH="-L$PATH_TO_MOSAIC_ARTIFACT/tensor_algebra_systems_lib/tblis/lib \
# -Wl,-R$PATH_TO_MOSAIC_ARTIFACT/tensor_algebra_systems_lib/tblis/lib"
# 
# export DYNAMIC_LIB_FILES=-l:libtblis.so.0.0.0
# 
# export INCLUDE_HEADERS="#include \"tblis.h\"
# #include \"tblis-wrappers.h\"
# "

# /usr/include/mkl
# Example including mkl in path
# export INCLUDE_PATH="-I$PATH_TO_MOSAIC_ARTIFACT/tensor_algebra_systems_lib/ -I/usr/include/mkl/ -I/usr/lib/x86_64-linux-gnu/mkl/"
# export LIB_PATH=" -L/usr/lib/x86_64-linux-gnu/mkl/ -Wl,-R/usr/lib/x86_64-linux-gnu/mkl/"
# export DYNAMIC_LIB_FILES=-l:libmkl.so
#  
# export INCLUDE_HEADERS="#include \"mkl.h\"
#  #include \"mkl-wrappers.h\"
#  "

export TENSOR_ALGEBRA_SRC=$PATH_TO_MOSAIC_ARTIFACT/tensor_algebra_systems_src
export TENSOR_ALGEBRA_LIB=$PATH_TO_MOSAIC_ARTIFACT/tensor_algebra_systems_lib
