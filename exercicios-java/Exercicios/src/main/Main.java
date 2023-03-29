package main;

import java.util.Scanner;

public class Main {

    public static void main(String[] args) {
        Scanner grava = new Scanner(System.in);
        int val;
        double num, num1;
        /*int idade;
        System.out.println("Digite sua idade: ");
        idade = grava.nextInt( );
        
        if(idade<= 0){System.out.println("Idade invalida");
        }
        else if(idade<=10){
                System.out.println("Categoria-infantil");
                }
        else if(idade<=14){
                System.out.println("Infanto-juvenil");
                }
        else if(idade<=17){
                System.out.println("Pré-adolescente");
                }
        else{System.out.println("adulto");}*/
        
        
        
        
        
        
        long cpf , rg;
        System.out.println("Digite '1' para incluir dados \n"
                + "Digite '2' para alterar dados \n"
                + "Digite '3' para excluir dados \n"
                + "Digite '4' para sair do sistema ");
        val = grava.nextInt();
        
        if (val == 1){ 
            System.out.println("Digite seu CPF: ");
            cpf = grava.nextInt();
            System.out.println("Digite seu RG: ");
            rg = grava.nextInt();}
        else if(val == 2){
            System.out.println("Registro alterado com sucesso");}
        else if(val == 3){
            System.out.println("Registro excluido com sucesso");}
        else if(val == 4){
            System.out.println("Saindo do sistema");}
        else {
            System.out.println("numero invalido");}
         
        /*System.out.println("Selecione uma das três opções abaixo: \n"
        + "1. Digite uma mensagem e receba ela de volta! \n"
        + "2. Digite um numero e receba 10% dele! \n"
        + "3. Sair"
        );
        val = grava.nextInt();
        if (val == 1){
            System.out.println("AOO TREM BAO");
        } else if( val == 2){
            System.out.println("Digite um numero: ");
            num = grava.nextInt();
            num1 = num*0.1;
            System.out.format("10 por cento de "+num+" é %.2f \n",num1);
        } else if(val == 3) {
            System.out.println("Saindo do sistema");
        } else{
            System.out.println("Valor invalido.");
        }*/
    }
}
