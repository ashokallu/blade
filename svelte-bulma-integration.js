// To process 'scss' or 'sass' files that are imported into ESM modules, 'node-sass' is a dependency npm package for webpack loaders like 'sass-loader', which means, 'sass-loader' cannot process 'scss' or 'sass' files that are imported into ESM modules, it depends on 'node-sass' npm package to be added to package.json of the webpack project.
// In a Rails project, the webpacker gem installs some npm packages by default for configuring webpack for Rails project, 'node-sass' is installed by webpacker gem by default, and 'sass-loader' is also installed by webpacker gem by default, which means, out of the box, Rails project supports processing of .scss and .sass files that are imported into .js modules which will get processed by webpack.

$ yarn add bulma
$ yarn remove bulma // To remove bulma added as either direct dependency package or development dependency package.

$ yarn add svelte-preprocess

