#!/bin/bash

java -cp jeromq-0.3.5.jar:corenlp-server.jar:stanford-corenlp-3.5.2.jar:stanford-chinese-corenlp-2015-04-20-models.jar so.knowledge.corenlp.server.Server -props StanfordCoreNLP-chinese.properties