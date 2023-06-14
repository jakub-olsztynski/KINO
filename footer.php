<div class="footer">
	<div class="wrap">
			<div class="footer-top">
				<div class="col_1_of_4 span_1_of_4">
					<div class="footer-nav">
		                <ul>
		                   <li><a href="index.php" style="text-decoration:none;">Strona główna</a></li>
			  		   <li><a href="repertuar.php" style="text-decoration:none;">Repertuar</a></li>
			  		   <li><a href="login.php" style="text-decoration:none;">Logowanie</a></li>
		                   </ul>
		              </div>
				</div>
				<div class="col_1_of_4 span_1_of_4">
					<div class="textcontact">
						<p>Theatre Assistance<br>
						Online Movie Theatre Booking System<br>
						Ph: 6969786969<br>
						</p>
					</div>
				</div>
				<div class="col_1_of_4 span_1_of_4">
					<div class="call_info">
						<p class="txt_4">Skontaktuj się z nami!</p>
						<p class="txt_3">ul. Kinowa 55 Poznań</p>
						<p class="txt_3">Telefon: +48 600 000 000</p>
						<p class="txt_3">email: kino@kinowadomena.gov</p>
					</div>
				</div>
				<div class="col_1_of_4 span_1_of_4">
					<div class=social>
						<a href="#"><img src="images/fb.png" alt=""/></a>
						<a href="#"><img src="images/tw.png" alt=""/></a>
						<a href="#"><img src="images/dribble.png" alt=""/></a>
						<a href="#"><img src="images/pinterest.png" alt=""/></a>
					</div>
				</div>
				<div class="clear"></div>
			</div>
		</div>
	</div>
</body>
</html>

<style>
.content {
	padding-bottom:0px !important;
}
#form111 {
                width:500px;
                margin:50px auto;
}
#search111{
                padding:8px 15px;
                background-color:#fff;
                border:0px solid #dbdbdb;
}
#button111 {
                position:relative;
                padding:6px 15px;
                left:-8px;
                border:2px solid #ca072b;
                background-color:#ca072b;
                color:#fafafa;
}
#button111:hover  {
                background-color:#b70929;
                color:white;
}

</style>

<script src="js/auto-complete.js"></script>
 <link rel="stylesheet" href="css/auto-complete.css">
    <script>
        var demo1 = new autoComplete({
            selector: '#search111',
            minChars: 1,
            source: function(term, suggest){
                term = term.toLowerCase();
                <?php
						$qry2=mysqli_query($con,"select * from tbl_movie");
						?>
               var string="";
                <?php $string="";
                while($ss=mysqli_fetch_array($qry2))
                {
                
                $string .="'".strtoupper($ss['movie_name'])."'".",";
                //$string=implode(',',$string);
                
              
                }
                ?>
                //alert("<?php echo $string;?>");
              var choices=[<?php echo $string;?>];
                var suggestions = [];
                for (i=0;i<choices.length;i++)
                    if (~choices[i].toLowerCase().indexOf(term)) suggestions.push(choices[i]);
                suggest(suggestions);
            }
        });
    </script>