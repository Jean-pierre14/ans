 <?php
 require '../_header.php';
     // if (isset($_POST['submit'])) {
     //  // print_r($_POST);

  


     // //  echo $username ."<br>";
     // //  echo $email ."<br>";
     // // echo $phone ."<br>";
     // // echo $lname ."<br>";
     // // echo $fname ."<br>";
     // // echo $password ."<br>";
     // // echo $passwordconf ."<br>";
     // //  echo $passwordh ."<br>";


     // $check = $bdd->prepare('SELECT id FROM business WHERE business_name = :name OR business_email= :mail OR businnes_telephone=:phone ');
     //      $check->execute(array(
     //      'name' => $name,
     //      'mail' => $email,
     //      'phone'=> $phone
     //    ));
     //      $checkr=$check->fetch();
     //    if($checkr){
     //      echo "Business name or Email already exists, Try to use another one else";
     //    }
     //    else {
     //       $req = $bdd->prepare('INSERT INTO business(business_name,business_email,business_telephone,business_type,business_location,id_admin,business_datec)VALUES(:name,:email,:telephone,:type,:location,:id_admin,now())');
     //       $req->execute(array(
     //        'name' =>$name,
     //        'email' => $email,
     //        'type' => $type,
     //        'id_admin' => $id_admin,
     //        'location' => $location,
     //        'telephone' => $phone

     //       ));
     //        // print_r($_POST);
        
     //      if($req) {
     //          echo "Registered successfully";
     //      }
     //      else{
     //        echo "Failed to register";
     //      }

     //  }
     // }


     // nnnnn


if (isset($_POST['name']) AND !empty($_POST['name'])) {
  
  if (isset($_POST['email']) AND !empty($_POST['email'])) {
    if (isset($_POST['phone']) AND !empty($_POST['phone'])) {
              if (isset($_POST['type']) AND !empty($_POST['type'])) {
         
                
    $name=$_POST['name'];
      $email=$_POST['email'];
      $phone=$_POST['phone'];
      $type=$_POST['type'];
      $id_admin= $_SESSION['user']['id'];
      $location=0;



 function imgup($DB,$user)
{
      $name=$_POST['name'];
      $email=$_POST['email'];
      $phone=$_POST['phone'];
      $type=$_POST['type'];
      $id_admin= $_SESSION['user']['id'];
      $location=0;
  $url_img="cover_".basename($_FILES['img']['name']);


$verif_img=getimagesize($_FILES['img']['tmp_name']);

  if (isset($_FILES['img']) AND $_FILES['img']['error']== 0){
if ($_FILES['img']['size'] <= 9993090999){

$infosfichier = pathinfo($_FILES['img']['name']);
$extension_upload = $infosfichier['extension'];
$extensions_autorisees = array('jpg', 'jpeg', 'gif','png','JPG','JPEG','GIF','PNG');
// if (in_array($extension_upload,$extensions_autorisees)){
  if ($verif_img AND $verif_img[2] < 4){
    // if (!file_exists("../cover")) {
    //     mkdir("../cover",0777);
    

    // }

if(move_uploaded_file($_FILES['img']['tmp_name'],'../images/'.$url_img)){



$business=$DB->insertv('INSERT INTO business(business_name,business_email,business_telephone,business_type,business_location,id_admin,url_img,business_datec)VALUES(:name,:email,:telephone,:type,:location,:id_admin,:url_img,now())',array(

'name' =>$name,
'email' => $email,
'type' => $type,
'id_admin' => $id_admin,
'location' => $location,
'telephone' => $phone,
'url_img' => $url_img
));
if ($business) {
  
$user->buscon($id_admin);
  header('location:../admin/');
  // echo "ok";
return true;

}else{
        echo "ejjer";
      }

}


      }

      else{

          unlink($_FILES['img']['tmp_name']);
          unset($_FILES['img']);



      }
    }
  }
}


$verif_bus=$DB->query('SELECT id FROM business WHERE business_name = :name OR business_email= :mail OR business_telephone=:phone ',array(
          'name' => $name,
          'mail' => $email,
          'phone'=> $phone
        ));

$ver=$verif_bus=$DB->query('SELECT id FROM business WHERE id_admin = :id_admin ',array(
          'id_admin' => $id_admin,
         
        ));

if (!$ver) {

if (!$verif_bus) {
  

$up=imgup($DB,$user);

}else{
  echo '<h1>Business name or Email already exists, Try to use another one </h1><br>
  <a href="index.php">Retour</a>


  ';
}
}else{
  echo '<h1>vous avez déjà un Business </h1><br>
  <a href="index.php">Retour</a>


  ';
}

// var_dump($_POST);
// var_dump($_SESSION);
// var_dump($_FILES);




      }
      else{
        echo "eer";
      }

      
    }else{
        echo "eedr";
      }
  }
  else{
        echo "eedr";
      }
}
else{
        echo "eerk";
      }

// var_dump($_POST);
// var_dump($_SESSION);
// var_dump($_FILES);

  
    
       ?>