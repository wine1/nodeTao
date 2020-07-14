const {
    mysql
} = require('../qcloud.js')

//将订单存入数据库
async function updateOrderList(ctx) {
    try{
        const data=await mysql('carts').insert()

    }catch(e) {
        ctx.state.code=-1
        throw new Error(e)
    }
}
//从数据库取出订单数据
async function getOrderList(ctx) {
    try{
        const data=await mysql('carts').insert()

    }catch(e) {
        ctx.state.code=-1
        throw new Error(e)
    }
}

module.exports{
    updateOrderList,getOrderList
}