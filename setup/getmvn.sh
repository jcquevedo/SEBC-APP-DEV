#!/bin/sh

VERSION=3.5.2

wget http://mirrors.advancedhosters.com/apache/maven/maven-3/${VERSION}/binaries/apache-maven-${VERSION}-bin.tar.gz

tar xvfz apache-maven-${VERSION}-bin.tar.gz

export PATH=${PWD}/apache-maven-${VERSION}/bin:${PATH}
