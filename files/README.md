# Day 2: File Formats

Deciding on which file format to use in your application / use-case is an important consideration. Perhaps the two most important questions worth asking are:

<li>How will data be consumed/accessed? (i.e., SQL queries on just a few columns, transient MR jobs, lots or rare access, etc.)</li>
<li>Will the data schema evolve over time?</li>

<br>To learn more about each of these please read on:

<li><a href="https://www.cloudera.com/documentation/enterprise/latest/topics/impala_seqfile.html">SequenceFile</a>: Ideal for MR jobs that need to pass data on to another MR job</li>
<li><a href="https://www.cloudera.com/documentation/enterprise/latest/topics/impala_avro.html
">Avro</a>: Ideal for datasets that change over time (schema evolution); is splittable</li>
<li><a href="https://www.cloudera.com/documentation/enterprise/latest/topics/impala_parquet.html
">Parquet</a>: Ideal for read-heavy workloads on wide datasets where only a few columns are needed (e.g., SELECT x, y, z FROM t); supports schema evolution but only by appending columns at the end of the dataset</li>
<li><a href="https://www.cloudera.com/documentation/enterprise/latest/topics/impala_rcfile.html
">RCFile</a>: Not used much (Avro and Parquet predominate)

<br>Another important consideration is whether the files should be <a href="https://www.cloudera.com/documentation/enterprise/latest/topics/introduction_compression.html">compressed</a> to save on storage and how big the files should be. A typical problem worth touching on is the "small files" problem. Storing and handling a large number of small files in Hadoop leads to an inefficient use of the cluster that taxes the HDFS NameNode. It is always best to ensure files produced for final consumption are at least as large as an HDFS block size or some "small" multiple of this value (e.g., 128 MB, 256 MB) for larger datasets. Refer to <a href="https://blog.cloudera.com/blog/2009/02/the-small-files-problem/">blog</a> for more.

Other resources worth checking out:

<a href="https://blog.cloudera.com/blog/2011/01/hadoop-io-sequence-map-set-array-bloommap-files/">https://blog.cloudera.com/blog/2011/01/hadoop-io-sequence-map-set-array-bloommap-files/</a>
<a href="https://www.cloudera.com/documentation/enterprise/latest/topics/cdh_ig_avro_usage.html">https://www.cloudera.com/documentation/enterprise/latest/topics/cdh_ig_avro_usage.html</a>
<a href="https://www.cloudera.com/documentation/enterprise/latest/topics/cdh_ig_parquet.html">https://www.cloudera.com/documentation/enterprise/latest/topics/cdh_ig_parquet.html</a>
<a href="https://www.cloudera.com/documentation/enterprise/latest/topics/introduction_compression_snappy.html">https://www.cloudera.com/documentation/enterprise/latest/topics/introduction_compression_snappy.html</a>


