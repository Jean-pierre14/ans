<?php

	$user = $_POST['user'];
	$dates = $_POST['dates'];
	$descriptions = $_POST['descriptions'];
	$title = $_POST['title'];
	$phone = $_POST['phone'];
	$link = $_POST['link'];
	$email = $_POST['email'];
	$Myimage = $_FILES['image'];

			//Data base connectio;
//	$conn = new mysqli('localhost','root','','web_fat_db');
	$conn =new PDO("mysql:host=localhost;dbname=web_fat_db","root","");



					if(isset($_FILES['image']))
					{
						$dir="uploads/";
						$file=$dir.basename($_FILES['image']['name']);
						if(!file_exists($_FILES['image']['name']))
						{
							if(move_uploaded_file($_FILES['image']['tmp_name'], $file))
							{
								$sql = $conn->query("INSERT INTO blogs_transports(user,dates,descriptions,title,phone,link,email,image) VALUES ('".$user."','".$dates."', '".$descriptions."', '".$title."','".$phone."','".$link."','".$email."','".$file."') ");
								if($sql)
								{
									header("location:http://localhost/project/login/maps/transports/blog_transports/index_transports.php");
									
								}else{echo("could not register");}
							}else{
								echo "file not uploaded !";
							}
						}else{echo"file exists = 0";}
					}




		// $stmt = $conn->prepare("INSERT INTO blogs_hotels(user,dates,descriptions,title,phone,link,email) VALUES(?,?,?,?,?,?,?)");
		// $stmt->bind_param("sssssss",$user,$dates,$descriptions,$title,$phone,$link,$email);
		// $stmt->execute();
		// 	echo "registation successfully ... ";
		// $stmt->close();
		// $conn->close();

?>
