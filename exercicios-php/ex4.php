<?php 
	$val1 = 11;
	$val2 = 22;
	$val3 = 33;

	if ($val1 > $val2 && $val1 > $val3) {
		echo $val1."-";
		if ($val2 > $val3) {
			echo $val2."-";
			echo $val3;
		}
		else{
			echo $val3."-";
			echo $val2;
		}
	} else if ($val2 > $val1 && $val2 > $val3) {
		echo $val2."-";
		if ($val3>$val1){
			echo $val3."-";
			echo $val1;
		}else{
			echo $val1."-";
			echo $val3;
		}
	}  
	else {
		echo $val3."-";
	
	if ($val2> $val1){
		echo $val2."-";
		echo $val1;
		}else{
			echo $val1."-";
			echo $val2;
		}
	}

 ?>
