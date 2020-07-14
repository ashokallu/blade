// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

import Rails from "@rails/ujs"
import * as ActiveStorage from "@rails/activestorage"
import "channels"

// The importing of .sass files into ESM modules is handled by webpack by loaders, the 'sass-loader', followed by 'postcss-loader', followed by 'css-loader', followed by 'mini-css-extract-plugin' plugin.
// If 'extract_css' property of ./config/webpacker.yml file is set to true, then, the CSS markup generated from this import is added to 'application.css' file in the 'css' folder of the 'public_output_path' property of ./config/webpacker.yml file, and then you can give the relative path of the 'application.css' file to 'stylesheet_pack_tag' helper method, which will serve the extracted CSS markup to the browser.
//
// In a node console that started in the root path of the Rails project, execute the following commands to find the configuration of webpack to process files of /\.(scss|sass)(\.erb)?$/i extension imported into ESM modules.
// const { environment } = require('@rails/webpacker');
// environment.loaders.get('sass')
import '../../styles/styles.scss'

Rails.start()
ActiveStorage.start()

// Uncomment to copy all static images under ../images to the output folder and reference
// them with the image_pack_tag helper in views (e.g <%= image_pack_tag 'rails.png' %>)
// or the `imagePath` JavaScript helper below.
//
// const images = require.context('../images', true)
// const imagePath = (name) => images(name, true)
