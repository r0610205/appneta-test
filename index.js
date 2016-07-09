'use strict';

const tv = require('traceview');
tv.traceMode = 'always';

const express = require('express');

const app = express();
app.get('/', function (req, res) {
  res.send('Hello world\n');
});

app.listen(8080);
console.log('Running...');

