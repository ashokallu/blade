module.exports = {
  module: {
    rules: [
      {
        // test: /\.(ttf|eot|woff|woff2|svg)$/,
        // test: /\.(woff(2)?|ttf|eot|svg)(\?v=\d+\.\d+\.\d+)?$/,
        // test: /.(ttf|otf|eot|svg|woff(2)?)(\?[a-z0-9]+)?$/,
        test: /\.(png|jpe?g|gif|svg|ttf|woff|otf)$/,
        use: {
            loader: 'file-loader',
            // options: {
            //   name: '[name].[contenthash].[ext]',
            //   outputPath: 'static/img',
            //   esModule: false
            // }
            options: {
              name: '[path][name].[ext]',
                // name: '[name].[ext]',
              outputPath: 'static/img'
            },
        },
      },
    ],
  }
}