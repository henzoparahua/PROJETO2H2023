<?php

    class contas {

        var $numAge;
        var $numConta;
        var $nome;
        var $saldo;

        function ExibeDados(){
            print 'Idade: '.$this->numAge . "<br>";

            print 'Conta: '.$this->numConta . "<br>";
           
            print 'Nome: '.$this->nome . "<br>";

            print 'Saldo: '.$this->saldo . "<br>";
        }


    }


?>