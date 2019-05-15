#!/usr/bin/env bash

sudo apt-get autoremove --purge mysql-server-5.5

sudo apt-get remove mysql-common

dpkg -l |grep ^rc|awk '{print $2}' |sudo xargs dpkg -P

## 重新安装mysql

1.sudo apt-get install mysql-server

2.sudo apt-get install mysql-client