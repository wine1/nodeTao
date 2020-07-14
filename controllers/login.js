const {
    mysql
} = require('../qcloud.js')

// 登录
async function signIn(ctx) {
    try {
        const {
            username,
            password
        } = ctx.request.body;
        const data1 = await mysql('users').select('username', 'password')
        if (!data1) {
            ctx.state.code = 0;
            ctx.state.data = data1;
            const data2 = await mysql('users').insert({
                username,
                password
            })
        }
    } catch (e) {
        console.log(e)
    }
}

// 注册
async function signUp(ctx) {
    try {
        const {
            username,
            password
        } = ctx.request.body;
        const data1 = await mysql('users').select({
            username
        })
        if (!data1) {
            const data2 = await mysql('users').insert({
                username,
                password
            })
        } else {
            ctx.state.code = -1;
            ctx.state.data = '该用户名已存在'
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