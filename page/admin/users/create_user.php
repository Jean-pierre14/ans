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

	<title>Admin Section - Add Users</title>
</head>
<body>
	<header>
		<div class="logo">
			<h1 class="logo-text"><span>African</span>Next Season</h1>
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
				<a href="../../maps.php" class="btn btn-big">Home Page</a>
				<a href="index_user.php" class="btn btn-big">Manage users</a>
			</div>
			<div class="content">
				<h2 class="page-title">Add User</h2>

                <center>

                <form action="create_post.php" method="POST">
                   
                   <style>
                      
                       .textbox{
                            border: none;
                            height: 50px;
                            width: 350PX;
                            border-radius: 5px;
                            background-color: #D5D7DE;
                            padding-left: 20px;
                            color: black;
                            font-size: 1.2rem;
                            }

                            .label1{
                                color: #696F79;
                                font-size: 20px;
                                margin-top: 15px;
                                margin-bottom: 5px;
                                }
                   </style>

                      <div class="label1">
                        NAME
                      </div>
                      <input class="textbox" required type="text" name="name">
                      <div class="label1">
                        CHOOSE A USERNAME
                      </div>
                      <input class="textbox" required type="text" name="username">
                      
                      <div class="label1">
                        EMAIL
                      </div>
                      <input class="textbox" required type="email" name="email">
                      <div class="label1">
                        CHOOSE A PASSWORD
                      </div>
                      <input class="textbox" required type="password" name="password">
                    </div>
                      <div class="label1">
                        Role
                        <select name="role"  class="textbox">
                        <option value="admin">admin</option>
                        <option value="author">author</option>
                        
                    </select>
                    </div> 
                    <div>
                        <button type="submit" class="btn btn-big">Add User</button>
                    </div>

                </form>
			
			</center>

			</div>
		</div>

		<!-- // Admin content -->
	</div>


		<!-- // page wrapper -->

		

	<!--jQuery-->
	<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.4.1/jquery.min.js" integrity="sha256-CSXorXvZcTkaix6Yvo6HppcZGetbYMGWSFlBw8HfCJo=" crossorigin="anonymous">
	</script>

    <!--ckedtor-->

	<script src="https://cdn.ckeditor.com/ckeditor5/17.0.0/classic/ckeditor.js"></script>  

	<!--Customer script-->
	<script src="../../js/scripts.js">

	</script>
</body>
  
</html>