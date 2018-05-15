<code><b> [raken@cdh01 ~]$ sqoop import --connect jdbc:postgresql://localhost:7432/scm --table cm_version --username scm --password 2BfxNqddSW -m 1 --target-dir hdfs://cdh02:8020/home/raken/testsqoop1/<b/>

<br><b> [raken@cdh01 ~]$ sqoop job --create Day1 -- import --connect jdbc:postgresql://localhost:7432/scm --table cm_version --username scm -m 1 --target-dir hdfs://cdh02:8020/home/raken/testsqoop2/ <b/>
<br>

<br><b>[raken@cdh01 ~]$ sqoop job --show Day1<b/>
<br>Warning: /opt/cloudera/parcels/CDH-5.13.3-1.cdh5.13.3.p0.2/bin/../lib/sqoop/../accumulo does not exist! Accumulo imports will fail.
<br>Please set $ACCUMULO_HOME to the root of your Accumulo installation.
<br>18/05/15 16:45:07 INFO sqoop.Sqoop: Running Sqoop version: 1.4.6-cdh5.13.3
<br>Enter password: 
<br>Job: Day1
<br>Tool: import
<br>Options:
<br>----------------------------
<br>verbose = false
<br>hcatalog.drop.and.create.table = false
<br>db.connect.string = jdbc:postgresql://localhost:7432/scm
<br>codegen.output.delimiters.escape = 0
<br>codegen.output.delimiters.enclose.required = false
<br>codegen.input.delimiters.field = 0
<br>split.limit = null
<br>hbase.create.table = false
<br>mainframe.input.dataset.type = p
<br>db.require.password = true
<br>hdfs.append.dir = false
<br>db.table = cm_version
<br>codegen.input.delimiters.escape = 0
<br>accumulo.create.table = false
<br>import.fetch.size = null
<br>codegen.input.delimiters.enclose.required = false
<br>db.username = scm
<br>reset.onemapper = false
<br>codegen.output.delimiters.record = 10
<br>import.max.inline.lob.size = 16777216
<br>sqoop.throwOnError = false
<br>hbase.bulk.load.enabled = false
<br>hcatalog.create.table = false
<br>db.clear.staging.table = false
<br>codegen.input.delimiters.record = 0
<br>enable.compression = false
<br>hive.overwrite.table = false
<br>hive.import = false
<br>codegen.input.delimiters.enclose = 0
<br>accumulo.batch.size = 10240000
<br>hive.drop.delims = false
<br>customtool.options.jsonmap = {}
<br>codegen.output.delimiters.enclose = 0
<br>hdfs.delete-target.dir = false
<br>codegen.output.dir = .
<br>codegen.auto.compile.dir = true
<br>relaxed.isolation = false
<br>mapreduce.num.mappers = 1
<br>accumulo.max.latency = 5000
<br>import.direct.split.size = 0
<br>sqlconnection.metadata.transaction.isolation.level = 2
<br>codegen.output.delimiters.field = 44
<br>export.new.update = UpdateOnly
<br>incremental.mode = None
<br>hdfs.file.format = TextFile
<br>sqoop.oracle.escaping.disabled = true
<br>codegen.compile.dir = /tmp/sqoop-raken/compile/1e1721f75994c4e58aed5997703e147c
<br>direct.import = false
<br>temporary.dirRoot = _sqoop
<br>hdfs.target.dir = hdfs://cdh02:8020/home/raken/testsqoop2/
<br>hive.fail.table.exists = false
<br>db.batch = false
<code/>