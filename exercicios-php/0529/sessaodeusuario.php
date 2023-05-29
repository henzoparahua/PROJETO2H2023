<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title></title>
</head>
<body>
	<?php 

	session_start();

	$_SESSION['nome'] = "Henrique";


	 ?>
	 <h3>Sessao de Usuario</h3>
	 Bem vindo, Jão <?php echo $_SESSION['nome']; 


	 // session_unset()
	 //session_destroy();?>

	 <BR/>Bem vindo, Jão <?php echo $_SESSION['nome']; ?>	

	 <BR/><BR/>Sessão de usuario<BR/>

	 sid desta sessao é <?php  echo session_id(); ?>

	 




</body>
</html>