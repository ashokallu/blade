<script>
  export let name;
</script>

<style>
  .container, .container-fluid, .container-sm, .container-md, .container-lg, .container-xl, .container-xxl {
    border: 1px solid black;
  }

  .col-sm {
    border: 1px solid red;
  }

  .outer {
    width: 500px;
    border: 1px solid red;
  }
</style>

<div class="container">
  <div class="row">
    <div class="col-sm">
      One of three columns
    </div>
    <div class="col-sm">
      One of three columns
    </div>
  </div>

  <div class="row">
    <div class="col-md-auto" style="border: 1px solid red;">
      This is a column of variable width
    </div>
    <div class="col-md-auto" style="border: 1px solid red;">
      This is a column of variable width
    </div>
  </div>
</div>

<div class="outer">
  <div class="container">
    container
  </div>
  <div class="container-fluid" style="max-width: 300px;">
    container
  </div>
  <div class="container-md">
    container
  </div>
</div>

<div style="width: 200px; border: 1px solid black; box-sizing: content-box;">
  <div style="width: 100%; box-sizing: content-box; margin: 0px 0px; padding: 0px 0px; border: 1px solid red">
    This is a div
  </div>
  <div style="width: 70%; box-sizing: border-box; margin: 0px 50px; padding: 0px 10px; border: 1px solid red">
    This is a div
  </div>
</div>

<div class="container">
  <div class="row">
    <div class="col-md">One</div>
    <div class="col-md">Two</div>
  </div>
</div>