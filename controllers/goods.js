
const {mysql} = require('../qcloud.js')

async function getGoodsList(ctx) {
    try{
        const data1=await mysql('goods').select()
        console.log(data1)
    } catch(e) {
        console.log(e)
    }
}

// getGoodsList()

module.exports= {
    getGoodsList
}