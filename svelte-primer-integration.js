$ yarn add '@primer/css'
$ yarn add svelte-preprocess

// Error: ENOENT: no such file or directory, scandir '/home/ubuntu/work/blade/node_modules/node-sass/vendor'
// https://stackoverflow.com/a/60650490
// From the root path of your Rails project
$ node node_modules/node-sass/scripts/install.js
/*
  Downloading binary from https://github.com/sass/node-sass/releases/download/v4.14.1/linux-x64-83_binding.node
  Download complete
  Binary saved to /home/ubuntu/work/blade/node_modules/node-sass/vendor/linux-x64-83/binding.node
*/