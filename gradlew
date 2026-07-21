#!/usr/bin/env sh

# Gradle startup script for POSIX systems
APP_NAME="Gradle"
APP_BASE_NAME=`basename "$0"`

# تعیین مسیر اصلی و اجرای گريدل
DEFAULT_JVM_OPTS=""
exec java $DEFAULT_JVM_OPTS -jar "$(dirname "$0")/gradle/wrapper/gradle-wrapper.jar" "$@"
