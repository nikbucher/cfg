#!/usr/bin/env bash

launchctl setenv JAVA_HOME `/usr/libexec/java_home -v ${@}`
