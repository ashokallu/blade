// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

import Rails from "@rails/ujs"
import * as ActiveStorage from "@rails/activestorage"
import "channels"

import 'materialize-css'

// You can import '.css' or '.scss' files that are distributed with some npm packages that are in 'node_modules' of the project. In this case, you must explicitly specify the file extension like .css or .scss or .sass file that you want to import into .js modules.
// import 'materialize-css/dist/css/materialize.css' // This is directly importing of .css file from 'node_modules'
//
import '../../styles/mystyles.scss'

Rails.start()
ActiveStorage.start()

// Uncomment to copy all static images under ../images to the output folder and reference
// them with the image_pack_tag helper in views (e.g <%= image_pack_tag 'rails.png' %>)
// or the `imagePath` JavaScript helper below.
//
// const images = require.context('../images', true)
// const imagePath = (name) => images(name, true)
