<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<?php
session_start();
if(!isset($_SESSION['user']))
{
	header('location:login.php');
}
include('config.php');
extract($_POST);

//OTP Code
if($otp=="123456")
{
    $bookid="BKID".rand(1000000,9999999);
    mysqli_query($con,"INSERT into tbl_bookings values(NULL,'$bookid','".$_SESSION['theatre']."','".$_SESSION['user']."','".$_SESSION['show']."','".$_SESSION['screen']."','".$_SESSION['seats']."','".$_SESSION['amount']."','".$_SESSION['date']."',CURDATE(),'1')");
    $_SESSION['success']="Pomyślnie zarezerwowano bilety!";
}
else
{
    $_SESSION['error']="Płatność nieudana, biedaku";
}
?>
<body><table align='center'><tr><td><STRONG>Transakcja w trakcie realizacji,</STRONG></td></tr><tr><td><font color='blue'>Please Wait <i class="fa fa-spinner fa-pulse fa-fw"></i>
<span class="sr-only"></font></td></tr><tr><td>(Nie odświeżaj ani zamykaj tej strony!)</td></tr></table><h2>
<script>
    setTimeout(function(){ window.location="profile.php"; }, 2000);
</script>