<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Formulário - IMC</title>
    <link rel="stylesheet" type="text/css" href="style/style.css">
    <script>
    function formatarForms(input, i) {
        var valor = input.value.replace(/\D/g, ''); // Remove caracteres não numéricos
        if (valor.length > i) {
        valor = valor.substring(0, i) + '.' + valor.substring(i); // Insere o ponto após o primeiro dígito
        if (valor.length > input.maxLength) {
        valor = valor.substring(0, input.maxLength); // Limita o valor ao maxlength
        }
        input.value = valor;
        
  }
}
    </script>
</head>
<body>
    <div class="div1">
    <header class="header_imc"><h1>Calculadora IMC</h1></header>
    <form name="imc" action="imc.php" method="post">
        <span class="span_imc">     
            <label for="altura">Altura</label>
            <small>(ex.: 1,86)</small>
            <input type="text" name="altura" maxlength="4" placeholder="Metros" id="altura_input" 
            autocomplete="off" onkeyup="formatarForms(this, 1)" class="input_imc">
        </span><span class="span_imc">
        <label for="peso">Peso</label>
        <small>(ex.: 68.40)</small> 
        <input type="text" name="peso" maxlength="5" placeholder="Quilos" id="peso_input" 
        autocomplete="off" onkeyup="formatarForms(this, 2)" class="input_imc">
        </span> 
        <div class="btn_div">
                <button class="btn_container" type="submit">
                    Enviar
                </button>
                <button class="btn_container" type="submit" onclick="document.imc.reset()">
                    Limpar
                </button>
            </div>
            <?php
            $alturaVal = 0;
            $pesoVal = 0;
            $imc = 0;
            $resultadoIMC = '';
            if (isset($_POST['altura'], $_POST['peso'])) {
            $alturaVal = $_POST['altura'];
            $pesoVal = $_POST['peso'];
    
             if (is_numeric($alturaVal) && is_numeric($pesoVal)) {
                $imc = $pesoVal / ($alturaVal * $alturaVal);
                $resultadoIMC = sprintf('%.1f <br>', $imc);
                
        if ($imc <= 18.5) {
            $resultadoIMC .= 'Peso abaixo do normal';
        } else if ($imc <= 24.9) {
            $resultadoIMC .= 'Peso normal';
        } else if ($imc <= 29.9) {
            $resultadoIMC .= 'Sobrepeso';
        } else if ($imc <= 34.9) {
            $resultadoIMC .= 'Obesidade de grau I';
        } else if ($imc <= 39.9) {
            $resultadoIMC .= 'Obesidade de grau II';
        } else if ($imc >= 40) {
            $resultadoIMC .= 'Obesidade de grau III';
        } else {
            $resultadoIMC = 'Valor inválido.';
        }
    }
}
?>
    </form>

    <div class="echoContainer">
            <?php echo $resultadoIMC?>
</div>
    </div>
</body>
</html>
