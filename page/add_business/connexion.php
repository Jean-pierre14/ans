<?php 

try
{
$bdd =new PDO("mysql:host=localhost;dbname=ans_db","root","Script95@os");
}
catch(Exception $e)
{
die(' Erreur : '.$e->getMessage());
}

?>