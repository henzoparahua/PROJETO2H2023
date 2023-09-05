<?php 

	class Pessoa
	{
		var $codigo;
		var $nome;
		var $altura;
		var $idade;
		var $nascimento;
		var $escolaridade;
		var $salario;

		function crescer($centimetros){
			if ($centimetros > 0) {
				$this->altura += $centimetros;
			}
		}

		function formar($titulacao){
			$this->escolaridade = $titulacao;
		}


		function envelhecer($anos){
			if ($anos > 0) {
				$this->idade += $anos;
			}
		}
	}
 ?>