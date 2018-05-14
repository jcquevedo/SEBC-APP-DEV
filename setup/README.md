# Day 1: Setup Environment

Start by instantiating your cluster (e.g., however many instances you need) in your environment of choice (e.g., private cloud, AWS, Azure, GCP, etc.) with HDFS, YARN, Flume, Sqoop, and HBase. How to setup your clusters is beyond the scope of this bootcamp. You may use Cloudera Director if it helps.

Once your cluster is up and running, follow the steps <a href="https://www.cloudera.com/documentation/enterprise/latest/topics/cm_ig_install_spark.html">here</a> to also install Spark. Also follow the steps <a href="https://www.cloudera.com/documentation/spark2/latest/topics/spark2_installing.html">here</a> to install Spark2. Once done, it is time to start thinking about installing an Integrated Development Environment (IDE) on your personal machine. Some popular IDEs for Hadoop development include:

<li><a href="http://scala-ide.org/download/sdk.html">Eclipse/Scala IDE</a></li>
<li><a href="https://www.jetbrains.com/idea/download">IntelliJ (free or paid)</a></li>
<li><a href="https://www.sublimetext.com/3">Sublime Text (not really an IDE)</a></li>

<br>In addition to your IDE, you will need to think about Build Tools along with your Programming Language of choice. Some popular build tools include:

<li><a href="https://maven.apache.org/download.cgi">Apache Maven (mvn)</a></li>
<li><a href="https://www.scala-sbt.org/download.html">Simple Build Tool (sbt)</a></li>

<br>The most popular programming languages in order of preference to me:

<li>Scala</li>
<li>Java TM</li>
<li>Python</li>

<br>This order may be different to each of you. All the exercises in this bootcamp are provided using Scala templates but you can build yours in Java or Python. However, bindings for Python do not exist for all components in the stack so I discourage its use in this bootcamp. To continue you will need to:

<li>Download and install Java's Development Kit (JDK) <a href="http://www.oracle.com/technetwork/java/javase/downloads/jdk8-downloads-2133151.html">1.8</a> (JDK is required for <b>all</b> development)</li>
<li>Download and install your IDE of choice</li>
<li>Download and install your build tool of choice (see <a href="getmvn.sh">getmvn.sh</a> to install Apache Maven or <a href="getsbt.sh">getsbt.sh</a> to install SBT.</li>

<br>Some things to keep in mind as you make your selection on IDE and build tools:

<li>What is your programming language of choice (Scala, Java, Python)?</li>
<li>Which platform will you use for development? (Win, Mac, Linux)</li>
<li>Are the tools you intend to use supported on your development machine?</li>

<br>The material for this bootcamp was created using:

<li>Mac OS</li>
<li>CentOS 7.2 (for the actual cluster)</li>
<li>Eclipse/Scala IDE</li>
<li>Scala Built Tool (sbt)</li>

Once you have installed your tools, you may create skeleton projects / templates to start your development. For example, if using Apache Maven and Eclipse, create a skeleton project using the following:

```
export GROUP_ID=com.cloudera.sdk
export APP_NAME=helloworld

mvn archetype:generate \
    -DarchetypeGroupId=org.apache.maven.archetypes \
    -DarchetypeArtifactId=maven-archetype-quickstart \
    -DgroupId=${GROUP_ID} \
    -DartifactId=${APP_NAME}

cd ${APP_NAME}
# GET FAMILIAR WITH pom.xml BUILD FILE
vi pom.xml
# CREATE AN ECLIPSE PROJECT SO YOU CAN IMPORT
mvn -Declipse.workspace=. eclipse:configure-workspace eclipse:eclipse
# OPEN ECLIPSE (OR SCALA) IDE AND IMPORT DIR AS MVN PROJECT
# BUILD ACTUAL CODE IN YOUR SHELL ENVIRONMENT
mvn package
```

If using Scala's Built Tool and Eclipse, use the <a href="https://github.com/sbt/sbteclipse">sbteclipse plugin</a> and create a skeleton project using the following:

```
export APP_NAME=helloworld

mkdir -p ${APP_NAME}/src/main/java/com/cloudera/sdk/\
         ${APP_NAME}/src/test/java/com/cloudera/sdk 

cd ${APP_NAME}
# GET FAMILIAR WITH build.sbt
vi build.sbt
# CREATE AN ECLIPSE PROJECT SO YOU CAN IMPORT
vi project/plugins.sbt
sbt eclipse
# OPEN ECLIPSE (OR SCALA) IDE AND IMPORT DIR AS ECLIPSE PROJECT
# BUILD ACTUAL CODE IN YOUR SHELL ENVIRONMENT
sbt package
```

A few resources worth reading into. I strongly recommended you do or if you hit some of the common errors or problems I will redirect you to these :-)

<li><a href="https://stackoverflow.com/questions/22489398/unsupported-major-minor-version-52-0">Java 1.7.x vs. Java 1.8.x</a></li>
<li><a href="https://www.cloudera.com/documentation/enterprise/release-notes/topics/cdh_rn_spark_ki.html#ki_scala_211">Spark2 vs. Spark / Scala 2.10 vs. Scala 2.11</a></li>

<br>Also learn how to navigate the <a href="https://repository.cloudera.com/artifactory/cloudera-repos/">Cloudera Repo</a> for your target version of CDH. For more also read <a href="https://www.cloudera.com/documentation/enterprise/release-notes/topics/cdh_vd_cdh5_maven_repo.html">here</a>.