#!/bin/bash
systems=("mkl" "taco")

bench_name=spmm
result_path=$PATH_TO_MOSAIC_ARTIFACT/scripts/bench-scripts/suitesparse_onyx/$bench_name/result/seq-noavx/

mkdir -p $result_path

source $PATH_TO_MOSAIC_ARTIFACT/scripts/mosaic_mkl_env_var_seq_noavx.sh

while read line; do

	for i in "${systems[@]}"
	do  

		SUITESPARSE_TENSOR_PATH=$SUITESPARSE_PATH/$line.mtx $PATH_TO_MOSAIC_ARTIFACT/mosaic/build/bin/./taco-bench --benchmark_filter=bench_suitesparse_${bench_name}_$i  --benchmark_format=json --benchmark_out=$result_path/${i}_${line}
	done

done <$1

