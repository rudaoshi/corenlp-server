#!/bin/bash


set -eux

jarfile=corenlp-server.jar
rm -rf _build $jarfile
mkdir _build

CORENLP_JAR=./stanford-corenlp-3.5.2.jar

javac -d _build -cp "$(ls  *.jar| tr '\n' ':')" $(find ../src | grep java)
(cd _build && jar cf ../$jarfile .)
ls -l $jarfile

rm -rf _build