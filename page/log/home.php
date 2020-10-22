<?php  require '../_header.php';

if ($_SESSION['user']==array()) {
  header("location:../log/login.php");
}


 ?>
<!DOCTYPE html>
<html lang="en" dir="ltr">
  <head>
    <meta charset="utf-8">
    <title>wait the validation</title>
    <link rel="shortcut icon" type="imege/x-icon" href="../../img/1587195324100.png">
    <style>
    body{padding: 200px;background-color: black;}
      *{color: white;font-family: "segoe ui";}
      .result{font-size: 50px;text-align: center;font-weight: bold;}
      .welcome{font-size: 20px;text-align: center;}
    </style>
  </head>
  <body>
    <div class="result">
      <?php
      $user_id= $_SESSION['user']['id'];

    $verif=$DB->query('SELECT * FROM users WHERE id=:id',array(
      'id'=>$user_id

    ));
    if ($verif) {
      $confirmation=$verif[0]->confirmation;
      if ($confirmation==0) {
      ?>
      <h3>Your account has been successfully created.</h3>
      <h6>please wait for validation by the administrator</h6>
      <h6>or call us on +243997392797</h6>
      <a href="../../index.php"> <h3 style="font-size:50px;text-align:center;color:white; font-family: Cooper;color: #DDC472;text-decoration:underline">go to home page</h3></a>
      
    <!--   <form>
  
        <span>entrer le code d'activation</span><input type="text" name="code" style="color: #000">
        <input type="submit" name="sub" value="confirmer" style="color: #000">

      </form>
 -->



    <?php
      }elseif($confirmation==1){
      
          $bus=$DB->query('SELECT * FROM business WHERE id_admin=:id  ',array(
'id' => $user_id
));if ($bus) {

// var_dump($bus);
  $user->buscon($user_id);
  header('location:../admin/');


}else{

echo '<a href="../add_business/index.php">ajouter votre busness?';

}
}else{
  echo "errcon";
}
      // var_dump($_SESSION);
}else{
  echo "err";
}

       ?>
      
    </div>
  </body>
</html>
