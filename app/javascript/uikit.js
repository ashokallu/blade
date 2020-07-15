// https://getuikit.com/docs/webpack#file-structure
// import UIkit from 'uikit'; // This is not working
/*
  ERROR in ./app/javascript/uikit.js 5:12-17
  "export 'default' (imported as 'UIkit') was not found in 'uikit'
*/

import UIkit from 'uikit/dist/js/uikit' // Giving relative path is working
window.UIkit = UIkit

import UIkitIcons from 'uikit/dist/js/uikit-icons'
window.UIkitIcons = UIkitIcons

// loads the Icon plugin
UIkit.use(UIkitIcons);

// components can be called from the imported UIkit reference
// UIkit.notification('Hello world.');