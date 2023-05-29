<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>Bloqueando paginas por sessão</title>
	<?php 
	session_start();

	IF($_SESSION['nome'] != "master"){

		session_destroy();
		header("location:bloqsessao.php");
	}
	
	 ?>

</head>
<body>


<b>Pagina autorizada</b>

</body>
</html>