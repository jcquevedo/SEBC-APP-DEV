<code><b> [raken@cdh03 ~]$ flume-ng agent --conf conf --conf-file jobconf.conf --name a1 -Dflume.root.logger=INFO,console <b/>

<br><b> [raken@cdh03 ~]$ hdfs dfs -ls -R /flume/raken <b/>
<br>drwxrwxrwx   - raken supergroup          0 2018-05-15 18:49 /flume/raken/18-05-15
<br>drwxrwxrwx   - raken supergroup          0 2018-05-15 18:45 /flume/raken/18-05-15/184431
<br>-rw-r--r--   3 raken supergroup         38 2018-05-15 18:45 /flume/raken/18-05-15/184431/FlumeData.1526409871974
<br>drwxrwxrwx   - raken supergroup          0 2018-05-15 18:45 /flume/raken/18-05-15/184440
<br>-rw-r--r--   3 raken supergroup         38 2018-05-15 18:45 /flume/raken/18-05-15/184440/FlumeData.1526409880970
<br>drwxrwxrwx   - raken supergroup          0 2018-05-15 18:45 /flume/raken/18-05-15/184446
<br>-rw-r--r--   3 raken supergroup         38 2018-05-15 18:45 /flume/raken/18-05-15/184446/FlumeData.1526409886969
<br>drwxrwxrwx   - raken supergroup          0 2018-05-15 18:45 /flume/raken/18-05-15/184507
<br>-rw-r--r--   3 raken supergroup         38 2018-05-15 18:45 /flume/raken/18-05-15/184507/FlumeData.1526409907973
<br>drwxrwxrwx   - raken supergroup          0 2018-05-15 18:45 /flume/raken/18-05-15/184510
<br>-rw-r--r--   3 raken supergroup         38 2018-05-15 18:45 /flume/raken/18-05-15/184510/FlumeData.1526409910973
<br>drwxrwxrwx   - raken supergroup          0 2018-05-15 18:45 /flume/raken/18-05-15/184513
<br>-rw-r--r--   3 raken supergroup         38 2018-05-15 18:45 /flume/raken/18-05-15/184513/FlumeData.1526409913974
<br>drwxrwxrwx   - raken supergroup          0 2018-05-15 18:47 /flume/raken/18-05-15/184643
<br>-rw-r--r--   3 raken supergroup         38 2018-05-15 18:47 /flume/raken/18-05-15/184643/FlumeData.1526410003987
<br>drwxrwxrwx   - raken supergroup          0 2018-05-15 18:47 /flume/raken/18-05-15/184652
<br>-rw-r--r--   3 raken supergroup        380 2018-05-15 18:46 /flume/raken/18-05-15/184652/FlumeData.1526410012990
<br>-rw-r--r--   3 raken supergroup         76 2018-05-15 18:47 /flume/raken/18-05-15/184652/FlumeData.1526410012991
<br>drwxrwxrwx   - raken supergroup          0 2018-05-15 18:47 /flume/raken/18-05-15/184655
<br>-rw-r--r--   3 raken supergroup         38 2018-05-15 18:47 /flume/raken/18-05-15/184655/FlumeData.1526410015992
<br>drwxrwxrwx   - raken supergroup          0 2018-05-15 18:49 /flume/raken/18-05-15/184835
<br>-rw-r--r--   3 raken supergroup         38 2018-05-15 18:49 /flume/raken/18-05-15/184835/FlumeData.1526410115006
<br>drwxrwxrwx   - raken supergroup          0 2018-05-15 18:49 /flume/raken/18-05-15/184838
<br>-rw-r--r--   3 raken supergroup         38 2018-05-15 18:49 /flume/raken/18-05-15/184838/FlumeData.1526410118006
<br>drwxrwxrwx   - raken supergroup          0 2018-05-15 18:49 /flume/raken/18-05-15/184841
<br>-rw-r--r--   3 raken supergroup         38 2018-05-15 18:49 /flume/raken/18-05-15/184841/FlumeData.1526410121006
<br>drwxrwxrwx   - raken supergroup          0 2018-05-15 18:49 /flume/raken/18-05-15/184844
<br>-rw-r--r--   3 raken supergroup         38 2018-05-15 18:49 /flume/raken/18-05-15/184844/FlumeData.1526410124007
<br>drwxrwxrwx   - raken supergroup          0 2018-05-15 18:49 /flume/raken/18-05-15/184847
<br>-rw-r--r--   3 raken supergroup         38 2018-05-15 18:49 /flume/raken/18-05-15/184847/FlumeData.1526410127007
<br>drwxrwxrwx   - raken supergroup          0 2018-05-15 18:49 /flume/raken/18-05-15/184850
<br>-rw-r--r--   3 raken supergroup         38 2018-05-15 18:49 /flume/raken/18-05-15/184850/FlumeData.1526410130008
<br>drwxrwxrwx   - raken supergroup          0 2018-05-15 18:49 /flume/raken/18-05-15/184905
<br>-rw-r--r--   3 raken supergroup         38 2018-05-15 18:49 /flume/raken/18-05-15/184905/FlumeData.1526410145010
<br>drwxrwxrwx   - raken supergroup          0 2018-05-15 18:49 /flume/raken/18-05-15/184914
<br>-rw-r--r--   3 raken supergroup         38 2018-05-15 18:49 /flume/raken/18-05-15/184914/FlumeData.1526410154012
<br>drwxrwxrwx   - raken supergroup          0 2018-05-15 18:49 /flume/raken/18-05-15/184929
<br>-rw-r--r--   3 raken supergroup         38 2018-05-15 18:49 /flume/raken/18-05-15/184929/FlumeData.1526410169013
<br><b> [raken@cdh03 ~]$ hdfs dfs -cat /flume/raken/18-05-15/184652/FlumeData.1526410012990 <b/>
<br>hello world goodbye world hello again
<br>this is a test it does not work hello
<br>hello world goodbye world hello again
<br>this is a test it does not work hello
<br>hello world goodbye world hello again
<br>this is a test it does not work hello
<br>hello world goodbye world hello again
<br>this is a test it does not work hello
<br>hello world goodbye world hello again
<br>this is a test it does not work hello

<code/>
