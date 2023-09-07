<?php 

	# CARREGAR AS CLASSES
	
	include_once 'Pessoa.php';
	include_once 'Conta.php';

	# CRIAÇÃO DO OBJETO CARLOS

	$conta_carlos = new conta();
	$conta_carlos->agencia = 6677;
	$conta_carlos->Codigo = "CC.12 34. 56";
	$conta_carlos->dataDeCriacao = "10/07/02";
	$conta_carlos->titular = $carlos;
	$conta_carlos->senha = 9876;
	$conta_carlos->saldo = 567.89;
	$conta_carlos->cancelada = false;


	echo "\n";
	echo "Manipulando a conta de: {$conta_carlos->titular->Nome} \n";
	echo "O saldo atual é R\$ {$conta_carlos->ObterSaldo()} \n";

	$conta_carlos->Depositar(20);
	echo "O saldo atual é R\${$conta_carlos->ObterSaldo()} \n";

	$carlos->Retirar(10);
	echo "O saldo atual é R\${$conta_carlos->ObterSaldo()} \n";
 ?>