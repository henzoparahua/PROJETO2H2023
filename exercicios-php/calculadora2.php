<?php 

$valor1 = 1000;
$valor2 = 50.7454;
$op=3;


function somaValor($num1,$num2){
    echo "<br/>".($num1+$num2);
}

function subtracaoValor($num1,$num2){
    echo "<br/>".($num1-$num2);
}

function divisaoValor($num1,$num2){
    if ($num2 == 0 || $num1 == 0){
    	echo "<br>NaN";
    }else    {
   		echo "<br/>".($num1/$num2);

    }
}

function multiplicacaoValor($num1,$num2){
    echo "<br/>".($num1*$num2);
}
echo "Digite dois números:<br>
Escolha uma função:<br>
------------------------------------<br>
[1] Soma<br>
[2] Subtração<br>
[3] Multiplicação<br>
[4] Divisão<br>
------------------------------------<br>
";
switch ($op) {
	case '1':
		echo "Você escolheu soma:<br>". $valor1 ." + ". $valor2;
		echo "<br>------------------------------------";
		somaValor($valor1, $valor2);

		break;

		case '2':
		echo "Você escolheu subtração:<br>". $valor1 ." - ". $valor2;
		echo "<br>------------------------------------";		
		subtracaoValor($valor1, $valor2);

		break;

		case '3':
		echo "Você escolheu multiplicação:<br>". $valor1 ." x ". $valor2;
		echo "<br>------------------------------------";
		multiplicacaoValor($valor1, $valor2);

		break;

		case '4':
		echo "Você escolheu divisão:<br>". $valor1 ." / ". $valor2;
		echo "<br>------------------------------------";
		divisaoValor($valor1, $valor2);

		break;
	
	default:
		 echo "Número inválido";
		break;
}


?>