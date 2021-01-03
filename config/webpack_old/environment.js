const { environment } = require('@rails/webpacker')
const svelte = require('./loaders/svelte')
const exposeLoader = require('./loaders/expose-loader')
const urlLoader = require('./loaders/url-loader')
const providePlugin = require('./plugins/provide-plugin')

environment.loaders.prepend('svelte', svelte)
environment.loaders.prepend('expose-loader', exposeLoader)
// environment.loaders.prepend('url-loader', urlLoader)

environment.plugins.append('ProvidePlugin', providePlugin)

module.exports = environment
