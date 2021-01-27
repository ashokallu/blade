/*
  https://github.com/rails/webpacker/blob/v6.0.0.beta.2/6_0_upgrade.md
  https://github.com/rails/webpacker
*/

// svelte
/*
  https://github.com/sveltejs/svelte-loader#install
*/

// entry points
// An entry point indicates which module webpack should use to begin building out its internal dependency graph. webpack will figure out which other modules and libraries that entry point depends on (directly and indirectly).

// webpack outputs bundles. When webpack processes your application, it internally builds a dependency graph which maps every module your project needs and generates one or more bundles. The 'output' of webpack.config.js webpack configuration file property tells webpack where to emit the bundles it creates and how to name these files.

// Webpacker out of the box supports JS and static assets (fonts, images etc.) compilation.
const { webpackConfig } = require('@rails/webpacker')
webpackConfig.module.rules // rules array // From webpack 4,loaders are renamed as rules, Use rules in webpack 4 instead of loaders.
webpackConfig.plugins // plugins array
webpackConfig.resolve // Plain JS object
webpackConfig.output // Plain JS object
Object.keys(webpackConfig)

// final base config
webpackBaseConfigPath = require('path').resolve('config', 'webpack', 'base.js')
webpackBaseConfigPath = require(baseConfigPath)
webpackBaseConfigPath.module.rules // rules array // From webpack 4,loaders are renamed as rules, Use rules in webpack 4 instead of loaders.
webpackBaseConfigPath.plugins // plugins array

// webpack development base config
webpackDevelopmentConfigPath = require('path').resolve('config', 'webpack', 'development.js')
webpackDevelopmentConfig = require(webpackDevelopmentConfigPath)
webpackDevelopmentConfig.module.rules // rules array // From webpack 4,loaders are renamed as rules, Use rules in webpack 4 instead of loaders.
webpackDevelopmentConfig.plugins // plugins array


// Webpacker ships with two binstubs: ./bin/webpack and ./bin/webpack-dev-server. Both are thin wrappers around the standard webpack.js and webpack-dev-server.js executables to ensure that the right configuration files and environmental variables are loaded based on your environment.
// Webpack compiles in development mode unless NODE_ENV is specified.
$ ./bin/webpack // webpack.js executable
$ ./bin/webpack-dev-server // webpack-dev-server.js executable

// In development, Webpacker compiles on demand rather than upfront by default. This happens when you refer to any of the pack assets using the Webpacker helper methods. This means that you don't have to run any separate processes. Compilation errors are logged to the standard Rails log.

// on-demand compilation means when the request for asset comes from the webpacker helper method calls which are referenced from the view pages.
// live code reloading happeds when you start the webpack development server, which will watch for changes in the app/javascript/packs/*.js files and automatically reload the browser to match.

// If you want to use live code reloading, or you have enough JavaScript that on-demand compilation is too slow, you'll need to run ./bin/webpack-dev-server or ruby ./bin/webpack-dev-server. This process will watch for changes in the app/javascript/packs/*.js files and automatically reload the browser to match.
// Once you start the webpack development server, Webpacker library will automatically start proxying all webpack asset requests to this webpack development server. When you stop the webpack development server, it'll revert back to on-demand compilation.
$ ./bin/webpack-dev-server // webpack dev server
$ ./bin/webpack --watch --progress // watcher
$ ./bin/webpack // standalone build

// Please note, NODE_ENV environment variable can either be set to 'production', 'development' or 'test'. This means you don't need to create additional environment files inside config/webpacker/* and instead use config/webpacker.yml to load different configurations using RAILS_ENV.
// NODE_ENV - environment mode. Can be 'production', 'development' or 'test'
// RAILS_ENV - environment configuration. Can be any configuration defined in config/webpacker.yml, if environment configuration is not available, webpacker will use fallback production environment configuration, like RAILS_ENV=production.

// Webpacker will use production environment mode as a fallback environment for loading configurations.
// NODE_ENV is not set, webpacker will compile assets in production mode.
// RAILS_ENV is set to "staging", so webpacker will use staging configurations from config/webpacker.yml if available or use fallback production environment configuration.
$ RAILS_ENV=staging bundle exec rails assets:precompile
$ RAILS_ENV=staging NODE_ENV=production bundle exec rails assets:precompile

// NODE_ENV is set to development, webpacker will compile assets in development mode.
// RAILS_ENV is set to "cucumber", so webpacker will load configuration for cucumber environment if defined in config/webpacker.yml or fallback to production configuration in config/webpacker.yml
$ RAILS_ENV=cucumber NODE_ENV=development bundle exec rails assets:precompile

