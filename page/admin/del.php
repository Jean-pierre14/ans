 <?php  
 require '../_header.php';
 // var_dump($_GET);

if (isset($_GET['id']) AND !empty($_GET['id'])) {
	

$id=$_GET['id'];


  $bus=$DB->query('SELECT * FROM news WHERE id_n=:id',array(
                'id'=>$id


));   


}
if (file_exists("../images/".$bus[0]->url_img)) {
	

if (unlink("../images/".$bus[0]->url_img)){
	

  $bus=$DB->insertV('DELETE FROM news WHERE id_n=:id',array(
                'id'=>$id


));
header("location:index.php");   
echo "ok";

}else{

echo "error";

}
}else{
	echo "fi";
}



// var_dump($bus[0]);

  ?>

