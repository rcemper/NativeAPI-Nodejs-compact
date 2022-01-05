ARG IMAGE=intersystemsdc/iris-community
FROM $IMAGE

USER root   
        
WORKDIR /opt/irisbuild

RUN apt-get update && \
    apt-get install -y \
    npm \
    nodejs 

RUN chown ${ISC_PACKAGE_MGRUSER}:${ISC_PACKAGE_IRISGROUP} /opt/irisbuild

USER ${ISC_PACKAGE_MGRUSER}

COPY src src
COPY intersystems-iris-native /tmp/intersystems-iris-native
COPY WsockIris.js WsockIris.js

RUN npm init -f -y  && \
    npm install websocket --save && \
    npm install /tmp/intersystems-iris-native --save 

COPY iris.script iris.script

RUN iris start IRIS \
	&& iris session IRIS < iris.script \
    && iris stop IRIS quietly

