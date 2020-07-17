<script>
  export let name;

  // $ is a global varible, but if you want to reference a variable in script tag of svelte tag, it must be declared with a "let" or "var" keyword before the identifier is referenced, but, a local variable "$" will shadow the global jQuery $ identifier. in that case, you must prefix 'window' to "$" identifier.
  console.log(`jQuery version is ${window.$.fn.jquery}`);
  // document.addEventListener('DOMContentLoaded', () => window.$('.ui.modal').modal('show'));
</script>

<style>
  h1 {
    color: #FF3E00;
  }
</style>

<h1>Hello {name}!</h1>

<div class="ui card">
  <div class="content">
    <div class="header">Cute Dog</div>
    <div class="meta">
      <span>2 days ago</span>
      Animals
    </div>
    <p></p>
  </div>
</div>