#!/bin/sh

wget https://bintray.com/sbt/rpm/rpm -O /etc/yum.repos.d/bintray-sbt-rpm.repo
sudo yum -y install sbt
