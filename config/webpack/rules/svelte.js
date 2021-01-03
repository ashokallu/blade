const MiniCssExtractPlugin = require('mini-css-extract-plugin');

module.exports = {
  plugins: [new MiniCssExtractPlugin()],
  module: {
    rules: [
      {
        test: /\.svelte(\.erb)?$/,
        use: [
          {
            loader: 'svelte-loader',
            options: {
              hotReload: false,
              emitCss: false,
              preprocess: require('svelte-preprocess')({ postcss: true }),
            }
          },
        ],
      },
    ],
  },
};
