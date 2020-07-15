const mysql=require('../qcloud')

//创建商店
async function createShop(ctx) {
    try{
        const {shopname,ownerId}=ctx.query
        const data=await mysql('shops').insert({shopname,ownerId})
        ctx.state.code=0;
        ctx.state.data=data
    }catch(e) {
        ctx.state.code=-1
        throw new Error(e)
    }
  
}
//上架商品
async function grounding(ctx) {
    try{
        const {shopId}=ctx.query
        const data=await mysql('shops').insert({name,price,shopid,pic,})
        ctx.state.code=0;
        ctx.state.data=data
    }catch(e) {
        ctx.state.code=-1
        throw new Error(e)
    }
  
}

module.exports={
    createShop,
    grounding

}