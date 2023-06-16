<?php
session_start();
include('../../config.php');

$mid=$_GET['mid'];
mysqli_query($con,"DELETE FROM tbl_movie WHERE movie_id='$mid'");
 $_SESSION['success']="Film Usunięty";
header("location:view_movie.php");
?>