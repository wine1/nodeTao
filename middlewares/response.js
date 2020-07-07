const debug = require('debug')
module.exports = async function (ctx, next) {
    console.log('response', ctx.query)
    try {
        await next()
        ctx.body = ctx.body ? ctx.body : {
            code: ctx.state.code !== undefined ? ctx.state.code : 0,
            data: ctx.state.data !== undefined ? ctx.state.data : {}
        }

    } catch (e) {
        debug('Catch Error:%o', e)
        ctx.states = 200
        // 输出详细的错误信息
        ctx.body = {
            code: -1,
            error: e && e.message ? e.message : e.toString()
        }
    }
}