<script>
  export let name;
</script>

<style type="text/scss" global>
  /*@import "~bulma/bulma";*/ // This is in-correct, If you prefix a tilde '~', 'postcss-import' plugin of postCSS or 'sass-loader' loader will not look in the 'node_modules' for importing .sass or .scss modules from npm packages, an error will be thrown.

  /*@import "bulma/bulma";*/ // This is correct, You can give the relative path of a .sass or .scss file of an npm package  in 'node_modules' to @import directive of SASS, and if you do not prefix a tilde '~', then, the 'postcss-import' plugin of postCSS or 'sass-loader' loader will resolve the relative path to 'node_modules' and import the .scss or .sass file.

  /*@import "../../node_modules/bulma/bulma.sass";*/ // This is correct, You can give the absolute path of a .sass or .scss file of an npm package in 'node_modules' to @import directive of SASS, then, the 'postcss-import' plugin of postCSS or 'sass-loader' loader will import the .scss or .sass file.
</style>

<article class="message is-medium">
  <div class="message-header">
    <p>Medium message</p>
    <button class="delete is-medium" aria-label="delete"></button>
  </div>
  <div class="message-body">
    Lorem ipsum dolor sit amet, consectetur adipiscing elit. <strong>Pellentesque risus mi</strong>, tempus quis placerat ut, porta nec nulla.Nullam gravida purus diam, et dictum <a>felis venenatis</a> efficitur. Aenean ac <em>eleifend lacus</em>, in mollis lectus.
  </div>
</article>

<article class="message is-success">
  <div class="message-body">
    Lorem ipsum dolor sit amet, consectetur adipiscing elit. <strong>Pellentesque risus mi</strong>, tempus quis placerat ut, porta nec nulla. Vestibulum rhoncus ac ex sit amet fringilla. Nullam gravida purus diam, et dictum <a>felis venenatis</a> efficitur. Aenean ac <em>eleifend lacus</em>, in mollis lectus. Donec sodales, arcu et sollicitudin porttitor, tortor urna tempor ligula, id porttitor mi magna a neque. Donec dui urna, vehicula et sem eget, facilisis sodales sem.
  </div>
</article>

<article class="message is-warning">
  <div class="message-body">
    Lorem ipsum dolor sit amet, consectetur adipiscing elit. <strong>Pellentesque risus mi</strong>, tempus quis placerat ut, porta nec nulla. Vestibulum rhoncus ac ex sit amet fringilla. Nullam gravida purus diam, et dictum <a>felis venenatis</a> efficitur. Aenean ac <em>eleifend lacus</em>, in mollis lectus. Donec sodales, arcu et sollicitudin porttitor, tortor urna tempor ligula, id porttitor mi magna a neque. Donec dui urna, vehicula et sem eget, facilisis sodales sem.
  </div>
</article>

<article class="message is-danger">
  <div class="message-body">
    Lorem ipsum dolor sit amet, consectetur adipiscing elit. <strong>Pellentesque risus mi</strong>, tempus quis placerat ut, porta nec nulla. Vestibulum rhoncus ac ex sit amet fringilla. Nullam gravida purus diam, et dictum <a>felis venenatis</a> efficitur. Aenean ac <em>eleifend lacus</em>, in mollis lectus. Donec sodales, arcu et sollicitudin porttitor, tortor urna tempor ligula, id porttitor mi magna a neque. Donec dui urna, vehicula et sem eget, facilisis sodales sem.
  </div>
</article>