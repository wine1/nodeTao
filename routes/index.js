/**
 * ajax 服务路由集合
 */

const router = require('koa-router')();
const controllers = require('../controllers')

router.get('/api/user/login', controllers.login.signIn) //登录
router.get('/api/user/register', controllers.login.signUp) //注册
router.get('/api/goodslist/getGoodsList', controllers.goods.getGoodsList) //获取物品列表
router.post('/api/goodslist/details', controllers.goods.getGood) //根据id获取商品
router.post('/api/carts/getcart',controllers.carts.getCart)//获取用户的购物车列表
router.post('/api/carts/addgood',controllers.carts.addToCart)//添加到购物车
router.get('/api/goodslist/shop',controllers.shops.getShop)//获取店铺信息
router.get('/api/goodslist/swiper',controllers.goods.getBanner)//获取店铺信息
router.post('/api/goodslist/shoplist',controllers.shops.getShopList)//获取商店内商品列表
router.post('/api/order/updateOrderList',controllers.order.updateOrderList)//将订单存入数据库
router.post('/api/order/getOrderList',controllers.order.getOrderList)//从数据库取出订单数据


module.exports = router