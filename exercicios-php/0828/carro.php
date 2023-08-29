<?php
    
    class carro {
    
    var $cor;
    var $ano;
    var $numeroPortas;
    var $peso;
    var $a = 0;

    function Acelerar(){
        $a = $a++;
    }

    function InformarCor(){
        print 'Cor: '.$this->cor . "<br>";

    }
    function Printa(){
        print 'Aceleração: '.$this->a . "<br>";

    }


}

?>