/**
 * ajax 服务路由集合
 */

const router = require('koa-router')();
const controllers = require('../controllers')

router.post('/login', controllers.login.signIn) //登录
router.get('/goodsList', controllers.goods.getGoodsList) //获取物品列表
router.get('/good', controllers.goods.getGood) //根据id获取商品
router.get('/getCart',controllers.carts.getCart)//获取用户的购物车列表
router.get('/addToCart',controllers.carts.addToCart)//添加到购物车

module.exports = router