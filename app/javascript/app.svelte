<script>
  export let name;
</script>

<style>
  h1 {
    color: #FF3E00;
  }
</style>

<h1>Hello {name}!</h1>

<div class="container">
  <button type="button" class="btn btn-primary">Primary</button>
  <button type="button" class="btn btn-secondary">Secondary</button>
  <button type="button" class="btn btn-success">Success</button>
  <button type="button" class="btn btn-danger">Danger</button>
  <button type="button" class="btn btn-warning">Warning</button>
  <button type="button" class="btn btn-info">Info</button>
  <button type="button" class="btn btn-light">Light</button>
  <button type="button" class="btn btn-dark">Dark</button>

  <button type="button" class="btn btn-link">Link</button>
</div>

<!-- Load icons from the url below which is the url for font awesome v5 icons -->
<!-- https://fontawesome.com/icons?d=gallery&m=free -->
<span style="font-size: 2.5em; color: Red;">
  <i class="fa fa-address-book" aria-hidden="true"></i>
  <i class="fas fa-arrow-circle-down"></i>
  <i class="far fa-address-card"></i>
</span>