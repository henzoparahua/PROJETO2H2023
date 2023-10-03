<?php

    # carrega classe
    include_once '1002.php';

    $pedro = new Funcionario();
    $pedro->setSalario(934);
    echo 'Salario: R$ '.$pedro->getSalario();

?>