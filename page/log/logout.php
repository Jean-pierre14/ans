<?php
 require '../_header.php';
session_destroy();
// Suppression des cookies de connexion automatique

setcookie('login', '');
setcookie('pass_hache', '');
header('location:login.php')
?>