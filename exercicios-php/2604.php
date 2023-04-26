<?php

	$arr = [1, 2, 3, 4, 5];

	foreach($arr as $value){
		echo $value . ' ';
	}


	$arr = array ('v' => 'Verde', 'e' => 'Verde', 'z' => 'Azul');
		echo "<pre>";
		foreach ($arr as $key => $value) {
			echo $key . "=>" . $value . "\n";
		echo "</pre>";

		}
	echo "<br/>";
		echo "<br/>";

	// Sintaxes Basicas

		// Classificando Arrays


	$nomes = array("MA" => "Maria", "ZE" => "José", "HE" => "Henrique", "HN" => "Henzo");
	$reverso = array_reverse($nomes);

	print_r($nomes);
	echo "<br/>";
	print_r($reverso);

	echo "<br/>";
	sort($nomes);
	print_r($nomes);

		// Funções com String

	$texto = "whatzap web dois ponto zero";
 	

 	//	Tamanho da String
	$tamanho = strlen($texto);
	echo "<br/>".$texto." possui ".$tamanho." caracteres";

	echo "<br/>".strtoupper($texto);
	echo "<br/>".strtolower($texto);
	echo "<br/>".ucfirst($texto);
	echo "<br/>".ucwords($texto);

	// Caracteres a partir da posição 13

	echo "<br/>".substr($texto,13,3);
	echo "<br/>".str_replace("whatzap","dois",$texto);

		// Data

	$dataAtual = date("d/m/y");
	echo "<br/>Hoje é: ".$dataAtual."<br/>";
	$hora = date("h:i:s");
	echo "<br/>Agora são: ".$hora."<br/>";
	$dataHora = date("d/m/y h:i:s");
	echo "<br/>Data e hora: ".$dataHora."<br/>";		
?>