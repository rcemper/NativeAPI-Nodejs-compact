# IRIS-Nodejs-API-compact
an all-in-1 package of the WebSocket MicroService Demo 

To make the demo of the WebSocket-Micro-Server (WSockClientMicroSV)  
the whole package is bundled into a sincle Docker Image   
All you need to do now is:   
- docker pull rcemper/rcc:iris-nodejs-compact  (once)
  
- docker run --rm --init -d \  
  --name=iris1 -p 52773:52773 -p 51773:51773 \  
  rcemper/rcc:iris-nodejs-compact  

- docker exec -it iris1 bash wsgo.sh   (start the micro service)

- docker exec -it iris1 bash wsdemo.sh  (create + send test data)

- docker exec -it iris1 bash wsdemo.sh  (enetually stop service)
