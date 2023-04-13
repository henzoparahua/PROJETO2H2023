package main;

import javax.swing.JOptionPane;


public class Main {

    public static void main(String[] args) {
        
        /*
        String x = JOptionPane.showInputDialog(null,"digite seu nome");
        String y = JOptionPane.showInputDialog(null,"digite a nota do primeiro bimestre");
        double nota1 = Double.parseDouble(y);
        String z = JOptionPane.showInputDialog(null,"digite a nota do segundo bimestre");
        double nota2 = Double.parseDouble(z);
        String a = JOptionPane.showInputDialog(null,"digite a nota do terceiro bimestre");
        double nota3 = Double.parseDouble(a);
        double b  = (nota1 + nota2 + nota3)/3;
       
        
        JOptionPane.showMessageDialog(null, "o aluno "+ x + "\n teve como média: " + String.format("%.2f",b) );
*/
    
        
        
        
         String x = JOptionPane.showInputDialog(null,"digite seu peso");
          double peso = Double.parseDouble(x);
         String y = JOptionPane.showInputDialog(null,"digite sua altura");
          double altura = Double.parseDouble(y);
          
         double z = peso / (altura * altura);
         
         if (z<18.5){
             JOptionPane.showMessageDialog(null, "Você esta abaixo do peso");
    }else if(z<24.9){
            JOptionPane.showMessageDialog(null, "Você esta no peso normal");
    }else if(z<29.9){
            JOptionPane.showMessageDialog(null, "Você esta em sobrepeso");
    }else if(z<34.9){
            JOptionPane.showMessageDialog(null, "Você esta com obesidade leve");
    }else if(z<39.9){
            JOptionPane.showMessageDialog(null, "Você esta com obesidade moderada");
    }else{
            JOptionPane.showMessageDialog(null, "Você esta com obesidade mórbida");
    }


    }
    }
