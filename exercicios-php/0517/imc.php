    <?php
    $alturaVal = $_POST['altura'];
    $pesoVal = $_POST['peso'];

        if(isset($alturaVal, $pesoVal)){
        if(is_numeric($alturaVal) && is_numeric($pesoVal)){
          


        $imc = $pesoVal/($alturaVal*$alturaVal);

        if ($imc <= 18.5) {
            echo 'Peso abaixo do normal <br/>';
        } else if($imc <= 24.9){
            echo 'Peso normal <br/>';
        } else if($imc <= 29.9){
            echo 'Sobrepeso <br/>';
        } else if($imc <= 34.9) {
            echo 'Obesidade de grau I <br/>';
        } else if($imc <= 39.9) {
            echo 'Obesidade de grau II <br/>';
        } else if($imc >= 40){
            echo 'Obesidade de grau III <br/>';
        } else{
            echo 'Valor invalido.';
        }
    }
    printf('%.1f', $imc);
    } else {
        echo 'Valores Invalidos.';
    }
    ?>