// binstubs compiles in development mode however rake tasks compiles in production mode.
//
// Compiles in development mode unless NODE_ENV is specified.
$ ./bin/webpack
$ NODE_ENV=development ./bin/webpack
$ ./bin/webpack-dev-server
$ NODE_ENV=development ./bin/webpack-dev-server
//
// Compiles in production mode by default unless NODE_ENV is specified
$ bundle exec rails assets:precompile
$ NODE_ENV=production bundle exec rails assets:precompile
$ bundle exec rails webpacker:compile
$ NODE_ENV=production bundle exec rails webpacker:compile

// Webpacker hooks up a new `webpacker:compile` rake task to the `assets:precompile` rake task, the `webpacker:compile` rake task gets run whenever you run `assets:precompile` rake task.
// Similar to sprockets both rake tasks will compile packs in production mode but will use RAILS_ENV to load configuration from config/webpacker.yml (if available).
$ bundle exec rails webpacker:compile
$ bundle exec rails assets:precompile // If you are not using Sprockets, `webpacker:compile` task is automatically aliased to `assets:precompile` rake task.
$ bundle exec rails assets:precompile // compiles assets in production mode, by default.
$ NODE_ENV=development bundle exec rails assets:precompile

// Webpack executes in a node process, you use CJS modules for config/webpack/.*js files, all config files have `module.exports`.
// Webpacker gives you a default set of configuration files for test, development and production environments in config/webpack/*.js. You can configure each individual environment in their respective files or configure them all in the base config/webpack/base.js file.
// config/webpack/base.js // This module is base configuration, which is imported into all configs
// config/webpack/development.js
// config/webpack/production.js
// config/webpack/test.js


// Webpacker upgrade

// Rename config/webpack to config/webpack_old
// Rename config/webpacker.yml to config/webpacker_old.yml

// rename ./.browserslistrc to ./.browserslistrc.old

// gem info GEMNAME [options] - Info prints information about the gem such as name, description, website, license and installed paths.
// -r, --remote                     Restrict operations to the REMOTE domain
// --[no-]prerelease            Display prerelease versions
$ gem info webpacker --remote --prerelease

// Gemfile
gem 'webpacker', '~> 6.x'

$ bundle update webpacker

// This is optional, this will get executed by default, when you run `bundle exec rails webpacker:install` command for webpacker 6.x gem version.
$ yarn add "@rails/webpacker@next" // remove quotes, $ yarn add @rails/webpacker@next
// or
$ yarn upgrade "@rails/webpacker --latest" // remove quotes, $ yarn add @rails/webpacker@next.
$ yarn upgrade webpack-dev-server --latest

$ bundle exec rails webpacker:install
/*
  // Installs all JavaScript dependencies [from prerelease rails/webpacker]
  yarn add @rails/webpacker@next

  // Installs webpack and webpack-cli as direct dependencies
  yarn add webpack@^5.11.0 webpack-cli@^4.2.0

  // Installs webpack dev server for live reloading
  yarn add --dev webpack-dev-server @webpack-cli/serve

  // Manually add the below dependencies.
  yarn remove svelte-loader svelte-preprocess
  yarn add --dev webpack-merge@latest
  yarn add --dev svelte-loader@latest svelte-preprocess@latest
  yarn add --dev css-loader@latest style-loader@latest mini-css-extract-plugin@latest
  yarn add --dev node-sass@latest sass-loader@latest
  yarn add --dev postcss@latest postcss-flexbugs-fixes@latest postcss-import@latest postcss-load-config@latest postcss-loader@latest postcss-preset-env@latest
*/


// Replace 'javascript_pack_tag' method with 'javascript_packs_with_chunks_tag'
// You can link the JavaScript pack in Rails views using the 'javascript_packs_with_chunks_tag' helper.

// Replace 'stylesheet_pack_tag' method with 'stylesheet_packs_with_chunks_tag'
// If you have styles imported in your pack file, you can link them by using 'stylesheet_packs_with_chunks_tag'.
// In order for your styles or static assets files to be available in your view, you would need to link them in your "pack" or entry file.

// config/webpack/base.js

// webpack loaders
// https://v4.webpack.js.org/concepts/#loaders

// webpack plugins
// https://v4.webpack.js.org/concepts/#plugins
// In order to use a plugin, you need to require() the plugin first, and then create an instance of the plugin, and add it to the 'plugins' array of the default exports of webpack configuration module.
// Since you can use a plugin multiple times in a config for different purposes, you need to create an instance of it by calling it with the 'new' operator.



