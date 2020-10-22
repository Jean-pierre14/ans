<?php 
include '../_header.php';

if ($_SESSION['user']==array()) {
	header("location:../log/login.php");
}
if ($_SESSION['business']==array()) {
	header("location:../log/login.php");
}





if (isset($_POST['titre']) and !empty($_POST['titre'])) {
	if (isset($_POST['contenue']) and !empty($_POST['contenue'])) {


// 		var_dump($_SESSION['business']['id']);

// var_dump($_POST);
//  var_dump($_FILES);


		 function imgup($DB,$user)
{
		$contenue=htmlspecialchars($_POST['contenue']);
		$contenue=trim($contenue);
	$titre=htmlspecialchars($_POST['titre']);
	$id_bs=$_SESSION['business']['id'];
	$url_img=str_shuffle(basename($_FILES['img']['name'])).basename($_FILES['img']['name']);



$verif_img=getimagesize($_FILES['img']['tmp_name']);

	if (isset($_FILES['img']) AND $_FILES['img']['error']== 0){
if ($_FILES['img']['size'] <= 299999999){

$infosfichier = pathinfo($_FILES['img']['name']);
$extension_upload = $infosfichier['extension'];
$extensions_autorisees = array('jpg', 'jpeg', 'gif','png','JPG','JPEG','GIF','PNG');
// if (in_array($extension_upload,$extensions_autorisees)){
	if ($verif_img AND $verif_img[2] < 4){
if(move_uploaded_file($_FILES['img']['tmp_name'],'../images/'.$url_img)){



$news=$DB->insertv('INSERT INTO news(titre,contenues,id_business,url_img,datepost)VALUES(:titre,:contenue,:id_bs,:url_img,now())',array(

'titre' => $titre,
'contenue' => $contenue,
'id_bs' => $id_bs,
'url_img' => $url_img
));
if ($news) {
	
header("location:index.php");
	echo "ok";
return true;

}

}else{
	echo "erreur 11";
}


			}

			else{

					unlink($_FILES['img']['tmp_name']);
					unset($_FILES['img']);



			}
		}else{
		echo "rri";
	}
	}else{
		echo "rr";
	}
}

$up=imgup($DB,$user);

}

}

?>