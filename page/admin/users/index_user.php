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

    <link rel="stylesheet" href="../../my_css/blog_style.css">
    
    		<!--customer Admin styling-->

	<link rel="stylesheet" href="../../my_css/admin.css">

	<!--google font-->
	<link href="https://fonts.googleapis.com/css?family=Candal|Lora&display=swap" rel="stylesheet">
	
	<title>Admin Section - manage Users</title>
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
					 VIP palace
					 <i class="fa fa-chevron-down" style="font-size: .8em;"></i>
					</a>
				<ul>
					<li><a href="#" class="logout">Logout</a></li>
				</ul>
			</li>
		</ul>
	</header>

	<!-- Admin pade Wrapper -->
	<div class="admin-wrapper">
		<!-- Left sidebar -->
		<div class="left-sidebar">
			<ul>
				<li><a href="../posts/index_post.php">Manage posts</a></li>
				<li><a href="index_user.php">Manage users</a></li>
				<li><a href="../topics/index_top.php">Manage topics</a></li>
			</ul>
		</div>
		<!-- // Left sidebar -->
		
		<!-- Admin content -->
		<div class="admin-content">
			<div class="button-group">
				<a href="create_user.php" class="btn btn-big">Add User</a>
				<a href="../../maps.php" class="btn btn-big">Home Page</a>
			</div>
			<div class="content">
				<h2 class="page-title">Manage User</h2>

				<center>

				<table>
					<thead>
						<th>N</th>
						<th>User Name</th>
						<th>Role</th>
						<th colspan="2">Action</th>
					</thead>
					<tbody>
						<tr>
							<td>1</td>
							<td>VIP</td>
							<td>Admin</td>
							<td><a href="#" class="edit">edit</a></td>
							<td><a href="#" class="delete">delete</a></td>
						</tr>

						<tr>
							<td>2</td>
							<td>Linda</td>
							<td>Autor</td>
							<td><a href="#" class="edit">edit</a></td>
							<td><a href="#" class="delete">delete</a></td>
						</tr>

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
	<script src="../../js/scripts.js">

	</script>
</body>
  
</html>