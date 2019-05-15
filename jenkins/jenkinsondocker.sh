#!/usr/bin/env bash

docker pull jenkins/jenkins:lts


docker run -d -v /root/jenkins_home:/var/jenkins_home -p 8888:8080 -p 50000:50000 jenkins/jenkins:lts

docker run -d -v /private/jenkins_home:/var/jenkins_home -p 8888:8080 -p 50000:50000 jenkins/jenkins:lts
