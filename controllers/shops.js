const {mysql} =require('../qcloud')

// 获取店铺信息
async function getShop(ctx) {
    try{
        const {id}=ctx.query
        let data=await mysql('shops').select({id})
        ctx.state.code=0
        ctx.state.data=data[0]
    }catch(e) {
        ctx.state.code=-1;
        throw new Error(e)
    }
}
//获取商店内商品列表
async function getShopList(ctx) {
    try{
        const {id}=ctx.query
      const data=await mysql('goods').select().where({id})
      ctx.state.code=0;
      ctx.state.data=data
      }catch(e) {
          ctx.state.code=-1
          throw new Error(e)
    }
  }
  

module.exports={
    getShop,getShopList
  }