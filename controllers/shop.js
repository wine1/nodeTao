const {mysql} =require('../qcloud')

// 获取店铺信息
async function getShop(ctx) {
    try{
        let data=await mysql('shops').select({shopId})
        ctx.state.code=0
        ctx.state.data=data[0]
    }catch(e) {
        ctx.state.code=-1;
        throw new Error(e)
    }
}