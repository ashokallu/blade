// https://medium.com/@davidteren/rails-6-and-tailwindcss-getting-started-42ba59e45393
$ yarn add tailwindcss svelte-preprocess-sass
$ yarn add tailwindcss autoprefixer

$ yarn info svelte-preprocess
$ yarn info svelte-preprocess keywords

// This command will create a 'tailwind.config.js' file in the root of your Rails project, adding the basic Tailwind configuration.
$ npx tailwind init
/*
  tailwindcss 1.4.6
  ✅ Created Tailwind config file: tailwind.config.js
*/

// Open the newly created './tailwind.config.js' file that is created when you executed `npx tailwind init`, and inside the file, add ["./app/javascript/**/*.svelte"] inside the 'purge' property array. This 'purge' property is added for purgeCSS package that came along with the 'tailwind' npm package, and it will ensure that all the thousands of unused CSS rules that Tailwind library creates will be purged at build step.
// ./tailwind.config.js
module.exports = {
  purge: ["./app/javascript/**/*.svelte"],
  theme: {
    extend: {},
  },
  variants: {},
  plugins: [],
}

// Now, we have to configure PostCSS for the Raile project, so that we can use PostCSS to transform the Tailwind directives into pure CSS, in the root of your project, and by default, Rails 6 projects have a ./postcss.config.js file in the root path of the project.

// ./postcss.config.js
const tailwindcss = require("tailwindcss");

module.exports = {
  plugins: [
    tailwindcss("./tailwind.config.js"),
    require('autoprefixer'),
    /* The below config is default configuration set for postcss for a Rails 6 project */
    require('postcss-import'),
    require('postcss-flexbugs-fixes'),
    require('postcss-preset-env')({
      autoprefixer: {
        flexbox: 'no-2009'
      },
      stage: 3
    })
  ]
}

/*
  The 'source_entry_path' property of ./config/webpacker.yml file is a directory name, which is a path relative to the 'source_path' of ./config/webpacker.yml file.
  By default, everything inside the 'source_entry_path' property of ./config/webpacker.yml is an entry point for webpack, which means, webpack in Rails is configured to output a bundle for every file in the 'source_entry_path' directory, and this 'source_entry_path' property can have nested directories, and even the files in the nested directies of 'source_entry_path' directory are treated as a entry point file for webpack which will be built as a bundle, webpack will build a dependency graph for each entry point file, a bundle is built for each entry point file by resolving the dependency of that entry point file, and the final bundle name is configured to have the same name as the entry point file for which the bundle is built by webpack by resolving every dependency of the entry point file.
  The 'source_entry_path' directory should usually consist of only .js files, which are the source entry files, and they will be processed by webpack individually, and for every source entry file, which is a .js file, a bundle with .js is created after webpack resolves the dependencies of the source entry file from the dependency graph created by webpack to find the dependencies of the source entry file.
  The relative path of a .js file in the 'source_entry_path' property will be the argument that should be given to 'javascript_pack_tag' helper method of 'webpacker' gem to serve the bundle built from the source entry file, the file path without the .js extension can be given as argument to 'javascript_pack_tag' helper method.
*/

// stylesheet_pack_tag helper method
/*
  
*/

// rails-webpack-sass
// https://mentalized.net/journal/2019/10/19/use-sass-modules-in-rails/

// svelte general
// https://gist.github.com/Rich-Harris/0f910048478c2a6505d1c32185b61934

// svelte-loader configuration
/*
  https://github.com/sveltejs/svelte-loader
  http://www.lib4dev.in/info/sveltejs/svelte-loader/75853393

*/

// svelte webpack
/*
  http://asifr.com/svelte-webpack.html
  https://codesandbox.io/s/10544?file=/webpack.config.js
*/

// Rails svelte
/*
  https://mariochavez.io/desarrollo/2019/12/23/i-created-the-same-app-with-rails-and-javascript.html
  https://blog.carbonfive.com/the-best-of-both-worlds-html-apps-svelte/
  https://www.npmjs.com/package/svelte_ujs_ng
*/

