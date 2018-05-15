<code><br> # Name the components on this agent
<br>a1.sources = r1<br>
<br>a1.channels = c1<br>
<br>a1.sinks = k1 k2<br>
<br>
<br> # Describe/configure the source<br>
<br>a1.sources.r1.type = exec<br>
<br>a1.sources.r1.shell = /home/raken/catdata.sh<br>
<br>a1.sources.r1.command = cat /home/raken/words.dat<br>
<br>a1.sources.r1.interceptors = a<br>
<br>a1.sources.r1.interceptors.a.type = org.apache.flume.interceptor.TimestampInterceptor$Builder<br>

<br> # Describe the sinks<br>
<br>a1.sinks.k1.type = logger<br>

<br>a1.sinks.k2.type = hdfs<br>
<br>a1.sinks.k2.channel = c1<br>
<br>a1.sinks.k2.hdfs.fileType = DataStream<br>
<br>a1.sinks.k2.hdfs.writeFormat = Text<br>
<br> # a1.sinks.k2.hdfs.path = /flume<br>
<br>a1.sinks.k2.hdfs.path = /flume/raken/%y-%m-%d/%H%M/%S<br>

<br> # Use a channel which buffers events in memory<br>
<br>a1.channels.c1.type = memory<br>
<br>a1.channels.c1.capacity = 1000<br>
<br>a1.channels.c1.transactionCapacity = 100<br>
<br>
<br> # Bind the source and sink to the channel<br>
<br>a1.sources.r1.channels = c1<br>
<br>a1.sinks.k1.channel = c1<br>

<code/>
