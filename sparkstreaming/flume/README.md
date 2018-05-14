# Day 3: SparkStreaming

SparkStreaming is a framework for building fault-tolerant streaming applications. A few notes:

<li>SparkStreaming operates in micro-batch mode (e.g., RDDs every x seconds = DStreams)</li>
<li>Can read streams from various sources (typically Kafka and/or Flume)</li>
<li>Checkpointing allows streaming applications to be fault tolerant (see <a href="https://techvidvan.com/tutorials/spark-streaming-checkpoint/">here</a>)</li>
<li>Beware that checkpointing information is not recoverable across applications or when performing Spark upgrades! See <a href="http://blog.cloudera.com/blog/2017/06/offset-management-for-apache-kafka-with-apache-spark-streaming/">here</a> for alternate ways to save state info and best practices!</li>

<br>For more information please see <a href="https://spark.apache.org/streaming/">here</a>

<b>Exercise:</b>

Use the Flume project from Day 2 to stream lines of text into a SparkStreaming job that counts the number of times a word appears in each micro batch period. For example, given the following input: 

```
hello world goodbye world hello again
this is a test it does not work hello
```

You obtain the following output:

```
(hello, 3)
(world, 2)
(goodbye, 1)
(again, 1)
...
```

Template files for <a href="build.sbt">build with SBT</a>, <a href="run.sh">invocation script</a>, and <a href="src/main/scala/com/cloudera/sdk/SparkStreamExample.scala">Scala code</a> are provided. Also provide your changed <a href="job.config">flume config</a> so that Flume writes the events as Avro messages (Avro Sink) on port 41415 and make SpeakStreaming pick these up by reading the Avro messages on that port instead of reading/writing from/to HDFS. Edit and/or add new files as deemed appropriate. Submit your work through these files and also upload the <a href="output.txt">output</a>.