
<?php include('header.php');
if(!isset($_SESSION['user']))
{
	header('location:login.php');
}?>
<link rel="stylesheet" href="validation/dist/css/bootstrapValidator.css"/>
    
<script type="text/javascript" src="validation/dist/js/bootstrapValidator.js"></script>
  <!-- =============================================== -->
  <?php
    include('form.php');
    $frm=new formBuilder;      
  ?> 
</div>
<div class="content">
	<div class="wrap">
		<div class="content-top">
			<h3>Płatność</h3>
			<form action="bank.php" method="post" id="form1">
			<div class="col-md-4 col-md-offset-4" style="margin-bottom:50px">
			<div class="form-group">
   <label class="control-label">Imię</label>
    <input type="text" class="form-control" name="name">
</div>
<div class="form-group">
   <label class="control-label">Numer Karty</label>
    <input type="text" class="form-control" name="number" required title="Enter 16 digit card number">
  
</div>      
<div class="form-group">
   <label class="control-label">Data ważności</label>
    <input type="date" class="form-control" name="date">
</div>
<div class="form-group">
   <label class="control-label">CVV</label>
    <input type="text" class="form-control" name="cvv">
</div>
<div class="form-group">
    <button class="btn btn-success">Dokonaj płatności</button>
    </form>
</div>
</div>
			</div>
			
		<div class="clear"></div>	
		
	</div>
<?php include('footer.php');?>
</div>
<?php
    session_start();
    extract($_POST);
    include('config.php');
    $_SESSION['screen']=$screen;
    $_SESSION['seats']=$seats;
    $_SESSION['amount']=$amount;
    $_SESSION['date']=$date;
    header('location:bank.php');
?>
<script>
        $(document).ready(function() {
            $('#form1').bootstrapValidator({
            fields: { 
            name: {
            verbose: false,
                validators: {notEmpty: {
                        message: 'Imię nie może być puste'
                    },regexp: {
                        regexp: /^[a-zA-Z ]+$/,
                        message: 'Imię może składać się tylko ze znaków alfabetycznych'
                    } } },
            number: {
            verbose: false,
                validators: {notEmpty: {
                        message: 'Numer karty nie może być pustey'
                    },stringLength: {
                    min: 16,
                    max: 16,
                    message: 'Wprowadź 16-cyfrowy numer karty'
                },regexp: {
                        regexp: /^[0-9 ]+$/,
                        message: 'Wprowadź poprawny numer karty'
                    } } },
            date: {
            verbose: false,
                validators: {notEmpty: {
                        message: 'Wymagana data ważności'
                    } } },
            cvv: {
            verbose: false,
                validators: {notEmpty: {
                        message: 'Wymagany numer CCV'
                    },stringLength: {
                    min: 3,
                    max: 3,
                    message: 'CCV musi mieć dokładnie 3 cyfry'
                },regexp: {
                        regexp: /^[0-9 ]+$/,
                        message: 'Wprowadź poprawny CCV'
                    } } }}
            });
            });

</script>