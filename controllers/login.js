const {
    mysql
} = require('../qcloud.js')

// 登录
async function signIn(ctx) {
    try {
        const {
            username,
            password
        } = ctx.query;
        const data1 = await mysql('users').select('*').where({username,password})
        ctx.state.code = 0;
        ctx.state.data = data1;
    } catch (e) {
        ctx.state.code=-1
        throw new Error(e)
    }
}

// 注册
async function signUp(ctx) {
    try {
        const {
            username,
            password
        } = ctx.query;
        const data1 = await mysql('users').select('*').where({username,password})
        ctx.state.code = 0;
        ctx.state.data = data1;
        if (data1&&data1.length) {
            ctx.state.code = 0;
            ctx.state.data = data1;
        }else {
            const data2 = await mysql('users').insert({
                username,
                password,
                userType:'0'
            })
            if(data2) {
                ctx.state.code = 0;
                ctx.state.data = data2;
                //返回值data2是插入数据的id值
            }
        }
    } catch (e) {
        console.log(e)
    }
}

// 修改密码
async function changePassword(ctx) {
    try {
        const {
            username,
            password
        } = ctx.query
        const data = await mysql('user').select({
            username,
            password
        })

    } catch (e) {
        ctx.state.code = -1;
        throw new Error(e)
    }
}
module.exports = {
    signIn,
    signUp,
    changePassword
}