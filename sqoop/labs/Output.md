<code> <br>
<b>
[raken@cdh02 ~]$ hdfs dfs -ls /home/raken/testsqoop1<b/>
Found 2 items
-rw-r--r--   3 hdfs supergroup          0 2018-05-15 16:28 /home/raken/testsqoop1/_SUCCESS
-rw-r--r--   3 hdfs supergroup        101 2018-05-15 16:28 /home/raken/testsqoop1/part-m-00000
<b>[raken@cdh02 ~]$ hdfs dfs -cat /home/raken/testsqoop1/part-m-00000<b/>
5.13.0,79c82eb2-b242-4b41-99fc-e99141ba772b,1526351678166,1526351860175,cdh01/10.1.0.4,1526401673929
[raken@cdh02 ~]$ 

<code/>
