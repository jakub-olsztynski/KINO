<?php
    session_start();
    include('config.php');
    extract($_POST);
    $passwordunhashed = $_POST['password'];
    $hashed_password = password_hash($passwordunhashed, PASSWORD_DEFAULT);
    mysqli_query($con,"insert into  tbl_registration values(NULL,'$name','$email','$phone','$age','gender')");
    $id=mysqli_insert_id($con);
    mysqli_query($con,"insert into  tbl_login values(NULL,'$id','$email','$hashed_password','2')");
    $_SESSION['user']=$id;
    header('location:index.php');
?>