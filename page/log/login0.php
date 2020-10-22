<?php  
require '../_header.php';
if (!$_SESSION['user']==array()) {
    header('location:home.php');
}
if (!$_SESSION['business']==array()) {
    header('location:home.php');
}


?>         
<!-- nouveu -->
<!DOCTYPE html>
<html lang="en" dir="ltr">
  <head>
    <meta charset="utf-8">
    <title>Login</title>
    <link rel="stylesheet" href="login.css">
    <link rel="shortcut icon" type="imege/x-icon" href="../../img/1587195324100.png">
  </head>
  <body>
  
    <form action="" method="post">
      <div class="main">
        <div class="sidebar">
          <div class="side1">
            <a href="#">
             <!-- <img src="ressources/map.png" alt="mapmond" width="170px" height="40px"> -->
            </a>
            <span class="label1"><h1>Inscrivez-vous et accueillez</br> vos premiers clients dès aujourd'hui</h1></span>
            <a href="#" ><span class="start_coding">AFRICA NEXT SEASON</span></a>
          </div>
          <div class="side2">
            <div class="side21">
              <span>EXPLORE</span>
                <a href="#"><div class="ul">
                  <!-- BLA BLA BLA -->
                </div></a>
                <a href="#"><div class="ul">
                  <!-- BLA BLA BLA -->
                </div></a>
                <a href="#"><div class="ul">
                  <!-- BLA BLA BLA -->
                </div></a>
            </div>
            <div class="side21">
              <span style="color: #47CF73">DESCOVER</span>
                <a href="#"><div class="ul">
                  <!-- BLA BLA BLA -->
                </div></a>
                <a href="#">
                  <div class="ul">
                    FOCUS<span style="margin-left:0px;padding:2px;background-color:#FFDD40;color: black;border-radius: 2px;">Pro</span>
                  </div>
                </a>
                <a href="#">
                  <div class="ul">
                  Challenges
                </div></a>
            </div>
            <div class="side21">
              <span style="color: #0EBEFF">COMPANIES</span>
                <a href="#"><div class="ul">
                  Hire Talent
                </div></a>
                <a href="#"><div class="ul">
                  Create a Team
                </div></a>
                <a href="#"><div class="ul">
                  Advertise
                </div></a>
            </div>
            <div class="side3">
              <a href="#"><div class="">
                Newsletter
              </div></a>
              <a href="#"><div class="">
                Blogs
              </div></a>
              <a href="#"><div class="">
                Docs & Support
              </div></a>
            </div>
            <div class="side4">
              <a href="#"><img src="ressources/my_logo.jpg" alt="Mute_logo" width="210px" height="100px"></a>
            </div>
          </div>
          <div class="side5">
            <a href="#"><div class="">
              Bring your team together with Mute, the collaboration hub
            </div></a>
          </div>
        </div>
        <div class="log">
          <div class="log1">
           <!-- <img src="ressources/codepenlogo2.png" alt="codepenlogo2" width="175px" height="30px"> -->
            <div class="label2">
              Log In!
          
            <?php

            $kl=md5("king31");
            
            if (isset($_GET['kl'])) {
              if ( $_GET['kl']==$kl) {
           
               $msg="Regect!";
               
                echo '<div class="lab">'.$msg.'  </div>';

              }
              else{
                header("location:login.php");

              }

            

             }
             else{
            

             } 
            ?>
            <?php
            
              include("./connexion.php");
              $username = '';
              $pass = '';
              $errors = array();
              
              if(isset($_POST['login'])){

                $username = $_POST['username'];
                $pass = $_POST['password'];

                if(empty($username)){
                  array_push($errors, "Username is empty");
                }
                if(empty($pass)){
                  array_push($errors, "Password is empty");
                }
                if(count($errors) > 0){
                  foreach($errors as $error){
                    echo '<p>'.$error.'</p>';
                  }
                }else{
                  
                  $password = sha1($pass);
                  $login = mysqli_query($con, "SELECT * FROM users WHERE username = '$username' AND `secret` = '$password'");
                  
                  if(mysqli_num_rows($login) == 1){

                    // session_start();
                    
                    $logins = mysqli_fetch_array($login);
                    $_SESSION['user'] = $logins;

                    if($logins['role'] == 1){
                      
                      header("location: ../admin_s/");
                    
                    } elseif($logins['role'] == 3){
                      
                      header("location: ../admin/");

                    }else{
                      
                      echo '<p class="alert">You are not recognozed</p>';
                    
                    }
                    
                  } else{
                    echo "<p class='alert'>You are not alowed </p>";
                  }
                }
              }
            ?>
            <div class="label3">
              USERNAME OR EMAIL
            </div>
            <input class="textbox" type="text" name="username" placeholder="Username or email" value="<?php echo $username;?>">
            <div class="label3">
              PASSWORD
            </div>
            <input class="textbox" placeholder="Password *****" type="password" name="password" value="<?php echo $pass;?>">
            <input type="submit" name="login" value="Log In">

           
          <!--  <a href="#"><div class="label4">Forgot Password?</div></a> -->
          </div>
        
          <div class="log3">
            <div class="label6">
            
              Need an account? <a class="label4" href="signup.php">Sign up now!</a>
            </div>
          </div>
        </div>
  
        </div>
      </div>
    </form>
  </body>
</html>
