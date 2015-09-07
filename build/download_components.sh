#!/bin/bash

wget http://central.maven.org/maven2/org/zeromq/jeromq/0.3.5/jeromq-0.3.5.jar

wget http://nlp.stanford.edu/software/stanford-corenlp-full-2015-04-20.zip
unzip stanford-corenlp-full-2015-04-20.zip
mv stanford-corenlp-full-2015-04-20/stanford-corenlp-3.5.2.jar .
mv stanford-corenlp-full-2015-04-20/stanford-corenlp-3.5.2-models.jar .
rm -rf stanford-corenlp-full-2015-04-20

wget http://nlp.stanford.edu/software/stanford-chinese-corenlp-2015-04-20-models.jar

wget https://raw.githubusercontent.com/stanfordnlp/CoreNLP/master/src/edu/stanford/nlp/pipeline/StanfordCoreNLP-chinese.properties

