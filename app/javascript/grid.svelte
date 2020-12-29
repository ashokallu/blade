<script>
  window.addEventListener('load', event => {
    // Code to execute when all DOM content including fonts, images, etc. is loaded;
    var toastElList = [].slice.call(document.querySelectorAll('.toast'))
    var toastList = toastElList.map(function (toastEl) {
      return new bootstrap.Toast(toastEl, {autohide: false})
    });
    // toastList[0].show();
    // toastList[1].show();
  })
  import img from '../assets/images/apples/photo-1462636892587-150b136b276a.jpg'
  import img2 from '../assets/images/apples/red_and_green_apple_landscape.jpg'
  import img3 from '../assets/images/apples/red_apple_potrait.jpg'
  import img4 from '../assets/images/apples/red_apple_vine_landscape.jpg'
  import img5 from '../assets/images/apples/red_apples_potrait.jpg'
  import img6 from '../assets/images/apples/solo_red_apple_landscape.jpg'

  let handleChange = event => {
    if (document.getElementById("w3review").textLength > 100) {
      console.log("alerted!");
      event.target.disabled = true;
    }
  }
</script>

<!-- <svelte:window on:load={handleDOMLoad}/> -->
<h1>
  This is a Svelte app
</h1>

<style lang="scss">
  h1 {
    background-color: red;
  }
</style>

<div>
  <div class="container-sm" style="border: 1px solid black; background-color: red;">
    <div class="row">
      <div class="col-sm-2">one</div>
      <div class="col-sm-2">one</div>
      <div class="col-sm-2">one</div>
    </div>
  </div>

  <div class="container-md" style="border: 1px solid black; background-color: red;">
    <p>This is a .container-md</p>
  </div>

  <div class="container-lg" style="border: 1px solid black; background-color: red;">
    <p>This is a .container-lg</p>
  </div>

  <div class="container-xl" style="border: 1px solid black; background-color: red;">
    <p>This is a .container-xl</p>
  </div>

  <div class="container-xxl" style="border: 1px solid black; background-color: red;">
    <p>This is a .container-xxl</p>
  </div>
</div>

