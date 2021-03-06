spark-submit --master yarn --deploy-mode cluster \
    --num-executors 2 \
    --executor-memory 1g \
    --driver-memory 1g \
    --conf spark.executor.memoryOverhead=2g \
    --conf spark.yarn.maxAppAttempts=8 \
    --conf spark.yarn.am.attemptFailuresValidityInterval=1h \
    --conf spark.yarn.max.executor.failures=200 \
    --conf spark.yarn.executor.failuresValidityInterval=1h \
    --conf spark.task.maxFailures=20 \
    --conf spark.speculation=true \
    --conf spark.hadoop.fs.hdfs.impl.disable.cache=true \
    --queue root.stream \
    --py-files packages/*.whl,packages/*.egg src/pyspark_stream_to_solr.py \
        -f kopp -p /user/mpmapas/staging/detranbarreirasplacas/ \
        -c hdfs:///user/mpmapas/checkpoints_spark/ \
        -z bda1node05:2181,bda1node06:2181,bda1node07:2181/solr &
