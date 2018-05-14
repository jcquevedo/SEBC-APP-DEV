# Day 4: Kudu

Kudu is an <i>updatable</i> column store for Hadoop. A few notes:

<li>Designed for high throughput and low latency applications</li>
<li>Has database-like semantics (SQL) with single-row (no multi-row) ACID transactions</li> 
<li>Does not run on HDFS but can run next to HDFS (shared disks)</li>
<li>Uses single or composite Primary Keys to distribute data into tablets</li>

<br>For more information please see <a href="https://kudu.apache.org/">here</a>

<b>Exercise:</b>

None