
package Model;

import java.util.Random;
import javax.swing.JOptionPane;


public class Matriz_DAO {
    
    
    public static void matriz1 (){
        String total = "";
        int val[][] = new int[2][2];
        for(int L=0 ; L<2 ; L++){
            for(int c=0 ; c<2 ; c++){
            
                String x = JOptionPane.showInputDialog(null, "digite o valor da linha " + (L+1) +" e coluna " + (c+1));
                val[L][c]= Integer.parseInt(x);
                
                total = total +val[L][c] + " | ";
        }
             total = total + "\n";
        }
        
        JOptionPane.showMessageDialog(null, total);
    }
        public static void matriz2(){
    
           Random gera = new Random();
           String total = "";
        int val[][] = new int[6][6];
        for(int L=0 ; L<6 ; L++){
            for(int c=0 ; c<6 ; c++){
            
                val[L][c]= gera.nextInt(1000);
                
                total = total +val[L][c] + " | ";
        }
             total = total + "\n";
        }
        
        JOptionPane.showMessageDialog(null, total);
           
           
}

    
    
}

