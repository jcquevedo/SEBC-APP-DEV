# Day 5: Challenge

<li>Implement a SparkStreaming job that reads streams of words from Flume and adds the number of time each word has appeared into HBase. The job must ignore the following stop words: {a, is, the, this}. Submit your code, Flume configuration file, and HBase commands and schema with a brief explanation for your schema design. You are encouraged to re-use what you built so far during the course of the workshop.</li>

<b>Bonus Points</b>

<li>Design a Sqoop configuration that reads table X from a RDBMS where table X contains a column Y of type INT where 0 <= Y <= 1000. You want to distribute the load such that your job has 5 mappers where each mapper reads a subset of the records within the same range of Y values.</li>

<li>Design a Flume configuration that ingests streams of data consisting of a sequence of words. The streams must be written into HDFS and Kafka at the same time every 5 seconds or every 100 bytes (whichever comes first) into HDFS and Kafka. Elaborate on the challenges that this presents and how to fix them.</li>