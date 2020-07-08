const { mysql } = require("../qcloud.js");

// 获取购物车列表
async function getCart(ctx) {
    try {
        const { userId } = ctx.query;
        const data = await mysql("carts").select('*').where({userId})
        ctx.state.code = 0;
        ctx.state.data = data[0];
      } catch (e) {
        ctx.state.code = -1;
        throw new Error(e);
      }
}


// 添加到购物车
async function addToCart(ctx) {
    try {
        const { userId,goodId } = ctx.query;
        const data = await mysql("carts").insert({userId,goodId})
        ctx.state.code = 0;
        ctx.state.data = data[0];
      } catch (e) {
        ctx.state.code = -1;
        throw new Error(e);
      }
}