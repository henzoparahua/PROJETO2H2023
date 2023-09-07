<?php

    include_once 'Pessoa.php';
    include_once 'Conta.php';

    $carlos = new Pessoa(10, "Carlos da Silva", 1.94, 25,  "10131243", "Ensino Funhdamental", 504.50);
    echo "Manipulação do objeto {$carlos->nome}: <br>";
    echo "<br>";
    echo "{$carlos->nome} é formado em: {$carlos->escolaridade}<br>";
    echo "{$carlos->nome} possui {$carlos->idade} anos de idade <br>";
    
    $conta_carlos = new Conta(4321, "CC.1234.56", "10/09/20", $carlos, 9238, 382, 94);

    echo "<br>";

    echo "Manipulando a conta de: {$conta_carlos->titular->nome}:<br>";
    echo "O saldo atual é R\${$conta_carlos->obtersaldo()}<br>";

    $conta_carlos->depositar(20);
    echo "O saldo atual é R\${$conta_carlos->obtersaldo()}<br>";
    
    $conta_carlos->retirar(10);
    echo "O saldo atual é R\${$conta_carlos->obtersaldo()}<br>";




?>