<?php

    $con = mysqli_connect("localhost","root","","3h_db");

    if(mysqli_connect_errno()){
        echo"Falha ao conectar com mysql: ".mysqli_connect_erro();
    }
    $sql1 = "INSERT INTO tbPessoa VALUES('Ana','Souza',20)";
    mysqli_query($con, $sql1);

    $sql2 = "INSERT INTO tbPessoa (Nome, Sobrenome, Idade)VALUES('Carlos', 'Costa', 21)";
    mysqli_query($con, $sql2);
    

    $sql = "SELECT * FROM tbPessoa";

    $resultado = mysqli_query($con, $sql);

    echo "<h2>Pessoas</h2>";

    while($pessoa = mysqli_fetch_array($resultado)){

        echo $pessoa['nome']. " " .$pessoa['sobrenome']. "-" .$pessoa['idade']."anos <br><br>";
    }

    mysqli_close($con);
?>