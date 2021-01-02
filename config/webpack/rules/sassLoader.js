// https://stackoverflow.com/a/55607208/9100537
// https://stackoverflow.com/a/58186289/9100537

const MiniCssExtractPlugin = require('mini-css-extract-plugin')
const autoprefixer = require('autoprefixer');

module.exports = {
  plugins: [new MiniCssExtractPlugin()],
  module: {
    rules: [
      {
        test: /\.s[ac]ss$/i,
        include: [
          require('path').resolve('node_modules'),
          require('path').resolve('app', 'styles'),
        ],
        use: [
          MiniCssExtractPlugin.loader,
          // Creates `style` nodes from JS strings
          // "style-loader",
          // Translates CSS into CommonJS
          {
            loader: "css-loader",
            options: {
              importLoaders: 1
            },
          },
          //
          "postcss-loader",
          // Compiles Sass to CSS
          {
            loader: 'sass-loader',
            options: {
              sassOptions: {
                plugins: () => [autoprefixer()]
              },
            },
          },
        ],
      },
    ],
  },
  resolve: {
    extensions: ['.scss'] // or webpackConfig.resolve.extensions.push(".scss") in base config file
  },
};