<?php
include('config.php');
session_start();
$email = $_POST["Email"];
$pass = $_POST["Hasło"];
$qry=mysqli_query($con,"select * from tbl_login where username='$email' and password='$pass'");
$hashed_password=$qry['password'];
password_verify($hashed_password, $pass);
if(mysqli_num_rows($qry))
{
	$usr=mysqli_fetch_array($qry);
	if($usr['user_type']==2)
	{
		$_SESSION['user']=$usr['user_id'];
		if(isset($_SESSION['show']))
		{
			header('location:booking.php');
		}
		else
		{
			header('location:index.php');
		}
	}
	else
	{
		$_SESSION['error']="Nie udało się zalogować!";
		header("location:login.php");
	}
	
}
else
{
	$_SESSION['error']="Nie udało się zalogować!";
	header("location:login.php");
}
?>