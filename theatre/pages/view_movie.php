<?php
include('header.php');
?>
  <!-- =============================================== -->

  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <h1>
        Lista Filmów
      </h1>
      <ol class="breadcrumb">
        <li><a href="index"><i class="fa fa-dashboard"></i> Indeks</a></li>
        <li class="active">Lista Filmów</li>
      </ol>
    </section>

    <!-- Main content -->
    <section class="content">

      <!-- Default box --> 
      <div class="box">
        <div class="box-body">
            <div class="box box-primary">
            <!-- /.box-header -->
            <div class="box-body">
              <?php include('../../msgbox.php');?>
              <ul class="todo-list">
                 <?php 
                        $qry7=mysqli_query($con,"select * from tbl_movie");
                        if(mysqli_num_rows($qry7))
                        {
                        while($c=mysqli_fetch_array($qry7))
                        {
                        ?>
                <li>
                  <!-- drag handle -->
                      <span class="handle">
                        <i class="fa fa-film"></i>
                        
                      </span>
                  <!-- checkbox -->
                  <!-- todo text -->
                  <span class="text"><?php echo $c['movie_name'];?></span>
                  <span class="text"><?php echo $c['status'];?></span>
                  <!-- Emphasis label -->
                  
                  <!-- General tools such as edit or delete-->
                  <div class="tools">
                    
                    <button class="fa fa-trash-o" onclick="del(<?php echo $c['movie_id'];?>)"></button>
                  </div>
                </li>
                  <?php
                       }}
                     ?>
                      
            </div>
          </div>
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
function del(m)
    {
        if (confirm("Czy na pewno chcesz usunąć film?") == true) 
        {
            window.location="del_movie.php?mid="+m;
        } 
    }
    </script>