<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title></title>
	<link rel="stylesheet" type="text/css" href="style.css">
	<script type="text/javascript">
		
		function exibirResultado (){
		const resultado = document.getElementById("resultado");
		resultado.style.display = "block";
		return false;
	}
	</script>
</head>
<body>
	
	<div id="formul"> 
	<img src="times.png">

	 <form action="0605.php" method="get"  >
	 	
	 	<div class="p1">
	 	<input type="radio" name="voto" ><label>Palmeiras</label><br/>
	 	<input type="radio" name="voto" ><label>Corinthians</label><br/>
	 	<input type="radio" name="voto" ><label>São Paulo</label><br/>
	 	<input type="radio" name="voto" ><label>Santos</label><br/>
	 	</div>
	 	<div class="p2">
	 	<input type="submit" name="btn" class="inp1" onclick ="return exibirResultado();">
	 	</div>

	 </form>

	</div>
	<div id="resultado">
		<p style="text-align: center;">

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
}	echo $msg;
}	
	 ?>


</p>


	</div>
</body>
</html>