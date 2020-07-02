
const {mysql} = require('../qcloud.js')

// async function getRoleDetail(ctx) {
//     try {
//         const {id}=ctx.query;
//         const data = await mysql('users').
//         select('*').
//         where({ id });
//         ctx.state.code = 0;
//         ctx.state.data = data[0];
//         console.log(ctx.state.data)
//     }
//     catch(error){
//         console.log('error',error)
//     }
// }

// // post方法
// async function add(ctx) {
//     try {
//         const { name, fullName } = ctx.request.body;
//         const data = await mysql('users').insert({ username:'天' });
//         console.log(data)
//         ctx.state.code = 0;
//         ctx.state.data = { id: data[0] };
//     } catch (e) {
//         ctx.state.code = -1;
//         throw new Error(e);
//     }
// }

// add()


mysql('users').insert({username: 'b',password:'1234'})
.then(res=>{
    console.log('插入数据库成功')
}).catch(ERROR=>{
    console.log(error)
});

// console.log(mysql('users').select('*'))