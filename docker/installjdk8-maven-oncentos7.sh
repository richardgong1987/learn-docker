#!/usr/bin/env bash

## wget http://mirror.bit.edu.cn/apache/maven/maven-3/3.6.1/binaries/apache-maven-3.6.1-bin.tar.gz
## 下载好apache-maven-3.6.1和jdk-8u211-linux-x64.tar.gz上传到服务器

## install JDK

tar -xzvf jdk-8u211-linux-x64.tar.gz

mkdir /usr/lib/jdk

mv jdk1.8.0_211 /usr/lib/jdk

echo export JAVA_HOME=/usr/lib/jdk/jdk1.8.0_211 >> ~/.bashrc

echo export JRE_HOME=/usr/lib/jdk/jdk1.8.0_211/jre >> ~/.bashrc

. ~/.bashrc

echo export CLASSPATH=.:${JAVA_HOME}/lib:${JRE_HOME}/lib >> ~/.bashrc



## install maven

tar -xzvf apache-maven-3.6.1-bin.tar.gz
# -x 解压
# -z | --gzip | --ungzip 用gzip对存档压缩或解压
# -v | --verbose 详细显示处理的文件
#-f | --file [HOSTNAME:]F 指定存档或设备

echo export M2_HOME=`pwd`/apache-maven-3.6.1 >> ~/.bashrc

. ~/.bashrc

echo export PATH=${M2_HOME}/bin:${JAVA_HOME}/bin:$PATH >> ~/.bashrc

. ~/.bashrc

. ~/.bashrc

. ~/.bashrc





