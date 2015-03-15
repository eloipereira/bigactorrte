name := "BigraphDriver"

releaseSettings

scalaVersion := "2.10.0"

crossPaths := false

resolvers += "My bitbucket maven releases repo" at "https://bitbucket.org/eloipereira/maven-repo-releases/raw/master"

resolvers += "My bitbucket maven snapshots repo" at "https://bitbucket.org/eloipereira/maven-repo-snapshots/raw/master"

resolvers += "AFA Maven repo" at "https://bitbucket.org/ciafa-sw/maven2-release/raw/master/seagull-rosjava-libs"

resolvers += "Rosjava" at "https://github.com/rosjava/rosjava_mvn_repo/raw/master/"

resolvers += DefaultMavenRepository

libraryDependencies += "bgm2java" % "bgm2java" % "0.1.3"

libraryDependencies += "bigraphvisualizer" % "bigraphvisualizer" % "1.0"

libraryDependencies += "org.ros.rosjava_messages" % "big_actor_msgs" % "0.0.0"

libraryDependencies += "org.scalatest" % "scalatest_2.10" % "2.0" % "test"

libraryDependencies += "pt.edu.academiafa" % "seagull-rosjava-lib" % "0.0.2"

libraryDependencies += "commons-logging" % "commons-logging" % "1.2"

libraryDependencies += "log4j" % "log4j" % "1.2.17"

libraryDependencies += "com.vividsolutions" % "jts" % "1.13"

libraryDependencies += "com.typesafe" % "config" % "1.2.1"

publishTo <<= version { (v: String) =>
  if (v.trim.endsWith("SNAPSHOT"))
    Some(Resolver.file("file",  new File( Path.userHome.absolutePath+"/.m2/repository/snapshots" )) )
  else
    Some(Resolver.file("file",  new File( Path.userHome.absolutePath+"/.m2/repository/releases" )) )
}
