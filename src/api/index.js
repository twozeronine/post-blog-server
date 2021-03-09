const Router = require('koa-router');
const posts = require('./posts/index');

const api = new Router();

api.use('/posts', posts.routes());

// 라우터를 내보냅니다
module.exports = api;
