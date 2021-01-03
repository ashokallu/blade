module.exports = {
  module: {
    rules: [
      {
        test: /\.(png|jpe?g|gif|svg|ttf|woff|otf)$/,
        // test: /\.(png|woff|woff2|eot|ttf|svg)$/,
        use: [
          {
            // loader: 'url-loader',
            loader:require.resolve("url-loader") + "?name=../[path][name].[ext]"
            // options: {
            //   limit: 50000,
            // }
            // options: {
            //   // name: '[name].[contenthash].[ext]',
            //   name: '[name].[ext]',
            //   // outputPath: 'static/img',
            //   outputPath: '/fonts',
            //   esModule: false
            // }
          }
        ]
      }
    ],
  },
};