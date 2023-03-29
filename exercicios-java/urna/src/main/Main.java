/**
 * HENZO POSSEBON AYRES RM22706
 * HENRIQUE SILVA BARBOSA RM22687
 */

package main;

import java.util.Scanner;

public class Main {


    public static void main(String[] args){
            
        Scanner grava = new Scanner(System.in);
        int cand = 0, zepamonha = 0, romarbola = 0, tonhaogaz = 0;
        
        // SENHA = 1234 
        int senha = 1234;
        int opt = 0;
        int resultado;
        
        
        while(opt != 2){
            System.out.println("Digite seu nome: ");
        String nome = grava.next();
            System.out.println("Olá "+nome+", seja bem vindo! Selecione uma das opções \n"
                    + "[1] Abrir votação \n"+"[2] Totalizar e finalizar votação \n"+"[3] Zerar votos da urna");
            opt = grava.nextInt();
            switch (opt){
                case 1:
                    System.out.println("Abrindo votação...\n"+"Selecione um dos candidatos digitando seu numero correspondente.\n"
                    +"[1] Zé da Pamonha\n"+"[2] Romar da Bola\n"+"[3] Tonhão do Gaz");
                    cand = grava.nextInt();
                    switch (cand){
                        case 1:
                            System.out.println("Você votou no Zé da Pamonha!");
                            System.out.println("\nRetornando ao menu...\n");

                            zepamonha++;
                            break;
                        case 2:
                            System.out.println("Você votou no Romar da Bola!");
                            System.out.println("\nRetornando ao menu...\n");

                            romarbola++;
                            break;
                        case 3:
                            System.out.println("Você votou no Tonhão do Gaz!");
                            System.out.println("\nRetornando ao menu...\n");

                            break;
                        default:
                            System.out.println("Candidato não existente");
                            break;
                    }break;
                    case 2:
                    System.out.println("Você escolheu a opção de totalizar e finalizar votação.\n"
                +"Por motivos de segurança, pedimos para que digite a senha.");
                int senha1 = grava.nextInt();
                if (senha1 == senha){
                    System.out.println("Senha correta! \n");   
                    System.out.println("Zé da Pamonha tem "+zepamonha+" votos.");
                    System.out.println("Romar da Bola tem "+romarbola+" votos.");
                    System.out.println("Tonhão do Gaz tem "+tonhaogaz+" votos.");
                    resultado = zepamonha+romarbola+tonhaogaz;
                    System.out.println("O Total de votos é: "+resultado);
                        
                } else{
                    System.out.println("Senha incorreta. Retornando ao menu");
                    opt = 0;
           }break;
                    case 3:
                        System.out.println("Você escolheu a opção de zerar urna.\n"
                        +"Por motivos de segurança, pedimos para que você digite a senha.");
                        senha1 = grava.nextInt();
                        if (senha1 == senha){
                        System.out.println("Zerando os dados da urna...\nPor favor, aguarde...");
                        zepamonha = 0;
                        romarbola = 0;
                        tonhaogaz = 0;     
                        resultado = 0;
                        }else{
                            System.out.println("Senha incorreta. Retornando ao menu principal.");
                        }break;
                    default:
                        System.out.println("Valor Invalido");
                        break;
            }
                   
        }
        System.out.println("Desligando urna...");
            }
        
}