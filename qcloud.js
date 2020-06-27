const config = require('./config')

const env = process.env.NODE_ENV;
const {
    mysql
} = config.dev

const DB = require('knex')({
    client: 'mysql',
    connection: {
        host: mysql.host,
        port:mysql.port,
        user: mysql.user,
        password: mysql.pass,
        database: mysql.database,
        charset:mysql.char
    }
});

module.exports = {
    mysql: DB
}
