package main;

import java.util.Scanner;

public class Main {

    public static void main(String[] args) {
       Scanner grava = new Scanner(System.in);
       int val, pont=0;
      
       String nome;
       System.out.println("Digite o seu nome: ");
       nome = grava.next();
       System.out.println("Bem vindo, "+nome+" isso é um quiz sobre a série de The Last Of Us: \n"
               + "Responda as seguintes perguntas de um a três: ");
       
       System.out.println("Quantos tipos de infectados existem?");
       System.out.println("1. 6\n2. 3\n3. 4" );
       val = grava.nextInt();
       if(val == 3){
       System.out.println("resposta certa");
       pont++;
       } else if(val>3){
       System.out.println("resposta invalida"); 
       }else{
       System.out.println("resposta errada\nA resposta certa era n°3");
       }
       
       System.out.println("Quem é a lider dos vagalumes?");
       System.out.println("1. Marlene\n2. Vanessa \n3. Abby" );
       val = grava.nextInt();
       if(val == 1){
       System.out.println("resposta certa");
       pont++;
       } else if(val>3){
       System.out.println("resposta invalida"); 
       }else{
       System.out.println("resposta errada\nA resposta certa era n°1");
       }
       
       System.out.println("Quem é a filha do Joel?");
       System.out.println("1. Tess\n2. Sarah\n3. Ellie" );
       val = grava.nextInt();
       if(val == 2){
       System.out.println("resposta certa");
       pont++;
       } else if(val>3){
       System.out.println("resposta invalida"); 
       }else{
       System.out.println("resposta errada\nA resposta certa era n°2");
       }
       
       System.out.println("Oque causou a infecção da série?");
       System.out.println("1. Virus\n2. Fungo\n3. Bactéria" );
       val = grava.nextInt();
       if(val == 2){
       System.out.println("resposta certa");
       pont++;
       } else if(val>3){
       System.out.println("resposta invalida"); 
       }else{
       System.out.println("resposta errada\nA resposta certa era n°2");
       }

       System.out.println("Qual o infectado mais perigoso?");
       System.out.println("1. Estalador\n2. Rei dos ratos\n3. Baiacu" );
       val = grava.nextInt();
       if(val == 3){
       System.out.println("resposta certa");
       pont++;
       } else if(val>3){
       System.out.println("resposta invalida"); 
       }else{
       System.out.println("resposta errada\nA resposta certa era n°3");
       }
       
       System.out.println("Qual o objetivo inicial do Joel?");
       System.out.println("1. Levar a Ellie na base dos vagalumes\n2. Passear pelo mundo com a Ellie"
               + "\n3. Matar os vagalumes para proteger a Ellie" );
       val = grava.nextInt();
       if(val == 1){
       System.out.println("resposta certa");
       pont++;
       } else if(val>3){
       System.out.println("resposta invalida"); 
       }else{
       System.out.println("resposta errada\nA resposta certa era n°1 ");
       }
       
       System.out.println("Em que ano começou a infecção?");
       System.out.println("1. 2000\n2. 2013\n3. 1988" );
       val = grava.nextInt();
       if(val == 2){
       System.out.println("resposta certa");
       pont++;
       } else if(val>3){
       System.out.println("resposta invalida"); 
       }else{
       System.out.println("resposta errada\nA resposta certa era n°2 ");
       }
       
       System.out.println("Quem matou a Tess?");
       System.out.println("1. Infectados\n2. Fedra\n3. Vagalumes" );
       val = grava.nextInt();
       if(val == 1){
       System.out.println("resposta certa");
       pont++;
       } else if(val>3){
       System.out.println("resposta invalida"); 
       }else{
       System.out.println("resposta errada\nA resposta certa era n°1 ");
       }
       
       System.out.println("Qual era a melhor amiga da Ellie?");
       System.out.println("1. Abby\n2. Marta\n3. Riley" );
       val = grava.nextInt();
       if(val == 3){
       System.out.println("resposta certa");
       pont++;
       } else if(val>3){
       System.out.println("resposta invalida"); 
       }else{
       System.out.println("resposta errada\nA resposta certa era n°3 ");
       }
       
       System.out.println("Quem é a criança proucurada pela resistencia que no final é mordido?");
       System.out.println("1. Tina\n2. Henry\n3. Sam" );
       val = grava.nextInt();
       if(val == 3){
       System.out.println("resposta certa");
       pont++;
       } else if(val>3){
       System.out.println("resposta invalida"); 
       }else{
       System.out.println("resposta errada\nA resposta certa era n°3 ");
       }
       
       System.out.println("Sua pontuação foi: "+pont);
       if(pont <= 4){
          System.out.println("Parabens, "+nome+", você não manja nada!");
       }else if (pont <= 8){
          System.out.println("Parabens, "+nome+", você é bom, mas precisa melhorar...");

       }else if (pont == 9){
          System.out.println("Parabens, "+nome+", foi quase...");

       }else{
          System.out.println("Parabens, "+nome+", você é o cara!");
       }
       System.out.println("Fim do Quiz, espero que tenha gostado!");
    }
    
    
    
}
