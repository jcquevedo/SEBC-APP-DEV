name := "SparkStreamExample"
version := "1.0"
scalaVersion := "2.x.x"

javacOptions ++= Seq("-source", "1.8", "-target", "1.8")

// ADD CLOUDERA REPO AND DEPENDENCIES FOR SPARK APPS
// ALSO ADD A MERGE STRATEGY & BUILD A FAT JAR HERE
