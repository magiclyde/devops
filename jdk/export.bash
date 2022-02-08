#!/usr/bin/env bash
# refer:  
# https://www.oracle.com/java/technologies/javase/javase8u211-later-archive-downloads.html
# https://mirrors.tuna.tsinghua.edu.cn/AdoptOpenJDK/

export JAVA_HOME=/usr/local/jdk
export JRE_HOME=${JAVA_HOME}/jre
export CLASSPATH=.:${JAVA_HOME}/lib:${JRE_HOME}/lib:$CLASSPATH
export JAVA_PATH=${JAVA_HOME}/bin:${JRE_HOME}/bin
export PATH=$PATH:${JAVA_PATH}
