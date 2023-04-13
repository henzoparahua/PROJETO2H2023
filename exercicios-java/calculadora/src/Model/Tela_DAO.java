package Model;

import javax.swing.JOptionPane;

public class Tela_DAO {
    public static void msg(){
          String y = JOptionPane.showInputDialog(null, "Digite um valor");
          Model.Classex_DAO.val1 = Double.parseDouble(y);
          String z = JOptionPane.showInputDialog(null, "Digite um segundo valor");
          Model.Classex_DAO.val2 = Double.parseDouble(z);
          
          String x = JOptionPane.showInputDialog(null,"Escolha uma operação\n1-Soma\n2-Subtração\n3-Multiplicação\n4-Divisão");
          int opt = Integer.parseInt(x);
          switch (opt){
              case 1:
                // Soma
                 Model.Classex_DAO.soma();
                 break;
              case 2:
                // Subtração
                  Model.Classex_DAO.subtracao();
                  break;
              case 3:
                // Multiplicação
                  Model.Classex_DAO.multiplicacao();
                  break;
              case 4:
                // Divisão
                  Model.Classex_DAO.divisao();
                  break;
              default:
                // ERRO
                  JOptionPane.showMessageDialog(null,"Número invalido");
                  break;
                  
          }
          if (opt >= 1 && opt <= 4){
                JOptionPane.showMessageDialog(null, Model.Classex_DAO.resultado);
          }
    }
}
