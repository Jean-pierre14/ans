<?php 
include '../_header.php';
	if(!isset($_SESSION['role']) or ($_SESSION['role']!=3))
	{
		header('location: ../login.php');
		exit();
	}
?>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="vieuport" content="width=device-width, initiate-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="../../sniper.css">
    <!--font awesame-->
    <link rel="stylesheet" href="../../bootstrap/bootstrap.min.css">

    <link href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet"
        integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN" crossorigin="anonymous">

    <!--customer styling-->

    <link rel="stylesheet" href="../my_css/blog_style.css">

    <!--customer Admin styling-->

    <link rel="stylesheet" href="../my_css/admin.css">

    <!--google font-->
    <link href="https://fonts.googleapis.com/css?family=Candal|Lora&display=swap" rel="stylesheet">

    <title>Admin/<?php print $_SESSION['username'];?></title>
</head>

<body>
    
    <nav class="navbar navbar-expand-md bg-dark navbar-dark">
        
        <a class="navbar-brand" href="#"><span>Africa</span>New season</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#collapsibleNavbar">
          <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="collapsibleNavbar">
          <ul class="navbar-nav ml-auto">
            <li class="nav-item">
              <a class="nav-link active" href="#">Home</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="../log/logout.php">Logout</a>
            </li>
          </ul>
        </div>
      </nav>

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
        <div class="container-fluid py-5">
            <div class="admin-content">
                <div class="button-group">
                    <a href="create_post.php" class="btn btn-primary">Add post</a>
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
                    'cat'=>$_SESSION['id']
    
    
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
        </div>

        <!-- // Admin content -->
    </div>


    <!-- // page wrapper -->



    <script src="../../bootstrap/jquery.min.js"></script>
    <script src="../../bootstrap/bootstrap.min.css"></script>
    <script src="../../bootstrap/popper.min.js"></script>


    <!--Customer script-->

    <script src="../js/scripts.js">

    </script>
</body>

</html>