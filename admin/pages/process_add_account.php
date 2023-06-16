<?php
    include('../../config.php');
    extract($_POST);
    mysqli_query($con,"insert into  tbl_login values(NULL,'$id',$nazwa','$haslo','$usertype')");
    $id=mysqli_insert_id($con);
    header('location:add_account_2.php?id='.$id);
?>