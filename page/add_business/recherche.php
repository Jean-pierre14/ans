<?php
	try{
		$bdd = new PDO("mysqli:host=localhost;dbname=mapsdb", "root", "");
		$bdd ->setAttribute(PDO::ATTR_ERRMODE,PDO::ERRMODE_EXCEPTION);
		}
	catch(Exception $e){
	die("Une érreur a été trouvé : " .$e->getMessage());
		}
		$bdd->query("SET NAMES UTF8");
	if (isset($_GET["s"]) AND $_GET["s"] == "Rechercher"){
		$_GET["terme"] = htmlspecialchars($_GET["terme"]); //pour sécuriser le formulaire contre les intrusions html
		$terme = $_GET["terme"];
		$terme = trim($terme); //pour supprimer les espaces dans la requête de l'internaute
		$terme = strip_tags($terme); //pour supprimer les balises html dans la requête
	if (isset($terme)){
		$terme = ucwords($terme);
		$select_terme = $bdd->prepare("SELECT titre, contenu FROM articles WHERE titre LIKE ? OR contenu LIKE ?");
		$select_terme->execute(array("%".$terme."%", "%".$terme."%"));
		}
	else{
		$message = "Vous devez entrer votre requete dans la barre de recherche";
		}
	}
?>