// svelte postcss
/*
  https://github.com/sveltejs/svelte-preprocess/blob/master/docs/preprocessing.md#postcss
  https://jaketrent.com/post/preprocess-svelte-components-with-postcss/
  https://github.com/ls-age/svelte-preprocess-sass/issues/3

*/

// svelte sass
/*
  https://www.npmjs.com/package/svelte-preprocess-sass
  https://github.com/kazzkiq/svelte-preprocess-scss
  https://github.com/ls-age/svelte-preprocess-sass
  https://linguinecode.com/post/add-sass-svelte-js
  https://medium.com/@sean_27490/svelte-sapper-with-sass-271fff662da9
  https://danywalls.com/how-to-use-scss-sass-in-svelte-components/
  https://prog.world/svelte-sass-scss/
  https://www.npmjs.com/package/svelte-preprocess-sass
  https://github.com/sveltejs/svelte-preprocess/blob/master/README.md
  https://github.com/Rich-Harris/svelte-preprocessor-demo/blob/master/rollup.config.js#L31-L51
  https://stackoverflow.com/questions/49266016/sapper-svelte-sass-preprocessing
  https://github.com/sveltejs/sapper/issues/123
  https://medium.com/@sean_27490/svelte-sapper-with-sass-271fff662da9
  https://daveceddia.com/svelte-with-sass-in-vscode/
*/

// svelte-preprocess webpack
/*
  https://github.com/sveltejs/svelte-preprocess/issues/49
  https://github.com/sveltejs/svelte/issues/3670
  https://github.com/MadOPcode/svelte-preprocess-template
  https://www.npmjs.com/package/svelte-preprocess
  https://github.com/sveltejs/svelte-preprocess
  https://github.com/ls-age/svelte-preprocess-sass/issues/3
*/

// If you are using sveltejs, and if you have not set { emitCss: true } for 'options' property of the 'svelte-loader' loader in the './config/webpack/loaders/svelte.js' file, then, even though you have set 'extract_css' property to true in the './config/webpacker.yml', the css markup is not extracted for .svelte components, which means, if you have a .js file in the './app/javascript/packs' path, then, you can reference the bundle generated from this file by 'javascript_pack_tag', then .css will not be extracted to a .css file with the same name in the './public/packs/css/' folder because the bundle has .svelte component, but 'options' property of the 'svelte-loader' loader configuration does not have { emitCss: true } in the 'options' property, so, 'stylesheet_pack_tag' for the .js module that does not have any css module imported from it, but only references .svelte components, as it has no markup in it, a .css file for this module is not generated in './public/packs/css/' folder, and if you give the .js module's bundle in 'stylesheet_pack_tag' helper method, the method throws an error.
// If you want to extract css markup from .svelte component into a seperate .css files into a .css file generated for the bundle which imports .svelte components in it, then, you must set { emitCss: true } for 'options' property of the 'svelte-loader' loader in the './config/webpack/loaders/svelte.js' file, then, for all components in a bundle, the css from style element is extracted into a .css file with the bundle path into './public/packs/css/' folder, and you can give the bundle path relative to './app/javascript/packs' path, in the 'stylesheet_pack_tag' helper method, and then, the .css file in the './public/packs/css/' folder that has the extracted markup for the bundle is served to the browser.

// https://github.com/sveltejs/svelte/issues/776
// If you have set 'extract_css' property to true in the './config/webpacker.yml', the css markup is extracted from the bundles that import .css file in them, and then you can send the bundle path as argument to 'stylesheet_pack_tag' helper method, and the extracted CSS markup file for the bundle is served to the browser, but, if you have a bundle that does not have CSS modules imported into it, which means, if there is no CSS markup in the bundle, then, no markup will can be extracted, so a .css file for the bundle is not generated in the './public/packs/css/' folder for the bundle, and if you give the bundle path as argument to 'stylesheet_pack_tag' helper method, and no file is generated for the bundle in the './public/packs/css/' folder, the method throws an error.

// svelte-postcss-tailwind
// https://dev.to/sarioglu/using-svelte-with-tailwindcss-a-better-approach-47ph
// https://dev.to/inalbant/a-simpler-way-to-add-tailwindcss-to-your-svelte-project-11ja
// https://medium.com/javascript-in-plain-english/setting-up-svelte-integrating-tailwind-css-dde927edfb20

