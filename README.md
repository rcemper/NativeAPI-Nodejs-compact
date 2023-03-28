<p align="right"><img src="https://github.com/isc-at/CPIPE/blob/master/archived.jpg"/></p>

# IRIS-Nodejs-API-compact
an all-in-1 package of the WebSocket MicroService Demo 

To simplify the demo of the WebSocket-Micro-Server (WSockClientMicroSV)  
the whole package is now bundled into a single Docker Image  
## V2
 Structure of the repo and installation are now adjusted to OEX standards
### Prerequisites
Make sure you have [git](https://git-scm.com/book/en/v2/Getting-Started-Installing-Git) and [Docker desktop](https://www.docker.com/products/docker-desktop) installed.   
### Installation   
Clone/git pull the repo into any local directory  
```
  git clone https://github.com/rcemper/IRIS-NativeAPI-Nodejs-compact.git
```
Open the terminal in this directory build and run the container:   
```
  docker-compose up -d   
```
### How to use it
From the same terminal start the IRIS based client and prepare your orders   
~~~
  docker-compose exec iris iris session iris %ZSocket
~~~
on WebTerminal it is simply
~~~
USER>do ^%ZSocket
~~~
Open a new terminal on the download directory and start the node based service   
~~~
  docker-compose exec iris node /opt/irisbuild/WsockIris.js
~~~
or open a new WebTerminal to start the client
~~~
USER>write $ZF(-1,"cd /opt/irisbuild  &&  node WsockIris.js")  
~~~
The sequence of these commands is important !
Now it connects to IRIS and executes its orders    

[Result 1](https://openexchange.intersystems.com/mp/img/packages/836/screenshots/xuzvnxiezqjfya75sfdhmim.jpg)
  [Result 2](https://openexchange.intersystems.com/mp/img/packages/836/screenshots/zlywxudjc9xauv09ggwohabdhs.jpg)   

[Article in DC](https://community.intersystems.com/post/iris-nativeapi-nodejs-compact)   
