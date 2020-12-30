const { webpackConfig } = require('@rails/webpacker')
const { merge } = require('webpack-merge');
const svelteLoader = require('./rules/svelte')
const sassLoader = require('./rules/sassLoader')

const MiniCssExtractPlugin = require('mini-css-extract-plugin');

module.exports = merge(webpackConfig, svelteLoader, sassLoader)
