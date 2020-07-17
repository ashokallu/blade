// https://www.artembutusov.com/webpack-semantic-ui/

$ yarn add semantic-ui
// https://fomantic-ui.com/
$ yarn add fomantic-ui

// https://github.com/Semantic-Org/Semantic-UI/issues/5828#issuecomment-571558209
// https://fomantic-ui.com/introduction/getting-started.html
$ yarn add fomantic-ui@nightly // Yarn has issues to run scripts that come by npm packages
// https://github.com/Semantic-Org/Semantic-UI/issues/4801#issuecomment-380512864
$ yarn add fomantic-ui@nightly --ignore-scripts
$ cd node_modules/fomantic-ui
$ npx gulp install
/*
  [10:36:18] Using gulpfile ~/work/blade/node_modules/fomantic-ui/gulpfile.js
  [10:36:18] Starting 'install'...

  [10:36:18] Starting 'run setup'...
  ? Set-up Semantic UI Automatic (Use default locations and all components)
  ? We detected you are using NPM Nice! Is this your project folder? /home/ubuntu/work/blade Yes
  ? Where should we put Semantic UI inside your project? semantic/
  [10:36:31] Finished 'run setup' after 14 s
  [10:36:31] Starting 'create install files'...

  Installing
------------------------------
Installing to semantic/
Copying UI definitions
Copying UI themes
Copying gulp tasks
Adding theme files
Creating gulpfile.js
Creating site theme folder /home/ubuntu/work/blade/semantic/src/site/
[10:36:31] Starting 'create theme.config'...
Adjusting @siteFolder to:  site/
Creating src/theme.config (LESS config) /home/ubuntu/work/blade/semantic/src/theme.config
[10:36:31] Finished 'create theme.config' after 27 ms
[10:36:31] Starting 'create semantic.json'...
Creating config file (semantic.json) /home/ubuntu/work/blade/semantic.json
[10:36:31] Finished 'create semantic.json' after 27 ms
[10:36:31] Finished 'create install files' after 179 ms
[10:36:31] Starting 'clean up install'...

 Setup Complete!
 Installing Peer Dependencies. Please refrain from ctrl + c...
 After completion navigate to semantic/ and run "gulp build" to build
[10:36:31] Finished 'clean up install' after 778 μs
[10:36:31] Finished 'install' after 14 s
*/

// A semantic.json file is created in top-level of the Rails project.

// A ./semantic folder is created in the top-level of the Rails project.
// You will need to build your distribution of the CSS and JavaScript you use on your website. To do this run the `npx gulp build` command inside the directory created by the semantic installer. The folder is semantic/ by default.
// Once the `npx gulp build` command execution is completed, you should have a new directory ./semantic/dist/ which contains all the CSS and JavaScript files. You can now include these in your web page and start using Fomantic-UI.
$ cd semantic
$ npx gulp build


$ yarn add svelte-preprocess

// https://stackoverflow.com/a/60650490
// Error: ENOENT: no such file or directory, scandir '/home/ubuntu/work/blade/node_modules/node-sass/vendor'
$ node node_modules/node-sass/scripts/install.js // From root path of your Rails project.
/*
  Downloading binary from https://github.com/sass/node-sass/releases/download/v4.14.1/linux-x64-83_binding.node
  Download complete
  Binary saved to /home/ubuntu/work/blade/node_modules/node-sass/vendor/linux-x64-83/binding.node
*/

// ModuleNotFoundError: Module not found: Error: Can't resolve './themes/default/assets/images/flags.png' in '/home/ubuntu/work/blade/app/styles'

// ./semantic/src/site/globals/site.variables
@fontPath: "/home/ubuntu/work/blade/semantic/dist/themes/default/assets/fonts";
@imagePath: "/home/ubuntu/work/blade/semantic/dist/themes/default/assets/images";

@fontPath  : '../../@{theme}/assets/fonts';
@imagePath : '../../@{theme}/assets/images';


// https://gist.github.com/thejohnfreeman/563337119e20d090ea2d22bee9b05a6b
/*
  Started GET "/home/ubuntu/work/blade/semantic/dist/themes/default/assets/fonts/icons.woff" for ::1 at 2020-07-17 13:30:18 +0530
    
  ActionController::RoutingError (No route matches [GET] "/home/ubuntu/work/blade/semantic/dist/themes/default/assets/fonts/icons.woff"):
*/

// https://medium.com/@subramaniyan.annamalai/fomantic-ui-with-angular-9-b58beea266c5

