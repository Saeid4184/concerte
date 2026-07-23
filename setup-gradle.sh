#!/bin/bash

# Download gradle-wrapper.jar if it doesn't exist
WRAPPER_JAR="gradle/wrapper/gradle-wrapper.jar"

if [ ! -f "$WRAPPER_JAR" ]; then
    echo "Downloading Gradle wrapper JAR..."
    mkdir -p gradle/wrapper
    curl -L https://repo.gradle.org/gradle/libs-releases-local/org/gradle/gradle-wrapper/8.4/gradle-wrapper-8.4.jar -o "$WRAPPER_JAR"
    echo "Gradle wrapper downloaded successfully"
else
    echo "Gradle wrapper already exists"
fi
