package main;

import javax.swing.JOptionPane;

public class Main {


    public static void main(String[] args) {
        
    /** 1° REGRA DA ORIENTAÇÃO A OBJETOS: 
     * MAIN NAO PODE TER VARIAVEL OU QUALQUER OUTRA COISA.
     * ELA APENAS EXECUTA O ARQUIVO
     * 
     * nome_GUI - View -- aparencia
     * nome_DAO - Model -- funcionalidade
     * nome_DB  - Control -- banco de dados
     */
        Model.Mensagem_DAO.mostra();
        Model.Mensagem_DAO.mostra2();
        
        JOptionPane.showMessageDialog(null, Model.Mensagem_DAO.teste );

    }
    
}
