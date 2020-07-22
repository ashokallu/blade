module.exports = {
  test: /\.svelte(\.erb)?$/,
  use: [{
    loader: 'svelte-loader',
    options: {
      hotReload: false,
      emitCss: true,
      preprocess: require('svelte-preprocess')({ postcss: true }),
    }
  }],
}
