# Day 2: Sqoop

Sqoop is the SQL-to-Hadoop tool used for ingesting from/to Relational Data Sources (RDBMS) to/from Hadoop. A few notes:

<li>Sqoop runs on top of the MR framework.</li>
<li>Workers run mappers that connect to RDBMS</li>
<li>Beware of the # of connections to the RDBMS!!!</li>
<li>Learn how to split the ingestion of datasets</li>
<li>Remember to search for the optimized JDBC connectors or drivers for your RDBMS (e.g., Oraoop for Oracle, MySQL JDBC, etc.)</li>
<li>Do NOT use Sqoop2 as it will be deprecated in CDH6.</li>

<br>Please refer to the Sqoop1 documentation <a href="https://www.cloudera.com/documentation/enterprise/latest/topics/cdh_ig_sqoop_installation.html">here</a>. 

<b>Exercise:</b>

Create a sqoop job that ingests into HDFS the CM version and host stored in CM’s backend database (version and hostname fields in table CM_VERSION). Run using the provided <a href="run.sh">invocation script</a>. Publish your <a href="job.config">Sqoop config</a> file and copy/paste of the <a href="output.txt">output</a> of the following HDFS commands: 

```
hdfs dfs -ls <target dir>
hdfs dfs -cat <target dir>/<target file>
```