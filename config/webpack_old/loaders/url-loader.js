module.exports = {
  test: /\.(eot|png|svg|[ot]tf|woff2?)(\?v=\d+\.\d+\.\d+)?$/,
  use: [
    {
      loader: 'url-loader',
      options: {
        query: {
          limit: 10000
        }
      }
    },
  ],
}
