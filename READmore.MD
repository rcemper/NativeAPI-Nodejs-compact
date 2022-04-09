When you start the service (in a -it session as suggested)  
you see:  

     *****************************  
        Connect to IRIS on: 192.168.0.23  
    Successfully connected to InterSystems IRIS.  
        *** wait 3sec for request ***  
        ******* Startup done ********  

        *** wait 3sec for request ***  
        *** wait 3sec for request ***  
            . . . . . . .   
        *** wait 3sec for request ***
    echoserver:  wss://ws.postman-echo.com/raw
    ** Lines to process: 1 **
    ********* next turn *********
    * WebSocket Client connected *
    ****** Client is ready ****** 
    
    Line: 1 text> 'hello socket microServer '
    Received: 1 > 'hello socket microServer '

    Line: 2 text> 'now you got 2 lines '
    Received: 2 > 'now you got 2 lines '
    
    ******* lines sent: 2 ******
    *** replies received: 2 ****

    *** wait 3sec for request ***   
    
  The control program is startet in a 2nd -it session and looks like:
  
      *** Welcome to WebSocket Micoservice demo ***  
    Known Hosts (*=Exit) [1]:  
    1  wss://ws.postman-echo.com/raw  
    2  --- server 2 ----  
    3  --- server 3 ----  
    select (1):  ==> wss://ws.postman-echo.com/raw  
    #
    Enter text to get echoed from WebSocketClient Service
    Terminate with * at first position
    or get generated text by %
    or append new text with @

    1    hello socket microServer
    2    now you got 2 lines
    3    *

    Select action for WebClient Service
    New EchoServer (E), Send+Listen(S),New Text(N),Exit(X), Exit+Stop Client(Z) [S]s
    %%%%%%%%%%%%%%%%%%%%%%%%%%

    ******* 0 Replies *******

    ******* 2 Replies *******
    1    hello socket microServer
    2    now you got 2 lines


    Select action for WebClient Service  
    
