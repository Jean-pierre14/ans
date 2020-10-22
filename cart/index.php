<?php require '../_header.php'; ?>

<!DOCTYPE html>
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
	
	<title>Blog appartements</title>
</head>
<body>
<?php require '../header.php'; ?>




        <!-- pade Wrapper -->
    <div class="page-wrapper">

        <!-- Post Slider -->
        <div class="post-slider">
            <h1 class="slider-title">North Kivu </h1>


            

            <i class="fa fa-chevron-left prev"></i>
            <i class="fa fa-chevron-right next"></i>
        
        
        
        
            <div class="post-wrapper">
   <?php   $bus=$DB->query('SELECT * FROM business INNER JOIN news
    ON business.id=news.id_business
');   ?>
                <?php  foreach($bus as $bs): ?>

                <div class="post">

        

                <img src="../page/images/<?= $bs->url_img;?>" alt="" class="slider-image">
                <div class="post-info">
                    <h4><a href="single.html"><span class="sp"><?= $bs->titre;?></span></a></h4>
                    <i class="fa fa-user"><span class="sp"><?= $bs->business_name;?></span> </i>
                    &nbsp;
                    <i class="fa fa-calendar"><span class="sp"><?= $bs->datepost ?></span></i>
                    <p>
                        <a href="single.php?tok=<?= $bs->id_n?>" class="btn read-more">Read More</a>
                    </p>
                </div>
            <!-- <div class="post">2</div>
                <div class="post">3</div>
                <div class="post">4</div>
                <div class="post">5</div> -->
            


            </div>
      <?php  endforeach;?>
            
        </div>
        
                    
    

        </div>

	
		<div>
			
    <section class="hotel-rooms spad-2">
        <div class="container">
            <?php   $bus=$DB->query('SELECT * FROM business ');   ?>
            

            <div class="row">
                <?php  foreach($bus as $bs): ?>
                <div class="col-lg-4 col-md-4 col-md-6">
                    <div class="room-items">
                        <div class="room-img set-bg" data-setbg="../page/images/<?= $bs->url_img;?>">
                            <!-- <a href="#" class="room-content">
                                <i class="flaticon-heart"></i>
                            </a> -->
                        </div>
                        <div class="room-text">
                            <div class="room-details">
                                <div class="room-title">
                                    <h5><?= $bs->business_name; ?></h5>
                                  <!--   <a href="#"><i class="flaticon-placeholder"></i> <span>Location</span></a>
                                    <a href="#" class="large-width"><i class="flaticon-cursor"></i> <span>Show on
                                            Map</span></a> -->
                                </div>
                            </div>
                          
                           
                            <a href="sg.php?ird=<?= $bs->id?>&nm=<?= $bs->business_name?>" class="site-btn btn-line">Read More</a>
                        </div>
                    </div>
                </div>
            <?php  endforeach;?>
            </div>

        </div>
    </section>


			
		</div>

		<!-- // page wrapper -->

			<?php include '../footer.php'; ?>

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
</body>

 
</html>