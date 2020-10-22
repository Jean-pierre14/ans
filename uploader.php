<?php
    $conn = new PDO('mysql:host=localhost;dbname=web_fat_db','root','');
    if($conn)
    {
    	if(isset($_POST['post_now']))
    	{
    		if(!empty($_POST['post_title']) && !empty($_POST['heure']) && !empty($_POST['max']))
    		{
    			if(isset($_FILES['photo']))
    			{
    				$dir="uploads/";
    				$file=$dir.basename($_FILES['photo']['name']);
    				if(!file_exists($_FILES['photo']['name']))
    				{
    					if(move_uploaded_file($_FILES['photo']['tmp_name'], $file))
    					{
    						$sql=$conn->query("INSERT INTO cours (nom_cours,enseignant,domaine,heure,max,image)
    							VALUES ('".$_POST['post_title']."','".$_POST['enseignant']."','".$_POST['domaine']."','".$_POST['heure']."','".$_POST['max']."','".$file."')");
    						if($sql)
    						{
    							header("Location:cours.php");
    						}else{header("Location:cours.php?error=not-performed");}
    					}
    				}
    			}
    		}
    	}
    } 






    






?>