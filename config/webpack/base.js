const { webpackConfig } = require('@rails/webpacker')
const { merge } = require('webpack-merge')
const svelteLoader = require('./rules/svelte')
const sassLoader = require('./rules/sassLoader')
const urlLoader = require('./rules/urlLoader')
const exposeLoader = require('./rules/exposeLoader')
const providePlugin = require('./plugins/providePlugin')

module.exports = merge(webpackConfig, svelteLoader, sassLoader, urlLoader, exposeLoader, providePlugin)
