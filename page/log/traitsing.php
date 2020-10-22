<?php 

 require '../_header.php';

?>
<!DOCTYPE html>
<html lang="en" dir="ltr">
  <head>
    <meta charset="utf-8">
    <title></title>
   <link rel="stylesheet" type="text/css" href="st.css">
  </head>
  <body>
    <div class="result">
      <?php
     if (isset($_POST['submit'])) {
      // print_r($_POST);
      $username=htmlspecialchars($_POST['username']);
      $email=htmlspecialchars($_POST['email']);
      $phone=htmlspecialchars($_POST['phone']);
      $lname=htmlspecialchars($_POST['lname']);=""
      $fname=htmlspecialchars($_POST['fname']);
      $password=htmlspecialchars($_POST['password']);
      $passwordconf=htmlspecialchars($_POST['passwordconf']);
      $passwordh=sha1($password);
      $confirmation=0;
      $role=0;
      $image=0;
      $location=0;
   

      include 'connexion.php';
     $check = $DB->query('SELECT id FROM users WHERE username = :username OR email= :mail OR telephone=:phone ',array(
          'username' => $username,
          'mail' => $email,
          'phone'=> $phone
        ));
        if($check){
          echo "Username or Email already exists, Try to use another one else".'  <div class="welcome">
    
         <h1>
         <a href="signup.php">Retour</a>
 
       </div>';
        }
        else {
           $req =$DB->insertv('INSERT INTO users(fname,lname,username,secret,email,telephone,location,confirmation,role,image,datedec)VALUES(:fname,:lname,:username,:secret,:email,:telephone,:location,:confirmation,:role,:image,now())',array(

            'fname' =>$fname,
            'lname' => $lname,
            'username' => $username,
            'secret' => $passwordh,
            'email' => $email,
            'confirmation' => $confirmation,
            'role' => $role,
            'image' => $image,
            'location' => $location,
            'telephone' => $phone

           ));
        
          if($req) {


            $rv=$DB->query('SELECT id FROM users WHERE username=:username AND secret=:secret',array(
              'username'=>$username,
              'secret'=>$passwordh



            ));

            if ($rv) {
             $user->con($rv[0]->id);
          
              echo "Registered successfully".'<br>  <div class="welcome">
    
         <h1>
         <a href="home.php">Clic to start</a>
 
       </div>';
     }
          }
          else{
            echo "Failed to register";
          }

      }
     }
  
    
       ?>
    </div>
  

  </body>
</html>
