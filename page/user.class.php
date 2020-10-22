<?php 
// require '_header.php';
class USER{
	private $DB;

	public function __construct($DB){

		if (!isset($_SESSION)) {
	session_start();
			}
		if (!isset($_SESSION['user'])) {

			$_SESSION['user']=array();
			
		}
			if (!isset($_SESSION['business'])) {

			$_SESSION['business']=array();
			
		}

$this->DB=$DB;

}


public function con($user_id){



	$_SESSION['user'][$user_id]= $user_id;	
	$connexion=$this->DB->query('SELECT * FROM users WHERE id=:id  ',array(
'id' => $user_id
));
foreach ($connexion as $user ) {

	$_SESSION['user']['id']= $user->id;
	$_SESSION['user']['lname']= $user->lname;
	$_SESSION['user']['fname']= $user->fname;
	$_SESSION['user']['telephone']= $user->telephone;
	$_SESSION['user']['email']= $user->email;
	$_SESSION['user']['username']= $user->username;
	$_SESSION['user']['role']= $user->role;



}






return true;


}
public function buscon($user_id){
		$bus=$this->DB->query('SELECT * FROM business WHERE id_admin=:id  ',array(
'id' => $user_id
));
	if ($bus) {
		
	
foreach ($bus as $business ) {

	$_SESSION['business']['id']= $business->id;
	$_SESSION['business']['bname']= $business->business_name;
	$_SESSION['business']['btype']= $business->business_type;
	$_SESSION['business']['btelephone']= $business->business_telephone;
	$_SESSION['business']['bemail']= $business->business_email;
	// $_SESSION['business']['username']= $business->username;



}
}
	
return true;


}
 public function decon($user_id){
	unset($_SESSION['user']);
	session_destroy();

}


}
 





 ?>