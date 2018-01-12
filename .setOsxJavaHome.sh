#!/usr/bin/env bash

if [ -z "${@}" ]; then 
  /usr/libexec/java_home -V
else
  launchctl setenv JAVA_HOME `/usr/libexec/java_home -v ${@}`
fi
