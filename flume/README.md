# Day 2: Flume

Flume is used to ingest streams of data, logs, events, and (small) files into Hadoop. A few notes:

<li>Consists of Source, Interceptor (optional), Channel and Sink</li>
<li>Source reads messages from various technologies</li>
<li>Channel stores messages in file (persistent) or in memory (volatile)</li>
<li>Sink writes messages to a destination when a condition is met (e.g. time, size of batch, etc.)</li>
<li>Beware of Apache docs and CDH version differences!!!</li>

<br>Please read Flume documentation <a href="https://www.cloudera.com/documentation/other/tutorial/CDH5/topics/ht_flume_to_hdfs.html">here</a> and <a href="http://flume.apache.org/FlumeUserGuide.html">here</a>. For building Interceptors see <a href="https://medium.com/@bkvarda/building-a-custom-flume-interceptor-8c7a55070038">here</a>.

<b>Exercise:</b>

Write a Flume job that writes up to 40 ”messages” per file in HDFS organized in dated and timed folders up to the minute (e.g., 201805141250, 201805141251, 201805141252, etc.). Use the Exec Source to run the <a href="catdata.sh">script</a> provided which uses <a href="words.dat">this</a> file to simulate incoming messages. Run the job for 2-3 minutes. Publish your completed <a href="job.config">Flume config</a> file, <a href="run.sh">invocation script</a>, and copy/paste of the <a href="output.txt">output</a> of the following HDFS commands:

```
hdfs dfs -ls -R <target dir>
hdfs dfs -cat <target dir>/<target file>
```

