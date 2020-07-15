<script>
  export let name;
</script>

<style>
  h1 {
    color: #FF3E00;
  }
</style>

<!-- http://archives.materializecss.com/0.100.2/about.html -->
<div class="row">
  <div class="col push-s1">
    <div class="col s12 m6">
      <div class="card deep-purple accent-1">
        <div class="card-content black-text">
          <span class="card-title white-text center-align">Card Title</span>
          <p>I am a very simple card. I am good at containing small bits of information.
          I am convenient because I require little markup to use effectively.</p>
          <h1>Hello {name}!</h1>
          <!-- https://material.io/resources/icons/?style=baseline -->
          <!-- <span class="material-icons" style="font-size: 5em; color: red;"> account_circle </span> -->
        </div>
        <div class="card-action">
          <!-- <a>This is a link</a> -->
          <!-- <a>This is a link</a> -->
        </div>
      </div>
    </div>
  </div>
</div>

<!-- https://materializecss.com/color.html -->
<!-- https://materializecss.com/grid.html -->
<div class="row">

  <div class="col s3 teal lighten-2">
    <!-- Grey navigation panel -->
    This has grey content
  </div>

  <div class="col s9 deep-purple accent-1">
    <!-- Teal page content  -->
    This has Teal page content
  </div>

</div>