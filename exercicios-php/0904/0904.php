<?php 

	# CARREGAR AS CLASSES
	
	include_once 'Pessoa.php';
	include_once 'Conta.php';

	# CRIAÇÃO DO OBJETO CARLOS

	$carlos = new Pessoa();
	$carlos->Codigo = 10;
	$carlos->Nome = "Carlos da Silva";
	$carlos->altura = 1.85;
	$carlos->idade = 25;
	$carlos->Nascimento = '10/04/1976';
	$carlos->escolaridade = "Ensino fundamental";


	echo "Manipulando objeto $calor->Nome : \n";
	echo "{$carlos->Nome} é formador em : {$carlos->escolaridade} \n";

	$carlos->Formar('Técnico em eletricidade');
	echo "{$carlos->Nome} é formado em {$carlos->escolaridade} \n";
	echo "{$carlos->Nome} possui {$carlos->idade} anos \n";

	$carlos->Envelhecer(1);
	echo "{$carlos->nome} possui {$carlos->idade}anos \n";
 ?>