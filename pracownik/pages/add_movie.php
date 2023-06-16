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
  <!-- =============================================== -->

  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <h1>
        Dodaj Film
      </h1>
      <ol class="breadcrumb">
        <li><a href="index.php"><i class="fa fa-home"></i> Indeks</a></li>
        <li class="active">Dodaj Film</li>
      </ol>
    </section>

    <!-- Main content -->
    <section class="content">

      <!-- Default box --> 
      <div class="box">
        <div class="box-body">
          <?php include('../../msgbox.php');?>
          <form action="process_add_movie.php" method="post" enctype="multipart/form-data" id="form1">
            <div class="form-group">
              <label class="control-label">Tytuł</label>
              <input type="text" name="name" class="form-control"/>
              <?php $frm->validate("name",array("required","label"=>"Tutuł")); // Validating form using form builder written in form.php ?>
            </div>
            <div class="form-group">
              <label class="control-label">Obsada</label>
              <input type="text" name="cast" class="form-control"/>
              <?php $frm->validate("cast",array("required","label"=>"Obsada","regexp"=>"text")); // Validating form using form builder written in form.php ?>
            </div>
            <div class="form-group">
              <label class="control-label">Opis</label>
              <textarea name="desc" class="form-control"></textarea>
              <?php $frm->validate("desc",array("required","label"=>"Opis")); // Validating form using form builder written in form.php ?>
            </div>
            <div class="form-group">
              <label class="control-label">Data Premiery</label>
              <input type="date" name="rdate" class="form-control"/>
              <?php $frm->validate("rdate",array("required","label"=>"Data Premiery")); // Validating form using form builder written in form.php ?>
            </div>
            <div class="form-group">
              <label class="control-label">Plakat</label>
              <input type="file" name="image" class="form-control"/>
              <?php $frm->validate("image",array("required","label"=>"Plakat")); // Validating form using form builder written in form.php ?>
            </div>
            <div class="form-group">
              <label class="control-label">Link do zwiastunu na YT</label>
              <input type="text" name="video" class="form-control"/>
              <?php $frm->validate("video",array("label"=>"Image","max"=>"500")); // Validating form using form builder written in form.php ?>
            </div>
            <div class="form-group">
              <button type="submit" class="btn btn-success">Dodaj film</button>
            </div>
          </form>
        </div> 
        <!-- /.box-footer-->
      </div>
      <!-- /.box -->

    </section>
    <!-- /.content -->
  </div>
  <?php
include('footer.php');
?>
<script>
        <?php $frm->applyvalidations("form1");?>
    </script>