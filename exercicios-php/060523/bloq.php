<?php 

if(isset($_GET['voto'])){
	$voto = $_GET['voto'];
	
	if ($voto == true){
			if (!isset($_COOKIE['voto'])){
		setcookie("voto", $voto, time()+3600*24*31);
		$msg = "Obrigado por votar";
	} else {
		$msg = "Você ja votou uma vez";
	}
} else{
	$msg = "falso";
	// header("location:0605.php");
}

	echo $msg;
}
	 ?>