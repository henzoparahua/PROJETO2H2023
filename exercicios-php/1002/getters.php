<?php
    include_once '1002.php';

    $codigo = $_POST["codigo"];

    $nome = $_POST["name"];

    $nascimento = $_POST["nascimento"];

    $salario = $_POST["salario"];


    $i = new Funcionario();
    $i->setCodigo($codigo);
    $i->setNome($nome);
    $i->setNascimento($nascimento);
    $i->setSalario($salario);
    
    echo 'Salario: R$ '.$i->getSalario().'</br>';
    echo 'Codigo: '.$i->getCodigo().'</br>';
    echo 'Nome: '.$i->getNome().'</br>';
    echo 'Data de Nascimento: '.$i->getNascimento();


?>