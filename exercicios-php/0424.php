
<?php

$emp = array(
	 array(1,"José",4000),
	 array(2,"Maria",5000),
	 array(3,"Joao",3000)
	);

echo "<pre>";
print_r($emp);
echo "</pre>";

echo "<pre>";
var_dump($emp);
echo "</pre>";

$func = array(
array(1,"Henzo",1500.00),
array(2,"Luiza",2000.00),
array(3,"Sophia",5433.00));

echo "<br/>";
echo "<pre>";
print_r($func);
echo "</pre>";

for($i =0; $i<3; $i++){
	for($j = 0; $j<3; $j++){
		$m[$i][$j] = 10;
	}
}
	for($i =0; $i<3; $i++){
		echo "<br/>";
	for($j = 0; $j<3; $j++){
		echo $m[$i][$j]. "  ";
	}
			
}		
echo "<br/>";
echo "<br/>";

for($i =0; $i<3; $i++){
	for($j =0; $j<3; $j++){
		for($n =0; $n<3; $n++){
			echo $m[$i][$j]. "  ";

		}	echo "<br/>";

	}	echo "<br/>";

}

$arr = array('v' => 'Vermelho', 'v'=> 'Verde', 'a'=>
	array('azul', 'marrom','preto'));

echo json_encode($arr);

?>