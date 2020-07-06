// Lodash 通过降低 array、number、objects、string 等等的使用难度从而让 JavaScript 变得更简单。
// Lodash 的模块化方法 非常适用于：

// 遍历 array、object 和 string
// 对值进行操作和检测
// 创建符合功能的函数
const _ = require('lodash')
const fs = require('fs')
const path = require('path')

/**
 * 映射 d 文件夹下的文件为模块
 */
const mapDir = d => {

    const tree = {}
    // 获得当前文件夹下的所有的文件夹和文件
    const [dirs, files] = _(fs.readdirSync(d)).partition(p => fs.statSync(path.join(d, p)).isDirectory())

    // 映射文件夹
    dirs.forEach(dir => {
        tree[dir] = mapDir(path.join(d, dir))
    })

    // 映射文件
    files.forEach(file => {
        if (path.extname(file) === '.js') {
            tree[path.basename(file, '.js')] = require(path.join(d, file))
        }
    })
return tree
}

// 默认导出当前文件夹下的映射
module.exports = mapDir(path.join(__dirname))
