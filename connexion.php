<?php 

try
{
$conn =new PDO("mysql:host=localhost;dbname=web_fat_db","root","");
}
catch(Exception $e)
{
die(' Erreur : '.$e->getMessage());
}

?>