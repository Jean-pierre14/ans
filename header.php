<header>
		<div class="logo">
			<h1 class="logo-text"><span>Africa</span>Next Season</h1>
		</div>
		<i class="fa fa-bars menu-toggle"></i>
		<ul class="nav">
			<li><a href="../index.php">Home</a></li>
			<li><a href="../about_us/about_us.php">About</a></li>
		<!--	<li><a href="#">Servises</a></li> -->
		<li><a href="#">Get APK</a></li>
		<?php 
if (!$_SESSION['user']==array()) {
 



?>




<li><a href="../page/log/home.php"><?= $_SESSION['user']['username']; ?></a></li>

<?php


}else{


?>
	<li><a href="../page/log/login.php">Login</a></li>


<?php

}
?>
		
		<!--	<li><a href="#">Home</a></li>
			<li><a href="#">Home</a></li> 
			<li>
				<a href="#">
					<i class="fa fa-user"></i>
					 Login
					 <i class="fa fa-chevron-down" style="font-size: .8em;"></i>
					</a>
				<ul>
					<li><a href="#">Dashord</a></li>
					<li><a href="#" class="logout">Logout</a></li>
				</ul>
			</li>
		</ul>-->x
	</header>