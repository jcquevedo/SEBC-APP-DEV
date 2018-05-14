# Day 3: Spark

Spark is a framework for writing distributed applications on Hadoop. A few notes:

<li>Its main abstraction is the Resilient Distributed Dataset (RDD)</li>
<li>On Cloudera, Spark runs *only* on top of YARN (MRv2)</li>
<li>Read <a href="https://stackoverflow.com/questions/38331502/spark-on-yarn-resource-manager-relation-between-yarn-containers-and-spark-execu">here</a> to learn more about the relation between Spark and YARN</li>
<li>Spark can run in various modes to help with development and for production. For example:</li>

```
	--deploy-mode [client     | cluster]
	--master      [local[N|*] | yarn   ]
```

<li>One can also elect how many YARN resources (i.e., CPU, RAM) the app should use. For example:</li> 

```
	--executor-memory: YARN container memory
	--num-executors:   YARN containers
	--executor-cores:  Cores p/YARN container
```

<br>Some best practices worth highlighting:

<li>Partition the input dataset such that each task gets at least one partition (i.e., file) but ensure that each partition is “large enough” (e.g., 128 MB or some factor of HDFS block size)</li>

<li>Beware of data skew and unnecessary data transfer during processing and choose the right partitioning strategy for your data (e.g., hash, range, etc.)</li>

<li>When possible, always filter your data first before performing joins. Joins are expensive operations and filtering reduces the size of each side of the join</li>

<li>When joining tables, remember to try joining the larger table on the left side of the join and the smaller table on the left side of the join. If two tables are large, it is best to de-normalize and materialize the table to improve performance</li>

<li>Tune degree of parallelism and manage memory for RDDs via Spark APIs: repartition() and/or coalesce() to increase/decrease RDD partitions; cache(), persist(), unpersist() to store/remove RDD partitions in/from memory; look into cache policy (MEMORY_ONLY, MEMORY_ONLY_SER, MEMORY_AND_DISK, DISK_ONLY, etc.) that best suits the job</li>

<li>Enable spark.dynamicAllocation to true to scale the cluster up and down when running multiple workloads. When set, also set spark.dynamicAllocation.[initialExecutors, minExecutors, maxExecutors] to bound the # of executors that the application can use</li>

<li>Broadcast smaller objects or datasets to prevent having to transfer them over the network over and over with each processing (see chart on Spark Tips)</li>

```
		var chars = Array('A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J',
                  'K', 'L', 'M', 'N', 'O', 'P', 'Q', 'R', 'S', 'T’
                  'U', 'V', 'W', 'X', 'Y', 'Z')
		// BROADCAST SMALL OBJECTS NEEDED ON CLUSTER TO PREVENT NETWORK
		sc.broadcast(chars)
```

<li>When using Scala/Java, serialize objects using Kryo serialization for improved performance</li>

```
         // KRYO SERIALIZATION FOR IMPROVED PERFORMANCE SERIALIZING OBJECTS
         class MyRecord(val key: Long, val value: String) extends Serializable {
             override def toString(): String = {
                 return key.toString + "=" + value.toString
             }
         }

         conf.set("spark.serializer", "org.apache.spark.serializer.KryoSerializer")
         conf.set("spark.kryo.registrationRequired", "true")
         conf.registerKryoClasses(Array(classOf[MyRecord], classOf[MyRecords]))
```

<b>Exercise:</b>

Implement a program that takes as input the tuple <string, int> and sorts the output. For example, given the following input (left) you get the following output (right):

```
		Input     Output
		b,2       (a,1)
		a,1       (b,2)
		c,3       (c,3)
		z,3       (x,5)
		x,5       (y,2)
		y,2       (z,3)
```

Template files for <a href="build.sbt">build with SBT</a>, <a href="run.sh">invocation script</a>, and <a href="src/main/scala/com/cloudera/sdk/SparkBatchExample.scala">Scala code</a> are provided. Edit and/or add new files as deemed appropriate. Submit your work through these files and also upload the <a href="output.txt">output</a>.
