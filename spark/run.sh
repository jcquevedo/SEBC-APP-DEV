#!/bin/sh

SPARK_CLASS=com.cloudera.sdk.SparkBatchExample
SPARK_BUILD_DIR=target/scala-2.10
SPARK_JAR=sparkbatchexample_2.10-1.0.jar
SPARK_BASE=input/

DEPLOY_MODE=xxx
MASTER=xxx

spark-submit --deploy-mode ${DEPLOY_MODE} --master ${MASTER} --executor-memory 128M --num-executors 2 --executor-cores 1 --class ${SPARK_CLASS} ${SPARK_BUILD_DIR}/${SPARK_JAR} ${SPARK_BASE}
