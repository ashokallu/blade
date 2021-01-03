module.exports = {
  module: {
    rules: [
      {
        // test: /\.(png|jpe?g|gif|svg|ttf|woff|otf)$/,
        test: /\.(eot|woff|woff2|svg|ttf)([\?]?.*)$/,
        use: [
          {
            loader: 'file-loader',
            options: {
              // name: '[name].[contenthash].[ext]',
              name: '[name].[ext]',
              // outputPath: 'static/img',
              outputPath: '/fonts',
              esModule: false
            }
          }
        ]
      }
    ],
  },
};