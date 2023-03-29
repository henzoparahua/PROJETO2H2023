<?php 
	$ano =  date("Y");

	function exibir(){
		GLOBAL $ano;
	//	STATIC 

		$ano++;
		return $ano;
	}
	echo "<br> Ano: ".$ano;
	echo "<br> Ano: ".exibir();
	echo "<br> Ano: ".exibir();
	echo "<br> Ano: ".$ano;

 ?>
