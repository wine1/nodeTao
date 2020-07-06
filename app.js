const fs = require('fs');
const https = require('https');
const http = require('http');

const Koa = require('koa'),
  cors = require('koa2-cors'),
  logger = require('koa-logger'),
  json = require('koa-json'),
  views = require('koa-views'),
  onerror = require('koa-onerror');


const bodyParser = require('koa-bodyparser');
const response = require('./middlewares/response');
const index = require('./routes/index');
const app = new Koa()

// error handler
onerror(app);

// global middlewares
app.use(views('views', {
  root: __dirname + '/views',
  default: 'jade'
}));
app.use(json());
app.use(logger());

// error-handling
app.on('error', (err, ctx) => {
  console.error('server error', err, ctx)
});


// app.use(cors())
// 使用响应处理中间件
app.use(response);

// 解析请求体
app.use(bodyParser());

// 引入路由分发
const router = require('./routes');
app.use(router.routes());