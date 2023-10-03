<?php
    class Funcionario {
        private $codigo;
        private $nome;
        private $nascimento;
        private $salario;

        function setSalario($salario){
            if (is_numeric($salario)&&($salario > 0)){
                        $this->salario = $salario;
            }
        }
        function getSalario(){
            return $this -> salario;
        }

        function setCodigo($codigo){
            if (is_numeric($codigo)&&($codigo > 0)){
                        $this->codigo = $codigo;
            }
        }
        function getCodigo(){
            return $this -> codigo;
        }



        function setNome($nome){
            if (isset($nome)){
                        $this->nome = $nome;
            }
        }
        function getNome(){
            return $this -> nome;
        }


        function setNascimento($nascimento){
            if (isset($nascimento)){
                        $this->nascimento = $nascimento;
            }
        }
        function getNascimento(){
            return $this -> nascimento;
        }
        
    }


?>