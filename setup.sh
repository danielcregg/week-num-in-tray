#!/bin/bash

# Build and run TimeTray
echo "Building TimeTray JAR and launching... Check your system tray in the bottom right."

rm -f *.class *.jar
javac TimeTray.java
jar -cmf TimeTray.mf TimeTray.jar *.class
java -jar TimeTray.jar
