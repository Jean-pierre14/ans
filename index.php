<?php require '_header.php'; ?>
<?
	
	if(!empty($_SESSION)){
		if($_SESSION['role'] === 3){
			header("Location: ./page/admin/");
		}
		if($_SESSION['role'] === 1){
			header("Location: ./page/admin_s/");
		}
	}
	
?>
<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="shortcut icon" type="imege/x-icon" href="img/1587195324100.png">
    <title>Site-ANS-Home page</title>
    <link href="https://fonts.googleapis.com/css?family=Lato:700%7CMontserrat:400,600" rel="stylesheet">
    <link rel="stylesheet" href="css/font-awesome.min.css">
    <link rel="stylesheet" href="./bootstrap/bootstrap.min.css">
    <link type="text/css" rel="stylesheet" href="css/style.css" />
</head>

<body>
    <div id="home" class="hero-area">
        <div class="bg-image bg-parallax overlay"
            style="background-image:url(./img/images_.jpeg);background-position:bottom;">
        </div>
        <div class="home-wrapper">
            <div class="container">
                <div class="row">
                    <div class="col-md-8">
                        <!--	<h1 class="white-text" style="font-size: 32px;">Together for a less</h1>-->
                        <h1 class="animation"
                            style="font-size:50px;text-align:center;color:white; font-family: Cooper;color: #DDC472">
                            North Kivu in your pocket </h1>
                        <style>
                        .h:hover {
                            color: #ff4700;
                            font-size: 20px;
                        }

                        .animation {
                            position: relative;
                            animation: text-slide linear infinite 3s;
                        }

                        @keyframes text-slide {
                            0% {
                                text-shadow: -10px 5px 15px rgb(212, 52, 52);
                            }

                            10% {
                                text-shadow: 10px 9px 5px rgb(99, 68, 43);
                            }

                            50% {
                                text-shadow: 7px 8px 5px rgb(90, 40, 50);
                            }

                            100% {
                                text-shadow: 8px -4px 10px rgb(74, 102, 194);
                            }
                        }
                        </style>
                        <p style="font-size:30px;text-align:center;color:white; font-family: Cooper;">Free to choose
                            your clear destination</p>

                        <!--	<p class="lead white-text" style="font-weight:normal;font-size:15px;">Your quietness is our priority</p> -->
                        <!--	<a class="main-button icon-button" href="#"> North Kivu Historic Plases !</a>
							<a class="main-button icon-button" href="#">Lancez-vous !</a>
							<a class="main-button icon-button" href="#">Lancez-vous !</a>
							<a class="main-button icon-button" href="#">Lancez-vous !</a>
							-->

                    </div>
                </div>
            </div>
        </div>

    </div>

    <div id="cta" class="section">
        <!-- Backgound Image -->
        <div class="bg-image bg-parallax overlay" style="background-image:url(./img/chukudu.jpeg)"></div>
        <!-- /Backgound Image -->
        <div class="container">
            <div class="row">
                <div class="col-md-6">
                    <h2 class="animation" class="white-text"
                        style="font-size:40px;text-align:center;color:white; font-family: Cooper;color: #DDC472">Add
                        your business.</h2>
                    <p class="lead white-text"
                        style="font-size:25px;text-align:center;color:white; font-family: Cooper;">By adding your
                        business you gonna help each people new
                        or not in North Kivu to find your business.</p>
                    <a class="main-button icon-button" href="page/log/login.php">Connexion</a>
                </div>
            </div>
        </div>
    </div>

    <div id="why-us" class="section">


        <!--Auto Translater

		<div id="translator_8706"><noscript>Javascript is disable - <a href="http://www.supportduweb.com/">http://www.supportduweb.com/</a> - <a href="http://www.supportduweb.com/generateur-boutons-traduction-translation-google-gratuit-html-code=script-boutons-traduire-page-web.html">Générateur de boutons de traduction</a></noscript></div><script type="text/javascript" src="http://services.supportduweb.com/translator/8706-1-yyyyyyyyy.js"></script>
			<p><strong>clic a flag to change language</strong></p></div>	-->



        <!-- container -->
        <div class="container">


            <div class="row">
                <div class="section-header text-center">
                    <h2 style="font-size:30px;text-align:center;color:rgb(44, 53, 54); font-family: Cooper;">We are
                        Africa Next Season </h2>
                    <p class="lead">Free to choose your clear destination</p>
                </div>


                <div class="col-md-4">
                    <div class="feature">
                        <a href="cart/cart.php?cat=transport"><i class="feature-icon fa fa-car"></i>
                            <div class="feature-content">
                                <h4 class="h">Transport</h4>
                        </a>
                        <p>For your security, Just click and choose the thansport service for your choice. We are here
                            to serve you.</p>
                    </div>
                </div>
            </div>

            <div class="col-md-4">
                <div class="feature">
                    <a href="cart/cart.php?cat=hospital"><i class="feature-icon fa fa-ambulance"></i>
                        <div class="feature-content">
                            <h4 class="h">Hospitals</h4>
                    </a>
                    <p>No need to ask the hospitals destinations, just a click, no need to suffer.</p>
                </div>
            </div>
        </div>

        <div class="col-md-4">
            <div class="feature">
                <a href="cart/cart.php?cat=restaurent"><i class="feature-icon fa fa-cutlery"></i>
                    <div class="feature-content">
                        <h4 class="h">Restaurents</h4>
                </a>
                <p>As you wanna get a good place where you gonna fill free, just click and make your choice, you'll not
                    be disappointed.</p>
            </div>
        </div>
    </div>


    <!-- container -->
    <div class="container">


        <div class="row">
            <div class="section-header text-center">
                <h2 style="font-size:50px;text-align:center;color:#F3DA6D">
                    <!--un titre-->
                </h2>
                <p class="lead">......................</p>
            </div>


            <div class="col-md-4">
                <div class="feature">
                    <a href="cart/cart.php?cat=apartement"><i class="feature-icon fa fa-home"></i>
                        <div class="feature-content">
                            <h4 class="h">Apartement</h4>
                    </a>
                    <p>No need to walk or to surround all the town searching for a flat or an apartement for location,
                        just a clic.</p>
                </div>
            </div>
        </div>

        <div class="col-md-4">
            <div class="feature">
                <a href="cart/cart.php?cat=hotel"><i class="feature-icon fa fa-hotel"></i>
                    <div class="feature-content">
                        <h4 class="h">Hotels</h4>
                </a>
                <p>No need to burn 20 liters of your fuel by searching an appropriate Hotel, just click and have the
                    North
                    kivu in your mobile.</p>
            </div>
        </div>
    </div>

    <div class="col-md-4">
        <div class="feature">
            <a href="cart/cart.php?cat=shop"><i class="feature-icon fa fa-shopping-cart"></i>
                <div class="feature-content">
                    <h4 class="h">Shops and Supermarkets</h4>
            </a>
            <p>For your security and the security of your money, choose an appropriate shop or Supermarket.</p>
        </div>
    </div>
    </div>


    <div class="row">
        <div class="section-header text-center">
            <h2 style="font-size:50px;text-align:center;color:#F3DA6D">
                <!--un titre-->
            </h2>
            <p class="lead">......................</p>
        </div>


        <div class="col-md-4">
            <div class="feature">
                <a href="cart/cart.php?cat=church"><i class="feature-icon fa fa-bell-o"></i>
                    <div class="feature-content">
                        <h4 class="h">Church</h4>
                </a>
                <p>Muslim, Catholic, Protestant etc; here is the places to pray, no need to stay where you are, make a
                    click to descover</p>
            </div>
        </div>
    </div>

    <div class="col-md-4">
        <div class="feature">
            <a href="cart/cart.php?cat=school"><i class="feature-icon fa fa-book"></i>
                <div class="feature-content">
                    <h4 class="h">School</h4>
            </a>
            <p>For the security and knowledge, that's the right place for you to make your choise and choose an
                appropriate space for you.</p>
        </div>
    </div>
    </div>

    <div class="col-md-4">
        <div class="feature">
            <a href="cart/cart.php?cat=story"><i class="feature-icon fa fa-globe"></i>
                <div class="feature-content">
                    <h4 class="h">Story</h4>
            </a>
            <p>Memorial, Historic Places, Event, all the importent things about North Kivu that you want to know.</p>
        </div>
    </div>
    </div>

    </div>
    <hr class="section-hr">
    <div class="row">

        <div class="col-md-6">
            <h3 style="font-size:20px;text-align:center;color:rgb(44, 53, 54); font-family: Cooper;">How to Add your
                business how to use this web site and a litle bit about us</h3>.</h3>
            <p class="lead" style="font-family: Comic sans MS;">By reading that video you will know the importent things
                about the web site, how to use it and how to add your business and for any questions or sugjestion call
                us on <a href="tel:+243997392797"
                    style="text-decoration: underline; font-size: larger; color:#0E6889;"><i class="fa fa-phone"
                        aria-hidden="true"></i> +243997392797</a></p>
            <p style="font-family: Comic sans MS;">Try and fail but never fail to try and fail will never overtake you
                if your determination to succeed is strong enought. </p>
        </div>

        <div class="col-md-5 col-md-offset-1">
            <a class="about-video" href="img/ans_vid.mp4">
                <img src="./img/1587195324100.png" alt="">
                <i class="play-icon fa fa-play"></i>
            </a>
        </div>
        <p>-------------------------------------</p>
    </div>
    </div>

    <div id="contact-cta" class="section">
        <div class="bg-image bg-parallax overlay" style="background-image:url(./img/background.jpg)"></div>
        <div class="container">
            <div class="row">
                <div class="col-md-8 col-md-offset-2 text-center">
                    <h2 class="white-text">Contact Us</h2>
                    <p class="lead white-text">La disponibilite et le partage des opinions est notre devoir.</p>
                    <a class="main-button icon-button" href="about_us/about_us.php">Contact Us now</a>
                </div>
            </div>
        </div>

    </div>
    <script src="./bootstrap/jquery.min.js"></script>
    <script src="./bootstrap/bootstrap.min.js"></script>
    <script src="./bootstrap/popper.min.js"></script>
    <script type="text/javascript" src="js/main.js"></script>
</body>

</html>