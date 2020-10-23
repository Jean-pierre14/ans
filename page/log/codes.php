<?php
session_start();
$username = '';
$fname = '';
$lname = '';
$email = '';
$password = '';
$password2 = '';

include("./connexion.php");

$errors = array();
// Regiter
if(isset($_POST['login'])){

}

// Login

if (isset($_POST['login'])) {

    $username = htmlentities($_POST['username']);
    $password = htmlentities($_POST['password']);

    if ($username and $password) {
        $query = "SELECT * FROM users WHERE ((userName = '$username' OR email = '$username') AND `secret` = md5('$password'))";

        $result = mysqli_query($con, $query);

        if (@mysqli_num_rows($result) == 1) {
            
            $_SESSION = mysqli_fetch_array($result, MYSQLI_ASSOC);
            $_SESSION['role'] = (int) $_SESSION['role'];

            if($_SESSION['role'] === 3){
                header("location: ../admin/");
            }elseif($_SESSION['role'] === 1){
                header("location: ../admin_s/");
            }else{
                echo "<p class='alert alert-danger'>You are not alowed</p><br/><a href='login.php' class='btn btn-link'>try again</a>";
            }
            exit();
            mysqli_free_result($result);
            mysqli_close($con);
        } else {
            echo '<p class="alert alert-danger text-center m-1">The username and the password entered do not match our records.<p><br>';
        }
    } else {
        echo '<p class="alert alert-danger text-center">Please try it again</p>';
    }
    mysqli_close($con);
}

if(isset($_POST['register'])){
    $username = htmlentities($_POST['username']);
    $fname = htmlentities($_POST['fname']);
    $lname = htmlentities($_POST['lname']);
    $email = htmlentities($_POST['email']);
    $password = htmlentities($_POST['password']);
    $password2 = htmlentities($_POST['password2']);
    
    if(empty($username)){array_push($errors, "Username is empty");}
    if(empty($fname)){array_push($errors, "First name is empty");}
    if(empty($lname)){array_push($errors, "Last name is empty");}
    if(empty($email)){array_push($errors, "Email is empty");}
    if(empty($password)){array_push($errors, "Password is empty");}
    if(empty($password2)){array_push($errors, "Confirm Password is empty");}


    if($password != $password2){array_push($errors, "Password are not match");}

    if(count($errors) == 0){
        $pass = md5($password);
        $sql = mysqli_query($con, "INSERT INTO users SET username='$username', fname='$fname', lname='$lname', email='$email', `secret`='$pass'");
        
        if($sql){
            header("Location: login.php");
        }
    }
}