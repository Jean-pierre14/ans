<?php 
require '../../db.class.php';
// require 'sess.php';
$DB=new DB();
require 'user.class.php';
$user=new USER($DB);
// if ($_SESSION['user']==array()) {
// 	header("location:../log/login.php");
// }
// if ($_SESSION['business']==array()) {
// 	header("location:../log/login.php");
// }



 ?>