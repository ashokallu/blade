// https://webpack.js.org/loaders/expose-loader/
// https://www.npmjs.com/package/expose-loader

module.exports = {
  module: {
    rules: [
      {
        test: require.resolve('jquery'),
        use: [
          {
            loader: 'expose-loader',
            options: {
              exposes: [
                {
                  globalName: 'jQuery',
                  override: true,
                },
                {
                  globalName: '$',
                  override: true,
                },
              ],
            },
          },
        ],
      },
    ]
  },
}