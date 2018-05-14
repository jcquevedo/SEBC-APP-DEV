package com.cloudera.sdk

import org.apache.spark.{SparkConf, SparkContext }
import org.apache.hadoop.conf.Configuration
import org.apache.hadoop.fs.{FileSystem, Path}
import org.apache.spark.rdd.RDD
import org.apache.log4j.{Level, Logger}

object SparkStreamExample {
    lazy val logger = Logger.getLogger(this.getClass.getName)

    def main(args: Array[String]): Unit = {
        if (args.length < 2) {
            System.err.println("Usage: SparkStreamExample <host> <port>")
            System.exit(1)
        }

        val host = args(0)
        val port = args(1).toInt

        val conf = new SparkConf()
            .setAppName("Spark Stream Example")
//          .setMaster("local[2]")
            .set("spark.io.compression.codec", "lz4")

        val sc = new SparkContext(conf)

        conf.set("spark.cleaner.ttl", "120000")
        conf.set("spark.driver.allowMultipleContexts", "true")

        val spark = SparkSession
            .builder()
            .config(conf)
            .getOrCreate()

        Logger.getRootLogger.setLevel(Level.WARN)

        val ssc = new StreamingContext(conf, Seconds(5))

        /* READ STREAM FROM FLUME AND PRINT COUNTS */
        counts.print()

        /* DON'T FORGET TO START THE STREAM SESSION */
    }
}
