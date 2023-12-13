
package Pannel;
import javax.swing.*;
import java.util.ArrayList;
import DAO.NhanVien_DAO;
import DAO.Sach_DAO;
import Entity.Sach;
import ServiceUser.CellSach;
import ServiceUser.ScrollBarCustom;
import java.awt.Color;
import java.awt.Dimension;
import java.io.IOException;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.swing.event.DocumentEvent;
import javax.swing.event.DocumentListener;

/**
 *
 * @author FPTSHOP
 */
public class pnlTraCuuSach extends javax.swing.JPanel {

    
    private int count = 0;
    private Sach_DAO sach_DAO;
    private NhanVien_DAO nhanVien_DAO;
    private static final int PANEL_HEIGHT = 230;
    private Sach sach;

    /**
     * Creates new form Sach
     */
    public pnlTraCuuSach() throws IOException {

        initComponents();
       
        
        danhSachTheoMa(txtTimKiemTheoMa);
    }

    /**
     * This method is called from within the constructor to initialize the form.
     * WARNING: Do NOT modify this code. The content of this method is always
     * regenerated by the Form Editor.
     */
    @SuppressWarnings("unchecked")
    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:initComponents
    private void initComponents() {

        jPanel5 = new javax.swing.JPanel();
        lblAnhSachTimKiem = new javax.swing.JLabel();
        jLabel5 = new javax.swing.JLabel();
        jLabel6 = new javax.swing.JLabel();
        jLabel7 = new javax.swing.JLabel();
        jLabel8 = new javax.swing.JLabel();
        jLabel9 = new javax.swing.JLabel();
        jLabel10 = new javax.swing.JLabel();
        jLabel11 = new javax.swing.JLabel();
        jButton1 = new javax.swing.JButton();
        jButton2 = new javax.swing.JButton();
        jPanel1 = new javax.swing.JPanel();
        jPanel2 = new javax.swing.JPanel();
        lblTimKiem = new javax.swing.JLabel();
        txtTimKiemTheoMa = new javax.swing.JTextField();
        jPanel3 = new javax.swing.JPanel();
        jButton3 = new javax.swing.JButton();

        jLabel5.setText("Tên sách");

        jLabel6.setText("Tác giả");

        jLabel7.setText("Thể loại");

        jLabel8.setText("Nhà xuất bản");

        jLabel9.setText("Tình trạng");

        jLabel10.setText("Giá bán");

        jLabel11.setText("Số lượng tồn");

        jButton1.setText("Sửa");
        jButton1.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButton1ActionPerformed(evt);
            }
        });

        jButton2.setText("Ngừng kinh doanh");
        jButton2.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButton2ActionPerformed(evt);
            }
        });

        javax.swing.GroupLayout jPanel5Layout = new javax.swing.GroupLayout(jPanel5);
        jPanel5.setLayout(jPanel5Layout);
        jPanel5Layout.setHorizontalGroup(
            jPanel5Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, jPanel5Layout.createSequentialGroup()
                .addGap(14, 14, 14)
                .addComponent(lblAnhSachTimKiem, javax.swing.GroupLayout.PREFERRED_SIZE, 177, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addGroup(jPanel5Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addComponent(jLabel8)
                    .addComponent(jLabel5)
                    .addComponent(jLabel6)
                    .addComponent(jLabel7))
                .addGap(237, 237, 237)
                .addGroup(jPanel5Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addGroup(jPanel5Layout.createSequentialGroup()
                        .addGap(1, 1, 1)
                        .addComponent(jButton1, javax.swing.GroupLayout.PREFERRED_SIZE, 128, javax.swing.GroupLayout.PREFERRED_SIZE)
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                        .addComponent(jButton2))
                    .addComponent(jLabel9)
                    .addComponent(jLabel11)
                    .addComponent(jLabel10))
                .addContainerGap(128, Short.MAX_VALUE))
        );
        jPanel5Layout.setVerticalGroup(
            jPanel5Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel5Layout.createSequentialGroup()
                .addGap(15, 15, 15)
                .addGroup(jPanel5Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addGroup(jPanel5Layout.createSequentialGroup()
                        .addGroup(jPanel5Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                            .addGroup(jPanel5Layout.createSequentialGroup()
                                .addComponent(jLabel5)
                                .addGap(18, 18, 18)
                                .addComponent(jLabel6)
                                .addGap(18, 18, 18)
                                .addComponent(jLabel7))
                            .addGroup(jPanel5Layout.createSequentialGroup()
                                .addComponent(jLabel11)
                                .addGap(18, 18, 18)
                                .addComponent(jLabel10)
                                .addGap(18, 18, 18)
                                .addComponent(jLabel9)))
                        .addGap(18, 18, 18)
                        .addGroup(jPanel5Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                            .addComponent(jLabel8)
                            .addComponent(jButton2)
                            .addComponent(jButton1)))
                    .addComponent(lblAnhSachTimKiem, javax.swing.GroupLayout.PREFERRED_SIZE, 122, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addContainerGap(34, Short.MAX_VALUE))
        );

        setPreferredSize(new java.awt.Dimension(1500, 500));

        jPanel1.setPreferredSize(new java.awt.Dimension(1320, 500));

        jPanel2.setBorder(javax.swing.BorderFactory.createTitledBorder("Tra cứu"));

        lblTimKiem.setText("Tìm kiếm");

        javax.swing.GroupLayout jPanel2Layout = new javax.swing.GroupLayout(jPanel2);
        jPanel2.setLayout(jPanel2Layout);
        jPanel2Layout.setHorizontalGroup(
            jPanel2Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel2Layout.createSequentialGroup()
                .addGap(100, 100, 100)
                .addComponent(txtTimKiemTheoMa, javax.swing.GroupLayout.PREFERRED_SIZE, 429, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addContainerGap(310, Short.MAX_VALUE))
            .addGroup(jPanel2Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                .addGroup(jPanel2Layout.createSequentialGroup()
                    .addContainerGap()
                    .addComponent(lblTimKiem)
                    .addContainerGap(784, Short.MAX_VALUE)))
        );
        jPanel2Layout.setVerticalGroup(
            jPanel2Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel2Layout.createSequentialGroup()
                .addComponent(txtTimKiemTheoMa, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addContainerGap(23, Short.MAX_VALUE))
            .addGroup(jPanel2Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                .addGroup(jPanel2Layout.createSequentialGroup()
                    .addContainerGap()
                    .addComponent(lblTimKiem)
                    .addContainerGap(23, Short.MAX_VALUE)))
        );

        jPanel3.setBorder(javax.swing.BorderFactory.createTitledBorder("Kết quả tra cứu"));
        jPanel3.setLayout(new javax.swing.BoxLayout(jPanel3, javax.swing.BoxLayout.Y_AXIS));

        jButton3.setText("Toàn bộ sách");
        jButton3.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButton3ActionPerformed(evt);
            }
        });

        javax.swing.GroupLayout jPanel1Layout = new javax.swing.GroupLayout(jPanel1);
        jPanel1.setLayout(jPanel1Layout);
        jPanel1Layout.setHorizontalGroup(
            jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel1Layout.createSequentialGroup()
                .addContainerGap()
                .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addComponent(jPanel3, javax.swing.GroupLayout.DEFAULT_SIZE, 1482, Short.MAX_VALUE)
                    .addGroup(jPanel1Layout.createSequentialGroup()
                        .addComponent(jPanel2, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                        .addGap(0, 0, Short.MAX_VALUE)))
                .addContainerGap())
            .addGroup(jPanel1Layout.createSequentialGroup()
                .addGap(591, 591, 591)
                .addComponent(jButton3)
                .addContainerGap(javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
        );
        jPanel1Layout.setVerticalGroup(
            jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel1Layout.createSequentialGroup()
                .addGap(24, 24, 24)
                .addComponent(jPanel2, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addGap(16, 16, 16)
                .addComponent(jButton3)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)
                .addComponent(jPanel3, javax.swing.GroupLayout.DEFAULT_SIZE, 481, Short.MAX_VALUE)
                .addContainerGap())
        );

        javax.swing.GroupLayout layout = new javax.swing.GroupLayout(this);
        this.setLayout(layout);
        layout.setHorizontalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(layout.createSequentialGroup()
                .addComponent(jPanel1, javax.swing.GroupLayout.DEFAULT_SIZE, 1494, Short.MAX_VALUE)
                .addContainerGap())
        );
        layout.setVerticalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addComponent(jPanel1, javax.swing.GroupLayout.Alignment.TRAILING, javax.swing.GroupLayout.DEFAULT_SIZE, 630, Short.MAX_VALUE)
        );
    }// </editor-fold>//GEN-END:initComponents

 private JPanel createPanels() throws IOException {
        JPanel containerPanel = new JPanel();
        containerPanel.setLayout(new BoxLayout(containerPanel, BoxLayout.Y_AXIS));	
        sach_DAO = new Sach_DAO();
        nhanVien_DAO = new NhanVien_DAO();
        ArrayList<Sach> dssps = sach_DAO.layDanhSanPhamSach();
        for (Sach sach : dssps) {
        	
	          
            try {
                JPanel newPanel = new CellSach(sach);
                newPanel.setPreferredSize(new Dimension(newPanel.getWidth(), PANEL_HEIGHT));
                newPanel.setMaximumSize(new Dimension(Integer.MAX_VALUE, PANEL_HEIGHT)); // Ensure the panel doesn't expand horizontally
                //  newPanel.add(new JLabel("Panel " + (++count)));

                containerPanel.add(newPanel);
            }
            // ArrayList<NhanVien> dsnv=nhanVien_DAO.layDanhSachNhanVien();
            catch (SQLException ex) {
                Logger.getLogger(pnlTraCuuSach.class.getName()).log(Level.SEVERE, null, ex);
            }
		}
        return containerPanel;
    }
 private JPanel createPanelsTheoMa(String maSach) throws IOException {
        JPanel containerPanel = new JPanel();
        containerPanel.removeAll();
        containerPanel.setLayout(new BoxLayout(containerPanel, BoxLayout.Y_AXIS));	
        sach_DAO = new Sach_DAO();
        nhanVien_DAO = new NhanVien_DAO();
        ArrayList<Sach> dssps = sach_DAO.layDanhSachTheoMaSach(maSach);
        for (Sach sach : dssps) {     
            try {
                JPanel newPanel = new CellSach(sach);
                newPanel.setPreferredSize(new Dimension(newPanel.getWidth(), PANEL_HEIGHT));
                newPanel.setMaximumSize(new Dimension(Integer.MAX_VALUE, PANEL_HEIGHT)); // Ensure the panel doesn't expand horizontally
                //  newPanel.add(new JLabel("Panel " + (++count)));
                containerPanel.add(newPanel);
            }
            // ArrayList<NhanVien> dsnv=nhanVien_DAO.layDanhSachNhanVien();
            catch (SQLException ex) {
                Logger.getLogger(pnlTraCuuSach.class.getName()).log(Level.SEVERE, null, ex);
            }
		}
        return containerPanel;
    }
    public void danhSachTheoMa(JTextField txt){
        txt.getDocument().addDocumentListener(new DocumentListener() {
            @Override
            public void insertUpdate(DocumentEvent e) {
                try {
                    jPanel3.removeAll();
                    JPanel panel;
                    panel = new JPanel();
                    JPanel newPanel =  createPanelsTheoMa(txt.getText());
                    panel.add(newPanel);
                    panel.revalidate();
                    panel.repaint();
                    panel.setLayout(new BoxLayout(panel, BoxLayout.Y_AXIS));
                    JScrollPane scrollPane = new JScrollPane(panel);
                    scrollPane.setVerticalScrollBarPolicy(JScrollPane.VERTICAL_SCROLLBAR_ALWAYS);
                    scrollPane.getViewport().setPreferredSize(new Dimension(250, 400));
                    addTableStyle(scrollPane);
                    jPanel3.add(scrollPane);
                } catch (IOException ex) {
                    Logger.getLogger(pnlTraCuuSach.class.getName()).log(Level.SEVERE, null, ex);
                }
            }

            @Override
            public void removeUpdate(DocumentEvent e) {
                try {
                    jPanel3.removeAll();
                    JPanel panel;
                    panel = new JPanel();
                    JPanel newPanel =  createPanelsTheoMa(txt.getText());
                    panel.add(newPanel);
                    panel.revalidate();
                    panel.repaint();
                    panel.setLayout(new BoxLayout(panel, BoxLayout.Y_AXIS));
                    JScrollPane scrollPane = new JScrollPane(panel);
                    scrollPane.setVerticalScrollBarPolicy(JScrollPane.VERTICAL_SCROLLBAR_ALWAYS);
                    scrollPane.getViewport().setPreferredSize(new Dimension(250, 400));
                    addTableStyle(scrollPane);
                    jPanel3.add(scrollPane);
                } catch (IOException ex) {
                    Logger.getLogger(pnlTraCuuSach.class.getName()).log(Level.SEVERE, null, ex);
                }
            }

            @Override
            public void changedUpdate(DocumentEvent e) {
            }
        });
    }
    public void addTableStyle(JScrollPane scroll) {
        scroll.getViewport().setOpaque(false);
        scroll.setViewportBorder(null); 
        scroll.setBorder(null);
        scroll.setVerticalScrollBarPolicy(JScrollPane.VERTICAL_SCROLLBAR_ALWAYS);
        scroll.setVerticalScrollBar(new ScrollBarCustom());
        JPanel panel = new JPanel();
        panel.setBackground(new Color(60, 60, 60));
        scroll.setCorner(JScrollPane.UPPER_RIGHT_CORNER, panel);
    }
    private void jButton1ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButton1ActionPerformed
        // TODO add your handling code here:
    }//GEN-LAST:event_jButton1ActionPerformed

    private void jButton2ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButton2ActionPerformed
        // TODO add your handling code here:
    }//GEN-LAST:event_jButton2ActionPerformed

    private void jButton3ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButton3ActionPerformed
        // TODO add your handling code here:
         jPanel3.removeAll();
        JPanel panel;
        panel = new JPanel();
        JPanel newPanel;
        
        try {
            newPanel = createPanels();
              panel.add(newPanel);
        } catch (IOException ex) {
            Logger.getLogger(pnlTraCuuSach.class.getName()).log(Level.SEVERE, null, ex);
        }
      
        panel.revalidate();
        panel.repaint();
        
        panel.setLayout(new BoxLayout(panel, BoxLayout.Y_AXIS));
        

        JScrollPane scrollPane = new JScrollPane(panel);
          
        scrollPane.setVerticalScrollBarPolicy(scrollPane.VERTICAL_SCROLLBAR_ALWAYS);
        scrollPane.getViewport().setPreferredSize(new Dimension(250, 400));
        addTableStyle(scrollPane);
          jPanel3.add(scrollPane);
        
    }//GEN-LAST:event_jButton3ActionPerformed


    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JButton jButton1;
    private javax.swing.JButton jButton2;
    private javax.swing.JButton jButton3;
    private javax.swing.JLabel jLabel10;
    private javax.swing.JLabel jLabel11;
    private javax.swing.JLabel jLabel5;
    private javax.swing.JLabel jLabel6;
    private javax.swing.JLabel jLabel7;
    private javax.swing.JLabel jLabel8;
    private javax.swing.JLabel jLabel9;
    private javax.swing.JPanel jPanel1;
    private javax.swing.JPanel jPanel2;
    private javax.swing.JPanel jPanel3;
    private javax.swing.JPanel jPanel5;
    private javax.swing.JLabel lblAnhSachTimKiem;
    private javax.swing.JLabel lblTimKiem;
    private javax.swing.JTextField txtTimKiemTheoMa;
    // End of variables declaration//GEN-END:variables
}
