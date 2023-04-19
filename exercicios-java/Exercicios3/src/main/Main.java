package main;

import java.util.Scanner;

public class Main {

    
     
    public static void main(String[] args) {
/**
        // FOR 
        // DIVIDIDO EM 3 INSTANCIAS
        int cont;
        for(cont = 1; cont < 10; cont++){
            System.out.println(cont);
        }
*/        
        // EX1
/**
    int cont;
    
        for(cont = 101; cont < 200; cont=cont+2){
        if(cont % 2 != 0)   {
        System.out.println(cont);
        }
    }
**/
/**
        // EX 2
        int cont;
        for(cont = 100; cont > 0; cont=cont-1){
        System.out.println(cont);
      }
*/
        // EX 3
/**        
        int num1 = 0, num2 = 0, num3 = 0, num4 = 0, resultado = 0;
        Scanner grava = new Scanner(System.in);
        
        System.out.println("Digite as notas do primeiro trimestre: ");
        num1 = grava.nextInt();
        System.out.println("Digite as notas do segundo trimestre: ");
        num2 = grava.nextInt();
        System.out.println("Digite as notas do terceiro trimestre: ");
        num3 = grava.nextInt();
        System.out.println("Digite as notas do quarto trimestre: ");
        num4 = grava.nextInt();
        
        resultado = (num1+num2+num3+num4)/4;
        
        System.out.println("O resultado da média do aluno foi de: "+resultado); 
*/

      // EX 4
      int cont1 = 0, cont;
      Scanner grava = new Scanner(System.in);
      
      System.out.println("Quantas vezes deseja testar o For?");
      cont1 = grava.nextInt();
      
        for(cont = 1; cont <= cont1; cont++){
          System.out.println("Isso é um teste "+cont);
      }
    }
}
