<?php 
	$nome = 'Armandino';

	function exibir(){
		$nome = 'Josefina';
		echo "O valor dentro da variavel da função ".$nome;
	}
	exibir();
	echo("<br> Valor da variavel fora da função ".$nome);
 ?>