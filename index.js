/*
███████╗██████╗  ██████╗ ██████╗ ████████╗  ██╗███████╗████████╗
██╔════╝██╔══██╗██╔═══██╗██╔══██╗╚══██╔══╝  ██║██╔════╝╚══██╔══╝
███████╗██████╔╝██║   ██║██████╔╝   ██║     ██║█████╗     ██║   
╚════██║██╔═══╝ ██║   ██║██╔══██╗   ██║██   ██║██╔══╝     ██║   
███████║██║     ╚██████╔╝██║  ██║   ██║╚█████╔╝███████╗   ██║   
╚══════╝╚═╝      ╚═════╝ ╚═╝  ╚═╝   ╚═╝ ╚════╝ ╚══════╝   ╚═╝ 

      ███████╗███████╗██████╗ ██╗   ██╗███████╗██████╗ 
      ██╔════╝██╔════╝██╔══██╗██║   ██║██╔════╝██╔══██╗
      ███████╗█████╗  ██████╔╝██║   ██║█████╗  ██████╔╝
      ╚════██║██╔══╝  ██╔══██╗╚██╗ ██╔╝██╔══╝  ██╔══██╗
      ███████║███████╗██║  ██║ ╚████╔╝ ███████╗██║  ██║
      ╚══════╝╚══════╝╚═╝  ╚═╝  ╚═══╝  ╚══════╝╚═╝  ╚═╝

                Node.js - Socket.IO And ♥
                                                                                                                     
*/
var app = require('express')();
var http = require('http').Server(app);
var io = require('socket.io')(http);
var mysql = require('mysql');

var port = process.env.PORT || 3000;

app.get('/', function(req, res){
  res.sendFile(__dirname + '/index.html');
});

io.on('connection', function(socket){
  //log connection
  console.log('a user connected');
  socket.on('disconnect', function(){
    console.log('user disconnected');
  });
  //evenements button
  socket.on('btn1+', function(){
    console.log('Equipe 1 + un point!');
  });
  socket.on('btn1-', function(){
    console.log('Equipe 1 - un point!');
  });

  socket.on('btn2+', function(){
    console.log('Equipe 2 + un point!');
  });
  socket.on('btn2-', function(){
    console.log('Equipe 2 - un point!');
  });

  socket.on('chronoon', function(){
    console.log('Activation du Chrono');
  });
  socket.on('chronooff', function(){
    console.log('Arret du chrono');
  });
});

http.listen(port, function(){
  console.log('listening on *:' + port);
});
