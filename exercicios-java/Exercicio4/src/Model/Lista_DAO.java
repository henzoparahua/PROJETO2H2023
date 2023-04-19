package Model;

import javax.swing.JOptionPane;

public class Lista_DAO {
    
    public static void ex1(){
        String y = "";
        int neg=0;
        double resultado=0;
        double [] num = new double [10];
                
        for(int i = 0; i < 10; i++){
        y = JOptionPane.showInputDialog(null, "Digite um numero " + (i+1));
        num[i] = Double.parseDouble(y);
        
        if(num[i]<0){
            neg++;
        }else{
            resultado = resultado+num[i];
        }
        }
        JOptionPane.showMessageDialog(null, "total de numeros negativos são: "+neg+"\nA soma dos numeros positivos é: "+resultado);
}
    public static void ex2(){
     int [] num = new int [5];
     String y = "";
     for(int i = 0; i < 5; i++){
        y = JOptionPane.showInputDialog(null, "Digite um numero " + (i+1));
        num[i] = Integer.parseInt(y);
        }
     for(int i = 0; i < 5; i++){
        if(num[i]>=0){
            JOptionPane.showMessageDialog(null,num[i]);
        }
        }
        }
}

