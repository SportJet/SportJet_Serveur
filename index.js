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

var con = mysql.createConnection({
  host: "localhost",
  user: "nodejs",
  password: "azerty123"
});
con.connect(function(err) {
  if (err) throw err;
  console.log("Connected!");
  con.query("CREATE DATABASE mydb", function (err, result) {
    if (err) throw err;
    console.log("Database created");
  });
});

app.get('/', function(req, res){
  res.sendFile(__dirname + '/index.html');
});

io.on('connection', function(socket){
  console.log('a user connected');
  socket.on('disconnect', function(){
    console.log('user disconnected');
  });
});

http.listen(port, function(){
  console.log('listening on *:' + port);
});
