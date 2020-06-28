module.exports = {
  lintOnSave: false, // 禁用save保存更改时弹出lint错误
  publicPath: '/', // 配置项目打包后的根目录
  css: {
    loaderOptions: {
      sass: {
        prependData: '@import "@/styles/Theme.scss";'
      }
    }
  }
}
