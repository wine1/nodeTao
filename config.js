

const conf={
    dev:{
        http:4005,
        https:4000,
        mysql:{
            host:'localhost',
            port:'3306',
            user:'root',
            db:'taobao',
            pass:'123456',
            char:'utf8mb4'
        }
    }, prd: {
        http: 4003,
        https: 4000,
        mysql: {
            port: 3306,
            host: '',
            user: '',
            db: '',
            pass: '',
            char: 'utf8mb4'
        },
    },
}

module.exports=conf