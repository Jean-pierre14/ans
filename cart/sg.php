<?php require '../_header.php'; ?>
<?php 
if (isset($_GET['ird']) AND !empty($_GET['ird']) AND isset($_GET['nm']) AND !empty($_GET['nm'])) {
    $id=htmlspecialchars($_GET['ird']);
      $nom=htmlspecialchars($_GET['nm']);
    
}
else{

    header('location:index.php');
}

$er=$DB->query('SELECT * FROM business WHERE id=:id AND business_name=:nom',array(
'id'=>$id,
'nom'=>$nom

));
if (!$er) {
	header('location:index.php');
}



?><!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="utf-8">
	<meta name="vieuport" content="width=device-width, initiate-scale=1.0">
	<meta http-equiv="X-UA-Compatible" content="ie=edge">
	
		<!--font awesame-->

	<link href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet"
	 integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN" crossorigin="anonymous">

		<!--customer styling-->

	<link rel="stylesheet" type="text/css" href="my_css/style.css">
    <link rel="stylesheet" type="text/css" href="my_css/blog_style.css">

	<!--google font-->
	<link href="https://fonts.googleapis.com/css?family=Candal|Lora&display=swap" rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="my_css/blog_style.css">

	    <!-- Google Font -->
    <link href="https://fonts.googleapis.com/css?family=Roboto:100,100i,300,300i,400,400i,500,500i,700,700i,900,900i"
        rel="stylesheet">

    <!-- Css Styles -->
    <link rel="stylesheet" href="css/bootstrap.min.css" type="text/css">
    <link rel="stylesheet" href="css/font-awesome.min.css" type="text/css">
    <link rel="stylesheet" href="css/nice-select.css" type="text/css">
    <link rel="stylesheet" href="css/owl.carousel.min.css" type="text/css">
    <link rel="stylesheet" href="css/flaticon.css" type="text/css">
    <link rel="stylesheet" href="css/slicknav.min.css" type="text/css">
    <link rel="stylesheet" href="css/jquery-ui.min.css" type="text/css">
    <link rel="stylesheet" href="css/style.css" type="text/css">
	
	<title>Blog</title>
</head>
<body>
 <?php include '../header.php'; ?>

	<!-- pade Wrapper -->
	<div class="page-wrapper">

		<!-- Post Slider -->
		<div class="post-slider">
			<h1 class="slider-title">Treding posts</h1>
			<i class="fa fa-chevron-left prev"></i>
			<i class="fa fa-chevron-right next"></i>
			<div class="post-wrapper">
      <?php $req=$DB->query('SELECT * FROM business INNER JOIN news
    ON business.id=news.id_business WHERE id_business=:id',array(
'id'=>$id

));  ?>
			<?php 
			foreach($req as $dn): 

				?>
				<div class="post">
				<img src="../page/images/<?= $dn->url_img;?>" alt="" class="slider-image">
				<div class="post-info">
					<h4><a href="single.html"><?= $dn->titre;?></a></h4>
					<i class="fa fa-user"><?= $dn->business_name; ?></i>
					&nbsp;
					<i class="fa fa-calendar"><?= $dn->datepost; ?></i>
					<p>
                        <a href="single.php?tok=<?= $dn->id_n?>" class="btn read-more">Read More</a>
                    </p>
				</div>
			
				</div>
				<?php 
			endforeach; 

				?>
			

			</div>
		</div>
		<!-- // post slider -->


	<!-- CONTENT -->

		<div class="content clearfix">

			<!--mean content-->

			<div class="main-content">
			
				<h1 class="recent-post-title"> All posts</h1>
					<?php 
			foreach($req as $dn): 

				?>
				<div class="post">
					<img src="../page/images/<?= $dn->url_img;?>" alt="" class="post-image">
				 <div class="post-preview">
					<h2><a href="single.html"><?= $dn->titre;?></a></h1>
					<i class="fa fa-home "><?= $dn->business_name;?></i>
					&nbsp;
					<i class="fa fa-calendar"><?= $dn->datepost;?></i>
					<p class="preview-text">
						<?= $dn->contenues;?>
					</p>
					<p>
                        <a href="single.php?tok=<?= $dn->id_n?>" class="btn read-more">Read More</a>
                    </p>
					
				</div>	
				
			</div>
	<?php 
			endforeach; 

				?>
	</div>
			<!-- // mean content-->
<!-- 
			<div class="sidebar">

				<div class="section search">

					<h2 class="section-title">Search</h2>
					<form action="index.html" method="POST">
						<input type="text" name="search-term" class="text-input" placeholder="search...">
						</form>
					</div>

					<div class="section topics">
						<h2 class="section-title">Topics</h2>
						<ul>
							<li><a href="#">Poems</a></li>
							<li><a href="#">Quotes</a></li>
							<li><a href="#">Fiction</a></li>
							<li><a href="#">Biography</a></li>
							<li><a href="#">Motivation</a></li>
							<li><a href="#">Inspiration</a></li>
							<li><a href="#">Life Lessons</a></li>
						</ul>
					</div>
		</div> -->

		<!-- // CONTENT -->

</div>

		<!-- // page wrapper -->

		

	<!--jQuery-->
	 <script src="js/jquery-3.3.1.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/jquery.nice-select.min.js"></script>
    <script src="js/owl.carousel.min.js"></script>
    <script src="js/jquery-ui.min.js"></script>
    <script src="js/jquery.slicknav.js"></script>
    <script src="js/main.js"></script>
        <script src="js/sc.js"></script>
         <script src="js/jq.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.4.1/jquery.min.js" integrity="sha256-CSXorXvZcTkaix6Yvo6HppcZGetbYMGWSFlBw8HfCJo=" crossorigin="anonymous">
	</script>

    <!-- Slick Carousel -->
    <script type="text/javascript" src="https://cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.min.js"></script>

    <!--Customer script-->
	<script src="js/scripts.js">

	</script>
	<?php include '../footer.php'; ?>
</body>
  
</html>