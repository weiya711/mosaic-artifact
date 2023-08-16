#!/bin/bash
systems=("mkl")

mkdir -p $PATH_TO_MOSAIC_ARTIFACT/scripts/bench-scripts/gemv/result/

for i in "${systems[@]}"
do  

    $PATH_TO_MOSAIC_ARTIFACT/mosaic/build/bin/./taco-bench --benchmark_filter=bench_gemv_$i  --benchmark_format=json --benchmark_out=$PATH_TO_MOSAIC_ARTIFACT/scripts/bench-scripts/gemv/result/$i
done
