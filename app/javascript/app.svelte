<script>
  export let name;
</script>

<style>
  h1 {
    color: #FF3E00;
  }
</style>

<div class="container">
  <div class="card border border-secondary shadow-0 mb-3" style="background-color: #ff3e00;">
    <div class="card-header text-white"><h1>Svelte</h1></div>
    <div class="card-body text-white">
      <h5 class="card-title">Hello {name}!</h5>
      <p class="card-text">
        Svelte is a radical new approach to building user interfaces. Whereas traditional frameworks like React and Vue do the bulk of their work in the browser, Svelte shifts that work into a compile step that happens when you build your app.
      </p>
    </div>
  </div>
</div>