<?php

function mensagem(){
     echo"<br/> Minha primeira função.";
}
$num1 = 10;
$num2 = 5;
function somaValor($num1,$num2){
    return ($num1+$num2);
}
mensagem();
somaValor();
?>