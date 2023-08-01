<?php

// Criando uma conexão com banco de dados

$con = mysqli_connect("localhost","root","", "db_exemplo");

// Checando a conexão

if(mysqli_connect_errno()){
    echo "Erro ao conectar a base de dados: ".
    mysqli_connect_erro();
}else{
    echo "Conexão aberta";

    //Criando base de dados

    $sql = "CREATE DATABASE db_2HPW2";
    if(mysqli_query($con, $sql)){
        echo "</br>Base de dados criada com sucesso!!";
    }else{
        echo"</br>Erro: ".mysqli_erro($con);
    }

    mysqli_close($con);
    echo "<br/>conexão fechada";
}


?>