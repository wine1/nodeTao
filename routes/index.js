/**
 * ajax 服务路由集合
 */

const router = require('koa-router')();
const controllers = require('../controllers')

console.log(controllers.login.signIn)

router.post('/login', controllers.login.signIn) //登录
router.get('/goodsList', controllers.goods.getGoodsList) //获取物品列表

module.exports = router