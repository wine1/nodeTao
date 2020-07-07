/**
 * ajax 服务路由集合
 */

const router = require('koa-router')();
const controllers = require('../controllers')

router.post('/login', controllers.login.signIn) //登录
router.get('/list', controllers.goods.getGoodsList) //获取物品列表

module.exports = router