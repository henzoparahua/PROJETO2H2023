<?php

    include_once 'produto.php';

    $valor = new Produto();
    $valor2 = new Produto();

    $valor->Codigo = 411;
    $valor->Descricao="CD THE BEST OF HENRIQUE";
    $valor2->Codigo = 412;
    $valor2->Descricao="CD THE BEST OF HENZO";

    $valor->ImprimeEtiqueta();
    $valor2 ->ImprimeEtiqueta();

    include_once 'carro.php';

    $carro = new carro();

    $carro->Acelerar();

?>