<?php  
 include 'connexion.php';
    if (isset($_GET['rk']) AND isset($_GET['un'])) {
     if (!empty($_GET['rk']) AND !empty($_GET['un'])) {
      $id=htmlspecialchars($_GET['rk']);
      $username=htmlspecialchars($_GET['un']);
       
 $req = $bdd->prepare('SELECT * FROM users WHERE username = :username AND id = :id');
          $req->execute(array(
          'username' => $username,
          'id' => $id));
          $resultat = $req->fetch();
          if (!$resultat){ 
         header("location:../../log/login.php");
         $_SESSION = array();
          
          }
          else{
            session_start();
    
       $_SESSION['user']['id'] = $resultat['id'];
       $_SESSION['user']['username'] = $resultat['username']; 
       $_SESSION['user']['lname'] = $resultat['lname'];
       $_SESSION['user']['fname'] = $resultat['fname']; 
       $_SESSION['user']['telephone'] = $resultat['telephone']; 
       $_SESSION['user']['email'] = $resultat['email'];  
       $_SESSION['user']['datedec'] = $resultat['datedec']; 

       
// print_r($_SESSION['user']);


     }
 }

     else{

      header("location:../../log/login.php");
      $_SESSION = array();

     }

}
    else{
      header("location:../../log/login.php");
      $_SESSION = array();

    }
 
              




?>