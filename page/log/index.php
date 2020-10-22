<?php  
require '../_header.php';
if (!$_SESSION['user']==array()) {
    header('location:home.php');
}
if (!$_SESSION['business']==array()) {
    header('location:home.php');
}


?>  