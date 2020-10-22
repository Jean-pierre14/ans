<?php require '../_header.php'; ?>
<?php 
if (isset($_GET['tok']) AND !empty($_GET['tok'])) {
    $id=htmlspecialchars($_GET['tok']);
     
    
}
else{

   exit();
}

$er=$DB->query('SELECT news.*,business.id,business.business_name FROM news INNER JOIN business
	ON news.id_business = business.id

 WHERE id_n=:id',array(
'id'=>$id,


));
if (!$er) {
exit();
}
?>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="utf-8">
	<meta name="vieuport" content="width=device-width, initiate-scale=1.0">
	<meta http-equiv="X-UA-Compatible" content="ie=edge">
	
		<!--font awesame-->

	<link href="https://www.google.com/maps/place/Un+Jour+Nouveau+Center/@-1.6797489,29.2147065,17z/data=!3m1!4b1!4m5!3m4!1s0x19dd0f77dd21b51f:0x581b3fa6f38a8eac!8m2!3d-1.6797489!4d29.2168952?hl=fr" crossorigin="anonymous">

		<!--customer styling-->

	<link rel="stylesheet" type="text/css" href="../my_css/blog_style.css">

	<!--google font-->
	<link href="https://fonts.googleapis.com/css?family=Candal|Lora&display=swap" rel="stylesheet">



	<title>About Us</title>
</head>
<body>
<?php require '../header.php'; ?>
	<!-- pade Wrapper -->
	<div class="page-wrapper">

		
		

	<!-- CONTENT -->

		<div class="content clearfix">

			<!--mean content-->
			<div class="main-content single">
				<!-- <h1 class="post-title">About Us</h1> -->
				
				<div class="post-content">
					
					<p>
						<h2>
						We are <?= $er[0]->business_name;?></h2>
					</p>
				<p>
					<img  width="90%" src="../page/images/<?= $er[0]->url_img; ?>">
					<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3988.0856908735227!2d29.25011691415939!3d-1.6886110866721766!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x19dd0596898bf949%3A0x526186db8ead9470!2sUniversit%C3%A9%20Libre%20de%20Kigali%2C%20Gisenyi%20Campus%2C%20Gisenyi%2C%20Rwanda!5e0!3m2!1sfr!2scd!4v1577356910437!5m2!1sfr!2scd"
						 width="90%" height="300" frameborder="0" style="border:0;" allowfullscreen=""></iframe>
				</p>
				
					<p>

						<h1><?= $er[0]->titre;?></h1>
					<?= $er[0]->contenues;?>
					</p>
				<!-- 	<p>
						<strong>Do you wanna join us ????</strong>
						contact us <strong><a href="mailto:mbs@g-mail.com" style="text-decoration: underline; font-size: larger; color:#0E6889;">"<i class="fa fa-envelope" aria-hidden="true"></i> . Send email"</a> or
						<a href="tel:+243997392797"  style="text-decoration: underline; font-size: larger; color:#0E6889;">"<i class="fa fa-phone" aria-hidden="true"></i> . Call us on whatsApp"</a></strong> and tell us in what you can be important for us and we gonna be happy to recieve you between us, Our dors are opened
						for each and every one with an innovating help. <strong>You're Welcome</strong>
					</p> -->
					<p>
					
					</p>
					
				
				</div>
				</div>
			<!-- // mean content-->

            <!-- Sidebar -->
			
                    <!-- // Sidebar -->

		</div>

		<!-- // CONTENT -->

			</div>


		<!-- // page wrapper -->
	<?php include '../footer.php'; ?>
		

	<!--jQuery-->
	<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.4.1/jquery.min.js" integrity="sha256-CSXorXvZcTkaix6Yvo6HppcZGetbYMGWSFlBw8HfCJo=" crossorigin="anonymous">
	</script>

	<!-- Slick Carousel -->
	<script type="text/javascript" src="https://cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.min.js"></script>

	<!--Customer script-->
	<script src="../js/scripts.js">

	</script>
</body>


</html>