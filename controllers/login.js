
const {mysql} = require('../qcloud.js')

async function signIn(ctx) {
    try{
        const { username, password } = ctx.request.body;
        const data1=await mysql('users').select('username','password')
        console.log(data1)
        if(data1) {
            const data2=await mysql('users').insert({username,password})
        }
    } catch(e) {
        console.log(e)
    }
}

module.exports= {
    signIn
}