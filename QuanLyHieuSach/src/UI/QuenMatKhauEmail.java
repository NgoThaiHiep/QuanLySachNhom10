
package UI;

import Entity.NhanVien;
import Entity.TaiKhoan;
import ServiceUser.ModelMessage;
import ServiceUser.ServiceMail;
import DAO.TaiKhoan_DAO;
import java.awt.Component;
import java.awt.Cursor;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.swing.ActionMap;
import javax.swing.InputMap;
import javax.swing.JComponent;


/**
 *
 * @author FPTSHOP
 */
public class QuenMatKhauEmail extends javax.swing.JFrame {
    private javax.swing.JLabel validationLabel;
    private TaiKhoan_DAO taiKhoan_DAO;
    private TaiKhoan tk;
    private NhanVien nv;
    private String code = null;
    private Component frame;
    /**
     * Creates new form QuenMatKhau
     */
    
    public QuenMatKhauEmail() {
        initComponents();
        init();
        lblAnh.setVisible(false);
        
    }
 public void init(){
         
        lblMatKhauMoi.setVisible(false);
        txtMatKhauMoi.setVisible(false);
        btnGuiMaEmail.setVisible(false);
        validationLabel = new javax.swing.JLabel();
        validationLabel.setText("validationLabel");
        taiKhoan_DAO = new TaiKhoan_DAO();
        txtMaXacNhan.setVisible(false);
        lblMaXacNhan.setVisible(false);
        duLieuEmail();
        DuLieuMaXacNhan();
        phimTatXacNhan();
               
        
    }
    /**
     * This method is called from within the constructor to initialize the form.
     * WARNING: Do NOT modify this code. The content of this method is always
     * regenerated by the Form Editor.
     */
    @SuppressWarnings("unchecked")
    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:initComponents
    private void initComponents() {

        bg = new javax.swing.JPanel();
        txtEmail = new javax.swing.JTextField();
        lblEmail = new javax.swing.JLabel();
        txtMaXacNhan = new javax.swing.JTextField();
        lblMaXacNhan = new javax.swing.JLabel();
        lblMatKhauMoi = new javax.swing.JLabel();
        bg1 = new javax.swing.JPanel();
        lblChonPhuongThucXacNhan = new javax.swing.JLabel();
        lblSoDienThoai = new javax.swing.JLabel();
        lblDangNhap = new javax.swing.JLabel();
        btnXacNhan = new javax.swing.JButton();
        jPanel1 = new javax.swing.JPanel();
        btnGuiMaEmail = new javax.swing.JButton();
        lblAnh = new javax.swing.JLabel();
        txtMatKhauMoi = new javax.swing.JPasswordField();

        setDefaultCloseOperation(javax.swing.WindowConstants.EXIT_ON_CLOSE);

        bg.setBackground(new java.awt.Color(255, 204, 204));
        bg.setLayout(new org.netbeans.lib.awtextra.AbsoluteLayout());

        txtEmail.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                txtEmailActionPerformed(evt);
            }
        });
        bg.add(txtEmail, new org.netbeans.lib.awtextra.AbsoluteConstraints(157, 56, 148, -1));

        lblEmail.setText("Email");
        bg.add(lblEmail, new org.netbeans.lib.awtextra.AbsoluteConstraints(50, 59, 89, -1));

        txtMaXacNhan.setEditable(false);
        txtMaXacNhan.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                txtMaXacNhanActionPerformed(evt);
            }
        });
        bg.add(txtMaXacNhan, new org.netbeans.lib.awtextra.AbsoluteConstraints(157, 107, 148, -1));

        lblMaXacNhan.setText("Mã xác nhận");
        bg.add(lblMaXacNhan, new org.netbeans.lib.awtextra.AbsoluteConstraints(50, 110, 89, -1));

        lblMatKhauMoi.setText("Mật khẩu mới");
        bg.add(lblMatKhauMoi, new org.netbeans.lib.awtextra.AbsoluteConstraints(50, 165, 89, -1));

        bg1.setBackground(new java.awt.Color(255, 204, 204));

        lblChonPhuongThucXacNhan.setText("Chọn phương thức xác nhân khác");

        lblSoDienThoai.setText("<html><u>Số điện thoại</u></html>");
        lblSoDienThoai.addMouseMotionListener(new java.awt.event.MouseMotionAdapter() {
            public void mouseMoved(java.awt.event.MouseEvent evt) {
                lblSoDienThoaiMouseMoved(evt);
            }
        });
        lblSoDienThoai.addMouseListener(new java.awt.event.MouseAdapter() {
            public void mousePressed(java.awt.event.MouseEvent evt) {
                lblSoDienThoaiMousePressed(evt);
            }
        });

        lblDangNhap.setText("<html><u>Đăng nhập</u></html>");
        lblDangNhap.addMouseMotionListener(new java.awt.event.MouseMotionAdapter() {
            public void mouseMoved(java.awt.event.MouseEvent evt) {
                lblDangNhapMouseMoved(evt);
            }
        });
        lblDangNhap.addMouseListener(new java.awt.event.MouseAdapter() {
            public void mousePressed(java.awt.event.MouseEvent evt) {
                lblDangNhapMousePressed(evt);
            }
        });

        javax.swing.GroupLayout bg1Layout = new javax.swing.GroupLayout(bg1);
        bg1.setLayout(bg1Layout);
        bg1Layout.setHorizontalGroup(
            bg1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(bg1Layout.createSequentialGroup()
                .addGap(18, 18, 18)
                .addGroup(bg1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addComponent(lblDangNhap, javax.swing.GroupLayout.PREFERRED_SIZE, 90, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(lblChonPhuongThucXacNhan, javax.swing.GroupLayout.PREFERRED_SIZE, 184, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(lblSoDienThoai, javax.swing.GroupLayout.PREFERRED_SIZE, 90, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addContainerGap(245, Short.MAX_VALUE))
        );
        bg1Layout.setVerticalGroup(
            bg1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(bg1Layout.createSequentialGroup()
                .addGap(12, 12, 12)
                .addComponent(lblChonPhuongThucXacNhan)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addComponent(lblSoDienThoai, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                .addComponent(lblDangNhap, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
        );

        bg.add(bg1, new org.netbeans.lib.awtextra.AbsoluteConstraints(0, 203, 447, -1));

        btnXacNhan.setText("Xác nhận");
        btnXacNhan.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btnXacNhanActionPerformed(evt);
            }
        });
        bg.add(btnXacNhan, new org.netbeans.lib.awtextra.AbsoluteConstraints(180, 280, -1, -1));

        jPanel1.setBackground(new java.awt.Color(255, 204, 204));
        bg.add(jPanel1, new org.netbeans.lib.awtextra.AbsoluteConstraints(326, 56, -1, 129));

        btnGuiMaEmail.setText("Gửi mã");
        btnGuiMaEmail.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btnGuiMaEmailActionPerformed(evt);
            }
        });
        bg.add(btnGuiMaEmail, new org.netbeans.lib.awtextra.AbsoluteConstraints(340, 57, 70, -1));

        lblAnh.setIcon(new javax.swing.ImageIcon(getClass().getResource("/IMG/canhBaoSai.png"))); // NOI18N
        bg.add(lblAnh, new org.netbeans.lib.awtextra.AbsoluteConstraints(340, 50, -1, 30));
        bg.add(txtMatKhauMoi, new org.netbeans.lib.awtextra.AbsoluteConstraints(160, 160, 140, -1));

        javax.swing.GroupLayout layout = new javax.swing.GroupLayout(getContentPane());
        getContentPane().setLayout(layout);
        layout.setHorizontalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(layout.createSequentialGroup()
                .addContainerGap()
                .addComponent(bg, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                .addGap(19, 19, 19))
        );
        layout.setVerticalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addComponent(bg, javax.swing.GroupLayout.DEFAULT_SIZE, 310, Short.MAX_VALUE)
        );

        pack();
        setLocationRelativeTo(null);
    }// </editor-fold>//GEN-END:initComponents

    private void txtEmailActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_txtEmailActionPerformed
        // TODO add your handling code here:
    }//GEN-LAST:event_txtEmailActionPerformed

    private void txtMaXacNhanActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_txtMaXacNhanActionPerformed
        // TODO add your handling code here:
    }//GEN-LAST:event_txtMaXacNhanActionPerformed
    
    private void btnGuiMaEmailActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btnGuiMaEmailActionPerformed
        // TODO add your handling code here:
         try {
                sleep();
                taiKhoan_DAO.CheckEmailLost(nv, tk);
                taiKhoan_DAO.updateMaXacNhanLost(tk);
                sendMain(nv, tk);
                code = tk.getMaXacNhan(); 
                txtMaXacNhan.setVisible(true);
                lblMaXacNhan.setVisible(true);
        } catch (SQLException ex) {
            Logger.getLogger(QuenMatKhauEmail.class.getName()).log(Level.SEVERE, null, ex);
        }
    }//GEN-LAST:event_btnGuiMaEmailActionPerformed
 private void sendMain(NhanVien nv,TaiKhoan tk) {
	        new Thread(new Runnable() {
	            @Override
	            public void run() {
	                
	               ModelMessage ms = new ServiceMail().sendMain(nv.getEmail(),tk.getMaXacNhan() );
	                if (ms.isSuccess()) {
	                        System.out.println("Gửi thành công tới mail : "+txtEmail.getText());
	                } else {
                                System.out.println("Email không tồn tại");
	                }
	            }
	        }).start();
	    }
    private void btnXacNhanActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btnXacNhanActionPerformed
        // TODO add your handling code here:
        XacNhan();
         if (evt.getActionCommand().equals("ActionPerformed")) {
         }
    }//GEN-LAST:event_btnXacNhanActionPerformed
    private void XacNhan() {
             if((txtEmail.getText().equals("")|| txtMaXacNhan.getText().equals("") || txtMatKhauMoi.getText().equals(""))){
            javax.swing.JOptionPane.showMessageDialog(null,"Chưa điền đủ thông tin");
        }else{
            javax.swing.JOptionPane.showMessageDialog(null,"Tài khoản đã thay đổi trở về màn hình đăng nhập");
            try {
                if( taiKhoan_DAO.updataPasswordLost(tk.getTenTK(), txtMatKhauMoi.getText())){
                    System.out.println(tk.getTenTK());
                    System.out.println(txtMatKhauMoi.getText());
                            
                    DangNhap dangNhap = new DangNhap ();
                    this.setVisible(false);
                    dangNhap.setVisible(true);
                }
            } catch (SQLException ex) {
                Logger.getLogger(QuenMatKhauEmail.class.getName()).log(Level.SEVERE, null, ex);
            }
            
        }    
    }
    private void phimTatXacNhan(){
        // Tạo phím tắt "Enter" cho JButton
        javax.swing.KeyStroke enterKeyStroke =  javax.swing.KeyStroke.getKeyStroke( java.awt.event.KeyEvent.VK_ENTER, 0);
        
        // Tạo hành động khi phím tắt được nhấn
            javax.swing.Action enterAction = new  javax.swing.AbstractAction("Xác nhận") {
            
            @Override
            public void actionPerformed( java.awt.event.ActionEvent e) {
                XacNhan();
            }
        };
        
        // Ánh xạ phím tắt "Enter" với hành động
        InputMap inputMap = btnXacNhan.getInputMap(JComponent.WHEN_IN_FOCUSED_WINDOW);
        ActionMap actionMap = btnXacNhan.getActionMap();
        
        inputMap.put(enterKeyStroke, "enterClick");
        actionMap.put("enterClick", enterAction);  
    }
    private void lblSoDienThoaiMousePressed(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_lblSoDienThoaiMousePressed
        // TODO add your handling code here:
        QuenMatKhauSoDienThoai QmkSDT = new QuenMatKhauSoDienThoai();
        this.setVisible(false);
        QmkSDT.setVisible(true);
    }//GEN-LAST:event_lblSoDienThoaiMousePressed

    private void lblSoDienThoaiMouseMoved(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_lblSoDienThoaiMouseMoved
        // TODO add your handling code here:
         lblSoDienThoai.setCursor(Cursor.getPredefinedCursor(Cursor.HAND_CURSOR));
    }//GEN-LAST:event_lblSoDienThoaiMouseMoved

    private void lblDangNhapMouseMoved(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_lblDangNhapMouseMoved
        // TODO add your handling code here:
        lblDangNhap.setCursor(Cursor.getPredefinedCursor(Cursor.HAND_CURSOR));
    }//GEN-LAST:event_lblDangNhapMouseMoved

    private void lblDangNhapMousePressed(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_lblDangNhapMousePressed
        // TODO add your handling code here:
                    DangNhap1 dangNhap = new DangNhap1 ();
                    this.setVisible(false);
                    dangNhap.setVisible(true);
    }//GEN-LAST:event_lblDangNhapMousePressed
    public void sleep() { 
		 new Thread(new Runnable() {
	            @Override
	            
	            public void run() {
	                try {
                             int count = 60;
	                	btnGuiMaEmail.setEnabled(false);
	                	txtEmail.setEditable(false);
	                	while(count!=0) {
	                		count--;
	                		Thread.sleep(1000);
	                		btnGuiMaEmail.setText(count +" s" );
	                		
	                	}
	                   
	                    btnGuiMaEmail.setEnabled(true);
                            btnGuiMaEmail.setText("Gửi mã");
                            txtEmail.setEditable(true);
	                } catch (InterruptedException e) {
	                    System.err.println(e);
	                }
	            }
	        }).start();
	}
    
    public void duLieuEmail(){
                txtEmail.getDocument().addDocumentListener(new javax.swing.event.DocumentListener() {
            @Override
            public void insertUpdate(javax.swing.event.DocumentEvent e) {
                if( validateData(txtEmail.getText(), lblAnh)){
                    try {
                        if(taiKhoan_DAO.checkDuplicateEmail(txtEmail.getText()+"")){
                            txtMaXacNhan.setEditable(true);
                            nv = new NhanVien();
                            nv.setEmail(txtEmail.getText());
                            tk = new TaiKhoan();
                            tk.setMatKhau(nv.getTaiKhoan()+"");
                            btnGuiMaEmail.setVisible(true);
                            lblAnh.setVisible(false);
                                 
                        }else{
                            btnGuiMaEmail.setVisible(false);
                            lblAnh.setVisible(true);
                            lblAnh.setIcon(new javax.swing.ImageIcon(getClass().getResource("/IMG/canhBaoSai.png")));
                            txtMaXacNhan.setVisible(false);
                            lblMaXacNhan.setVisible(false);
                            txtMatKhauMoi.setVisible(false);
                            lblMatKhauMoi.setVisible(false);
                        }
                    } catch (SQLException ex) {
                        Logger.getLogger(QuenMatKhauEmail.class.getName()).log(Level.SEVERE, null, ex);
                    }
                }else{
                    txtMatKhauMoi.setVisible(false);
                    lblAnh.setVisible(true);
                    lblAnh.setIcon(new javax.swing.ImageIcon(getClass().getResource("/IMG/canhBaoSai.png")));
                    txtMaXacNhan.setText("");
                    btnGuiMaEmail.setVisible(false);
                    txtMaXacNhan.setVisible(false);
                    lblMaXacNhan.setVisible(false);
                    txtMatKhauMoi.setVisible(false);
                    lblMatKhauMoi.setVisible(false);
                }
            }
            @Override
            public void removeUpdate(javax.swing.event.DocumentEvent e) {
                 if( validateData(txtEmail.getText(), lblAnh)){
                    try {
                        if(taiKhoan_DAO.checkDuplicateEmail(txtEmail.getText()+"")){
                            txtMaXacNhan.setEditable(true);
                            nv = new NhanVien();
                            nv.setEmail(txtEmail.getText());
                            tk = new TaiKhoan();
                            tk.setMatKhau(nv.getTaiKhoan()+"");
                            btnGuiMaEmail.setVisible(true);
                            lblAnh.setVisible(false);
                                 
                        }else{
                            btnGuiMaEmail.setVisible(false);
                            lblAnh.setVisible(true);
                            lblAnh.setIcon(new javax.swing.ImageIcon(getClass().getResource("/IMG/canhBaoSai.png")));
                            txtMaXacNhan.setVisible(false);
                            lblMaXacNhan.setVisible(false);
                            txtMatKhauMoi.setVisible(false);
                            lblMatKhauMoi.setVisible(false);
                        }
                    } catch (SQLException ex) {
                        Logger.getLogger(QuenMatKhauEmail.class.getName()).log(Level.SEVERE, null, ex);
                    }
                }else{
                    txtMatKhauMoi.setVisible(false);
                    lblAnh.setVisible(true);
                    lblAnh.setIcon(new javax.swing.ImageIcon(getClass().getResource("/IMG/canhBaoSai.png")));
                    txtMaXacNhan.setText("");
                    btnGuiMaEmail.setVisible(false);
                    txtMaXacNhan.setVisible(false);
                    lblMaXacNhan.setVisible(false);
                    txtMatKhauMoi.setVisible(false);
                    lblMatKhauMoi.setVisible(false);
                }
            }

            @Override
            public void changedUpdate(javax.swing.event.DocumentEvent e) {
                if( validateData(txtEmail.getText(), lblAnh)){
                    try {
                        if(taiKhoan_DAO.checkDuplicateEmail(txtEmail.getText()+"")){
                            txtMaXacNhan.setEditable(true);
                            nv = new NhanVien();
                            nv.setEmail(txtEmail.getText());
                            tk = new TaiKhoan();
                            tk.setMatKhau(nv.getTaiKhoan()+"");
                            btnGuiMaEmail.setVisible(true);
                            lblAnh.setVisible(false);
                                 
                        }else{
                             btnGuiMaEmail.setVisible(false);
                            lblAnh.setVisible(true);
                            lblAnh.setIcon(new javax.swing.ImageIcon(getClass().getResource("/IMG/canhBaoSai.png")));
                            txtMatKhauMoi.setVisible(false);
                            lblMatKhauMoi.setVisible(false);
                        }
                    } catch (SQLException ex) {
                        Logger.getLogger(QuenMatKhauEmail.class.getName()).log(Level.SEVERE, null, ex);
                    }
                }else{
                    txtMatKhauMoi.setVisible(false);
                    lblAnh.setVisible(true);
                    lblAnh.setIcon(new javax.swing.ImageIcon(getClass().getResource("/IMG/canhBaoSai.png")));
                    txtMaXacNhan.setText("");
                    btnGuiMaEmail.setVisible(false);
                    txtMatKhauMoi.setVisible(false);
                    lblMatKhauMoi.setVisible(false);
                }
            }
        });
    }
    
    private void DuLieuMaXacNhan(){
          txtMaXacNhan.getDocument().addDocumentListener(new javax.swing.event.DocumentListener() {
            @Override
            public void insertUpdate(javax.swing.event.DocumentEvent e) {
                if( txtMaXacNhan.getText().equals(tk.getMaXacNhan())){
                    lblMatKhauMoi.setVisible(true);
                    txtMatKhauMoi.setVisible(true);
                }else{
                    lblMatKhauMoi.setVisible(false);
                    txtMatKhauMoi.setVisible(false);
                }
            }
            @Override
            public void removeUpdate(javax.swing.event.DocumentEvent e) {
                if(  txtMaXacNhan.getText().equals(tk.getMaXacNhan())){
                    lblMatKhauMoi.setVisible(true);
                    txtMatKhauMoi.setVisible(true);
                }else{
                    lblMatKhauMoi.setVisible(false);
                    txtMatKhauMoi.setVisible(false);
                }
            }

            @Override
            public void changedUpdate(javax.swing.event.DocumentEvent e) {
                if( txtMaXacNhan.getText().equals(tk.getMaXacNhan())){
                    lblMatKhauMoi.setVisible(true);
                    txtMatKhauMoi.setVisible(true);
                    
                }else{
                    lblMatKhauMoi.setVisible(false);
                    txtMatKhauMoi.setVisible(false);
                }
            }
        });
    }
    
    private static boolean validateData(String input, javax.swing.JLabel validationLabel) {
         String regex = "^[A-Za-z0-9+_.-]+@(.+)$";
         java.util.regex.Pattern pattern = java.util.regex.Pattern.compile(regex);
         java.util.regex.Matcher matcher = pattern.matcher(input);
        if (matcher.matches() && input.endsWith("@gmail.com")&& input.length()>0)  {
         return true;  
        } else {     
            return false;
        }
    }
    
    /**
     * @param args the command line arguments
     */
    public static void main(String args[]) {
        /* Set the Nimbus look and feel */
        //<editor-fold defaultstate="collapsed" desc=" Look and feel setting code (optional) ">
        /* If Nimbus (introduced in Java SE 6) is not available, stay with the default look and feel.
         * For details see http://download.oracle.com/javase/tutorial/uiswing/lookandfeel/plaf.html 
         */
        try {
            for (javax.swing.UIManager.LookAndFeelInfo info : javax.swing.UIManager.getInstalledLookAndFeels()) {
                if ("Nimbus".equals(info.getName())) {
                    javax.swing.UIManager.setLookAndFeel(info.getClassName());
                    break;
                }
            }
        } catch (ClassNotFoundException ex) {
            java.util.logging.Logger.getLogger(QuenMatKhauEmail.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (InstantiationException ex) {
            java.util.logging.Logger.getLogger(QuenMatKhauEmail.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (IllegalAccessException ex) {
            java.util.logging.Logger.getLogger(QuenMatKhauEmail.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (javax.swing.UnsupportedLookAndFeelException ex) {
            java.util.logging.Logger.getLogger(QuenMatKhauEmail.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        }
        //</editor-fold>
        //</editor-fold>

        /* Create and display the form */
        java.awt.EventQueue.invokeLater(new Runnable() {
            public void run() {
                new QuenMatKhauEmail().setVisible(true);
            }
        });
    }

    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JPanel bg;
    private javax.swing.JPanel bg1;
    private javax.swing.JButton btnGuiMaEmail;
    private javax.swing.JButton btnXacNhan;
    private javax.swing.JPanel jPanel1;
    private javax.swing.JLabel lblAnh;
    private javax.swing.JLabel lblChonPhuongThucXacNhan;
    private javax.swing.JLabel lblDangNhap;
    private javax.swing.JLabel lblEmail;
    private javax.swing.JLabel lblMaXacNhan;
    private javax.swing.JLabel lblMatKhauMoi;
    private javax.swing.JLabel lblSoDienThoai;
    private javax.swing.JTextField txtEmail;
    private javax.swing.JTextField txtMaXacNhan;
    private javax.swing.JPasswordField txtMatKhauMoi;
    // End of variables declaration//GEN-END:variables
}
