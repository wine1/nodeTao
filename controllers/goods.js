const { mysql } = require("../qcloud.js");

async function getGoodsList(ctx) {
  try {
      console.log('ctx',ctx.then(res => console.log('res', res)))
    // const { id } = ctx.query;
    const data = await mysql("goods").select('*')
    console.log('111',ctx.state);
    ctx.state.code = 0;
    ctx.state.data = data;
  } catch (e) {
    ctx.state.code = -1;
    throw new Error(e);
  }
}

// getGoodsList()

module.exports = {
  getGoodsList
};
