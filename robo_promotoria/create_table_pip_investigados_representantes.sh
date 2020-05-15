#!/bin/sh
export PYTHONIOENCODING=utf8

spark2-submit --master yarn --deploy-mode cluster \
    --queue root.mpmapas \
    --num-executors 3 \
    --driver-memory 4g \
    --executor-cores 5 \
    --executor-memory 10g \
    --conf spark.debug.maxToStringFields=2000 \
    --conf spark.executor.memoryOverhead=4096 \
    --conf spark.default.parallelism=30 \
    --conf spark.sql.shuffle.partitions=30 \
    --conf spark.network.timeout=300 \
    --py-files src/utils.py,packages/*.whl,packages/*.egg,packages/*.zip src/tabela_pip_investigados_representantes.py $@