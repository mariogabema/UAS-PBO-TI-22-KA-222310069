package tugas.pbo.search.product;

import javax.swing.*;
import java.awt.*;

public class App {
    public class gui {
        private JTextField keyword;
        private JButton button;
        private JTable hasil;

        public static void main(String[] args) {
            EventQueue.invokeLater(new Runnable() {
                @Override
                public void run() {
                   try{
                       App frame = new App();
                   }catch (Exception e){
                       e.printStackTrace();
                   }
                }
            });
        }

        public void FullTextSearchGUI() {

            // Membuat panel
            JPanel panel = new JPanel(new BorderLayout());

            // Membuat komponen GUI
            keyword = new JTextField();
            button = new JButton("Search");
            hasil = new JTable();

            // Menambahkan komponen ke panel
            panel.add(keyword, BorderLayout.PAGE_START);
            panel.add(button, BorderLayout.LINE_END);
            panel.add(new JScrollPane(hasil), BorderLayout.CENTER);


        }
    }
}
