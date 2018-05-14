#!/bin/sh

export SPARK_DIST_CLASSPATH=$(hadoop classpath)

SPARK_CLASS=com.cloudera.sdk.SparkMLExample
SPARK_BUILD_DIR=target/scala-2.11
SPARK_JAR=sparkmlexample_2.11-1.0.jar
SPARK_BASE=input/
ITERS=100

DEPLOY_MODE=xxx
MASTER=xxx

spark2-submit --deploy-mode ${DEPLOY_MODE} --master ${MASTER} --executor-memory 1G --num-executors 2 --executor-cores 1 --class ${SPARK_CLASS} ${SPARK_BUILD_DIR}/${SPARK_JAR} ${SPARK_BASE} ${ITERS}
