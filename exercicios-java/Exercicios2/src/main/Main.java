package main;
    
import java.util.Scanner;

public class Main {

    public static void main(String[] args) {
       /* Scanner grava = new Scanner(System.in);
        int velmax, vel, dif;
        System.out.println("VELOCIDADE PERMITIDA NA VIA");
        velmax = grava.nextInt();
        System.out.println("VELOCIDADE QUE O CARRO ESTA NO MOMENTO");
        vel = grava.nextInt();
        dif = vel - velmax;
        if (dif <=0){
        System.out.println("O piloto esta numa velocidade normal");}
        else if (dif<=10){
            System.out.println("MULTA DE 80,00");} 
        else if (dif<=39){
            System.out.println("MULTA DE 120,00");} 
        else{
            System.out.println("MULTA DE 200,00");} */
       Scanner grava = new Scanner(System.in);
      
       double val, valalt, valalt1, valtrans, valimp, valref;
       
       System.out.println("Digite o quanto você ganha mensalmente: ");
       val = grava.nextDouble();
       
       valtrans = val*0.02;
       val = val - valtrans;
       valref = val*0.06;
       val = val - valref;
       valimp = val*0.07;
       val = val - valimp;
       
       if (val >= 1200){
           valalt = val*0.15;
           val = val - valalt;
       } else{
           System.out.println("Não houve desconto.");
       }
       
       System.out.format("Vale Transporte: %.2f \n",valtrans);
       System.out.format("Vale Alimentação: %.2f \n",valref);   
       System.out.format("Salario Liquido: %.2f \n",val);
    }
}
