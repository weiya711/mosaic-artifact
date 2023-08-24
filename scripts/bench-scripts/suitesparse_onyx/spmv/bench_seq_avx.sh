#!/bin/bash
systems=("mkl" "taco")

bench_name=spmv
result_path=$PATH_TO_MOSAIC_ARTIFACT/scripts/bench-scripts/suitesparse_onyx/$bench_name/result/seq-avx/

mkdir -p $result_path

export DYNAMIC_LIB_FILES="-Wl,--no-as-needed -lmkl_intel_lp64 -lmkl_sequential -lmkl_avx512 -lmkl_core -lpthread -lm -ldl"

while read line; do

	for i in "${systems[@]}"
	do  

		SUITESPARSE_TENSOR_PATH=$SUITESPARSE_PATH/$line.mtx $PATH_TO_MOSAIC_ARTIFACT/mosaic/build/bin/./taco-bench --benchmark_filter=bench_suitesparse_${bench_name}_$i  --benchmark_format=json --benchmark_out=$result_path/${i}_${line}
	done

done <$1

