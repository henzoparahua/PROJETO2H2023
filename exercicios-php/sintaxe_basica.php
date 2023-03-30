<?php
$dolar = 5;
$bo = 3;
function somaValor($num1,$num2){
    echo "<br/>".($num1+$num2);
}

function dobro($n){
    $d = $n * 2;
    echo "<br/> O dobro de ".$n. " = ".$d;
}
function dobro1($n){
    // $d = $n*2;
    // return $d;
    return ($n*2);
}
$x = 8;
echo "<br/> O dobro de ".$x." = ".dobro1($x);


dobro(6);
somaValor($dolar,$bo);
?>
