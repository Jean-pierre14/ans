 <?php
  // include 'connexion.php';
 require '../_header.php';
if (isset($_POST['username']) AND isset($_POST['password'])) {
  if (!empty($_POST['password']) AND !empty($_POST['username'])) {
   
    $username = htmlspecialchars($_POST['username']);
    $pass_hache = sha1(htmlspecialchars($_POST['password']));
          // Vérification des identifiants
          // $req = $bdd->prepare('SELECT id FROM users WHERE username = :username AND secret = :pass');
          // $req->execute(array(
          // 'username' => $username,
          // 'pass' => $pass_hache));
          
           $resultat = $DB->query('SELECT id,role FROM users WHERE username = :username AND secret = :pass',
           array(
          'username' => $username,
          'pass' => $pass_hache));

          if (!$resultat){ 
            $kl=md5("king31");
            header("location:login.php?kl=".$kl);
          
          }
          else{
            // session_start();

// var_dump($_SESSION['user']);
            if ($resultat[0]->role==0 OR $resultat[0]->role==1) {
            $user->con($resultat[0]->id);
    header('location:home.php');
            }
        elseif ($resultat[0]->role==3) {

    $user->con($resultat[0]->id);
 header('location:../admin_s/');
            }
 
   
              }
            }


          } 



  
            ?>