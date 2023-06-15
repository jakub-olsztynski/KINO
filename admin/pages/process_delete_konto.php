<?php
session_start();
include('../../config.php');

$mid=$_GET['mid'];
mysqli_query($con,"delete  from tbl_login where user_id='$mid'");
 $_SESSION['success']="Konto usunięte pomyślnie";
header("location:index.php");
?>