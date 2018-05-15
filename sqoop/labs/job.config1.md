<code><b> [raken@cdh01 ~]$ sqoop import --connect jdbc:postgresql://localhost:7432/scm --table cm_version --username scm --password 2BfxNqddSW -m 1 --target-dir hdfs://cdh02:8020/home/raken/testsqoop1/<b/>

<br><b> [raken@cdh01 ~]$ sqoop job --create Day1 -- import --connect jdbc:postgresql://localhost:7432/scm --table cm_version --username scm -m 1 --target-dir hdfs://cdh02:8020/home/raken/testsqoop2/ <b/>
<br>

<b>[raken@cdh01 ~]$ sqoop job --show Day1<b/>
Warning: /opt/cloudera/parcels/CDH-5.13.3-1.cdh5.13.3.p0.2/bin/../lib/sqoop/../accumulo does not exist! Accumulo imports will fail.
Please set $ACCUMULO_HOME to the root of your Accumulo installation.
18/05/15 16:45:07 INFO sqoop.Sqoop: Running Sqoop version: 1.4.6-cdh5.13.3
Enter password: 
Job: Day1
Tool: import
Options:
----------------------------
verbose = false
hcatalog.drop.and.create.table = false
db.connect.string = jdbc:postgresql://localhost:7432/scm
codegen.output.delimiters.escape = 0
codegen.output.delimiters.enclose.required = false
codegen.input.delimiters.field = 0
split.limit = null
hbase.create.table = false
mainframe.input.dataset.type = p
db.require.password = true
hdfs.append.dir = false
db.table = cm_version
codegen.input.delimiters.escape = 0
accumulo.create.table = false
import.fetch.size = null
codegen.input.delimiters.enclose.required = false
db.username = scm
reset.onemapper = false
codegen.output.delimiters.record = 10
import.max.inline.lob.size = 16777216
sqoop.throwOnError = false
hbase.bulk.load.enabled = false
hcatalog.create.table = false
db.clear.staging.table = false
codegen.input.delimiters.record = 0
enable.compression = false
hive.overwrite.table = false
hive.import = false
codegen.input.delimiters.enclose = 0
accumulo.batch.size = 10240000
hive.drop.delims = false
customtool.options.jsonmap = {}
codegen.output.delimiters.enclose = 0
hdfs.delete-target.dir = false
codegen.output.dir = .
codegen.auto.compile.dir = true
relaxed.isolation = false
mapreduce.num.mappers = 1
accumulo.max.latency = 5000
import.direct.split.size = 0
sqlconnection.metadata.transaction.isolation.level = 2
codegen.output.delimiters.field = 44
export.new.update = UpdateOnly
incremental.mode = None
hdfs.file.format = TextFile
sqoop.oracle.escaping.disabled = true
codegen.compile.dir = /tmp/sqoop-raken/compile/1e1721f75994c4e58aed5997703e147c
direct.import = false
temporary.dirRoot = _sqoop
hdfs.target.dir = hdfs://cdh02:8020/home/raken/testsqoop2/
hive.fail.table.exists = false
db.batch = false
<code/>