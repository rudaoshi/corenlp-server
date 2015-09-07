# corenlp-server

A NLP web serverice supported by Stanford OpenNLP.

## Build 

Build the service using following command:
```
cd build
sh download_components.sh
sh build.sh
```
## Run

You can run an example of this service via:
```
cd build
sh run.sh
```

The run.sh runs following command:

```
#!/bin/bash

java -cp jeromq-0.3.5.jar:corenlp-server.jar:stanford-corenlp-3.5.2.jar:stanford-chinese-corenlp-2015-04-20-models.jar so.knowledge.corenlp.server.Server -props StanfordCoreNLP-chinese.properties  -port 5900
```

Above command start a service for Chinese (according to model jar: stanford-chinese-corenlp-2015-04-20-models.jar and the property file StanfordCoreNLP-chinese.properties) at port 5900. 

You can revise the command to load models for other language and listen at another port.

## Service Interface

The server provide service using zeromq with REP pattern. It accept following commands:

### stop
Client want to stop the server. The server reply 'stopping' and will stop service.
### ping
Client ping the server to test if alive. The server gives a 'pong'.

### process {text}
Process the text and return the result in xml format. 



## Thanks

This code is based on https://github.com/kowey/corenlp-server. 
