<?php
include('header.php');
?>
<link rel="stylesheet" href="../../validation/dist/css/bootstrapValidator.css"/>
    
<script type="text/javascript" src="../../validation/dist/js/bootstrapValidator.js"></script>
  <!-- =============================================== -->
  <?php
    include('../../form.php');
    $frm=new formBuilder;      
  ?>    

  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <h1>
        Dodaj pracownika
      </h1>
      <ol class="breadcrumb">
        <li><a href="index.php"><i class="fa fa-home"></i> Indeks</a></li>
        <li class="active">Dodaj pracownika</li>
      </ol>
    </section>

    <!-- Main content -->
    <section class="content">

      <!-- Default box --> 
      <div class="box">
        <div class="box-body">
            <form action="process_add_account.php" method="post" id="form1">
            <div class="form-group">
                <label class="control-label">ID używtkownika</label>
                <input type="number" name="id" class="form-control"/>
                <?php $frm->validate("id",array("required","label"=>"ID używtkownika")); // Validating form using form builder written in form.php ?>
              </div>
              <div class="form-group">
                <label class="control-label">Nazwa używtkownika</label>
                <input type="text" name="nazwa" class="form-control"/>
                <?php $frm->validate("nazwa",array("required","label"=>"Nazwa używtkownika")); // Validating form using form builder written in form.php ?>
              </div>
              <div class="form-group">
                <label class="control-label">Hasło</label>
                <input type="password" name="haslo" class="form-control"/>
                <?php $frm->validate("haslo",array("required","label"=>"Hasło")); // Validating form using form builder written in form.php ?>
              </div>
              <div class="form-group">
                <label class="control-label">Typ użytkownika: 0-admin, 1-pracownik</label>
                <!-- <input type="text" name="place" id="autocomplete" class="form-control"> -->
                <input type="number" name="usertype" class="form-control">
                <?php $frm->validate("usertype",array("required","label"=>"Typ użytkownika")); // Validating form using form builder written in form.php ?>
              </div>
              <div class="form-group">
                <button class="btn btn-success"onclick="add(<?php echo $c['id'];?>)>'Add Account'</button>
              </div>
              <input type="hidden" class="field" id="locality"disabled="true">
            </form>
        </div> 
        <!-- /.box-footer-->
      </div>
      <!-- /.box -->
      

    </section>
    <!-- /.content -->
  </div>
  <script>
  function add(m)
    {
        if (confirm("Czy na pewno dodać użytkownika") == true) 
        {
            window.location="process_add_account.php?mid="+m;
        } 
    }
    </script>
  <?php
include('footer.php');
?>
 <script>
        // google auto complete API
      var placeSearch, autocomplete;
      var componentForm = {
        street_number: 'short_name',
        route: 'long_name',
        locality: 'long_name',
        administrative_area_level_1: 'long_name',
        country: 'long_name',
        postal_code: 'short_name'
      };

      function initAutocomplete() {
        // Create the autocomplete object, restricting the search to geographical
        // location types.
        autocomplete = new google.maps.places.Autocomplete(
            /** @type {!HTMLInputElement} */(document.getElementById('autocomplete')),
            {types: ['geocode']});

        // When the user selects an address from the dropdown, populate the address
        // fields in the form.
        autocomplete.addListener('place_changed', fillInAddress);
      }

      function fillInAddress() {
        // Get the place details from the autocomplete object.
        var place = autocomplete.getPlace();

        for (var component in componentForm) {
          document.getElementById(component).value = '';
          document.getElementById(component).disabled = false;
        }

        // Get each component of the address from the place details
        // and fill the corresponding field on the form.
        for (var i = 0; i < place.address_components.length; i++) {
          var addressType = place.address_components[i].types[0];
          if (componentForm[addressType]) {
            var val = place.address_components[i][componentForm[addressType]];
            document.getElementById(addressType).value = val;
          }
        }
      }

    </script>
    <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyDfO40iueprTDv0WCf0BCIlbj56JO-HylA&libraries=places&callback=initAutocomplete"
            async defer></script>
            <script>
        <?php $frm->applyvalidations("form1");?>
    </script>