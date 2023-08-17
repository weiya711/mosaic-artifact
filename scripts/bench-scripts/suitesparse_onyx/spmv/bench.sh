#!/bin/bash
systems=("mkl")

bench_name=spmv

mkdir -p $PATH_TO_MOSAIC_ARTIFACT/scripts/bench-scripts/suitesparse_onyx/$bench_name/result/

while read line; do

	for i in "${systems[@]}"
	do  

		SUITESPARSE_TENSOR_PATH=$SUITESPARSE_PATH/$line.mtx $PATH_TO_MOSAIC_ARTIFACT/mosaic/build/bin/./taco-bench --benchmark_filter=bench_suitesparse_spmv_$i  --benchmark_format=json --benchmark_out=$PATH_TO_MOSAIC_ARTIFACT/scripts/bench-scripts/suitesparse_onyx/$bench_name/result/${i}_${line}
	done

done <$1

