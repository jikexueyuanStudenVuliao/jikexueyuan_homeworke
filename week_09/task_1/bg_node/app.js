var express = require('express');
var path = require('path');
// var favicon = require('serve-favicon');
var userDao = require('./dao/userDao');
var bodyParser = require('body-parser');

// var routes = require('./routes/index');
// var users = require('./routes/users');
var http = require('http');
var app = express();
var port = normalizePort(process.env.PORT || '3000');
app.set('port', port);
var server = http.createServer(app);
server.listen(port);
server.on('error', onError);
// app.use(logger('dev'));
app.use(bodyParser.json());
app.use(bodyParser.urlencoded({ extended: false }));
// app.use(express.static(path.join(__dirname, 'news')));

// app.use('/', users);           //路由设置处
app.post('/db', function(req, res, next) {
   res.header("Access-Control-Allow-Origin", "*");
  res.header("Access-Control-Allow-Methods","PUT,POST,GET,DELETE,OPTIONS");
  var type = req.body.type;
  req.query = req.body;
  if(type==='add'){
     userDao.add(req, res, next);
  }else if(type==='modify'){
     console.log('test modify');
    userDao.update(req, res, next);
  }else if(type==='remove'){
    userDao.delete(req, res, next);
  }
 
});
app.get('/db', function(req, res, next) {
  res.header("Access-Control-Allow-Origin", "*");
  res.header("Access-Control-Allow-Methods","PUT,POST,GET,DELETE,OPTIONS");
  
   console.log('get :'+req.query.fromName);
  userDao.queryAll(req, res, next);
});
// catch 404 and forward to error handler
app.use(function(req, res, next) {
  var err = new Error('Not Found');
  err.status = 404;
  next(err);
});



/**
 * Normalize a port into a number, string, or false.
 */

function normalizePort(val) {
  var port = parseInt(val, 10);

  if (isNaN(port)) {
    // named pipe
    return val;
  }

  if (port >= 0) {
    // port number
    return port;
  }

  return false;
}

/**
 * Event listener for HTTP server "error" event.
 */

function onError(error) {
  if (error.syscall !== 'listen') {
    throw error;
  }

  var bind = typeof port === 'string'
    ? 'Pipe ' + port
    : 'Port ' + port;

  // handle specific listen errors with friendly messages
  switch (error.code) {
    case 'EACCES':
      console.error(bind + ' requires elevated privileges');
      process.exit(1);
      break;
    case 'EADDRINUSE':
      console.error(bind + ' is already in use');
      process.exit(1);
      break;
    default:
      throw error;
  }
}

/**
 * Event listener for HTTP server "listening" event.
 */