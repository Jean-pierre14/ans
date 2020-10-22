<?php 
include '../_header.php';

//if ($_SESSION['user']==array()) {
//	header("location:../log/login.php");
//}
//if ($_SESSION['business']==array()) {
//	header("location:../log/login.php");
//}
// var_dump($_SESSION['user']['id']);

  ?>
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

    <link rel="stylesheet" href="../my_css/blog_style.css">
    
    		<!--customer Admin styling-->

	<link rel="stylesheet" href="../my_css/admin.css">

	<!--google font-->
	<link href="https://fonts.googleapis.com/css?family=Candal|Lora&display=swap" rel="stylesheet">
	
	<title>Admin Section - manage posts</title>
</head>
<body>
	<header>
		<div class="logo">
			<h1 class="logo-text"><span>Africa</span>New season</h1>
		</div>
		<i class="fa fa-bars menu-toggle"></i>
		<ul class="nav">
			<li>
				<a href="#">
					<i class="fa fa-user"></i>
					 <?= $_SESSION['business']['bname'] ?>
					 <i class="fa fa-chevron-down" style="font-size: .8em;"></i>
					</a>
			</li>
			<li><a href="../log/logout.php" class="logout">Logout</a></li>
		</ul>
	</header>

	<!-- Admin pade Wrapper -->
	<div class="admin-wrapper">
		<!-- Left sidebar -->
	<!-- 	<div class="left-sidebar">
			<ul>
				<li><a href="index_post.php">Manage posts</a></li>
				<li><a href="../users/index_user.php">Manage users</a></li>
				<li><a href="../topics/index_top.php">Manage topics</a></li>
			</ul>
		</div>
		  -->
		
		<!-- Admin content -->
		<div class="admin-content">
			<div class="button-group">
			<a href="create_post.php" class="btn btn-big">Add post</a>
			<!-- <a href="../../maps.php" class="btn btn-big">Home Page</a> -->
			</div>
			<div class="content">
				<h2 class="page-title">Manage Posts</h2>
					<center>
				<table>
					<thead>
						<th>N</th>
						<th>Title</th>
						<th>Author</th>
						<th colspan="3">Action</th>
					</thead>
					<tbody>
						    <?php   $bus=$DB->query('SELECT * FROM news WHERE id_business=:cat',array(
                'cat'=>$_SESSION['business']['id']


            ));   ?>

               <?php $a=1; foreach($bus as $news): ?>
						<tr>
							<td><?= $a++; ?></td>
							<td><?= $news->titre; ?></td>
							<td>VIP</td>
							<!-- <td><a href="edit.php" class="edit">edit</a></td> -->
							<td><a href="del.php?id=<?= $news->id_n ?>" class="delete">delete</a></td>
							<!-- <td><a href="#" class="publish">publish</a></td> -->
						</tr>
<?php  endforeach;?>

				

					</tbody>
				</table>
			</center>
			</div>
		</div>

		<!-- // Admin content -->
	</div>


		<!-- // page wrapper -->

		

	<!--jQuery-->
	<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.4.1/jquery.min.js" integrity="sha256-CSXorXvZcTkaix6Yvo6HppcZGetbYMGWSFlBw8HfCJo=" crossorigin="anonymous">
	</script>

	
	<!--Customer script-->
	<script src="../js/scripts.js">

	</script>
</body>
  
</html>