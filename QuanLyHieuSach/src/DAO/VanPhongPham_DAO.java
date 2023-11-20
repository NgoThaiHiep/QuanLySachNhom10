/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package DAO;
import ConnectDB.ConnectDB;
import Entity.LoaiSanPham;
import Entity.LoaiVanPhongPham;
import Entity.NhaCungCap;
import Entity.NhaXuatBan;
import Entity.Sach;
import Entity.SanPham;
import Entity.TacGia;
import Entity.TheLoai;
import Entity.ThuongHieu;
import Entity.VanPhongPham;
import Entity.XuatXu;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.text.DecimalFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Random;
/**
 *
 * @author hongh
 */
public class VanPhongPham_DAO {
     public VanPhongPham_DAO(){
    
    }
     public String generateMaVanPhongPham() throws SQLException{
            String number = "";
             
        for (int i = 1; i < 99999; i++) {
            // Định dạng số thành chuỗi và thêm các số 0 bổ sung để đảm bảo đủ 5 chữ số
            number = "VanPhongPham"+String.format("%05d", i);
            
            if(!kiemTraMaVanPhongPham(number)){
                break;
            }
            }  
        return number;
	}
    public boolean kiemTraMaVanPhongPham(String code) throws SQLException{
	boolean duplicate = false;

        // Thực hiện kết nối đến cơ sở dữ liệu ở đây
        ConnectDB.getInstance();
	Connection con = ConnectDB.getConnection();
        PreparedStatement p = null;
        ResultSet rs = null;

        
            // Thực hiện truy vấn kiểm tra code
            p = con.prepareStatement("select VanPhongPhamID from VanPhongPham where VanPhongPhamID = ?");
            p.setString(1, code);
            rs = p.executeQuery();

            if (rs.next()) {
                duplicate = true;
            }
        return duplicate;
        }
    
    public ArrayList<VanPhongPham> layDanhSanPhamVanPhongPham(){
        ArrayList<VanPhongPham> dssps = new ArrayList<VanPhongPham>();
	ConnectDB.getInstance();
	Connection con = ConnectDB.getConnection();
        
        try {
        String sql = "select * from VanPhongPham";
        Statement state = con.createStatement();
        ResultSet rs = state.executeQuery(sql);
        while(rs.next()){
        	
                String maSanPham = rs.getString(1);
                String tenSanPham = rs.getString(2);
                LoaiSanPham loaiSanPham = new LoaiSanPham(rs.getString("LoaiSanPham"));
                NhaCungCap nhaCungCap = new NhaCungCap(rs.getString("NhaCungCap"));
                int soLuongTon = rs.getInt(5);
                Double donGia = rs.getDouble("DonGia");
                String moTa = rs.getString("MoTa");
                String tinhTrang = rs.getString("TinhTrang");
                String hinhAnh = rs.getString("HinhAnh");
                XuatXu xuatXu = new XuatXu(rs.getString("XuatXu"));
                int namXuatban = rs.getInt("NamSanXuat");
                String chatLieu = rs.getString("ChatLieu");
                ThuongHieu thuongHieu = new ThuongHieu(rs.getString("ThuongHieu"));
                LoaiVanPhongPham loaiVanPhongPham = new LoaiVanPhongPham(rs.getString("LoaiVanPhongPham"));
                 //Sach sach = new Sach();
                VanPhongPham vanPhongPham = new VanPhongPham(xuatXu, thuongHieu, loaiVanPhongPham, chatLieu, namXuatban, maSanPham, tenSanPham, loaiSanPham, nhaCungCap, soLuongTon , donGia , moTa, tinhTrang, hinhAnh);
                dssps.add(vanPhongPham);
            }    
        } catch (SQLException e) {
           e.printStackTrace();
        }
        
        return dssps; 
    }
     public ArrayList<VanPhongPham> layDanhSanPhamVanPhongPham_TheoMa(String maVanPhongPham){
        ArrayList<VanPhongPham> dssps = new ArrayList<VanPhongPham>();
	ConnectDB.getInstance();
	Connection con = ConnectDB.getConnection();
        
        try {
        String sql = "select * from VanPhongPham where VanPhongPhamID LIKE '%"+maVanPhongPham+"%'";
        Statement state = con.createStatement();
        ResultSet rs = state.executeQuery(sql);
        while(rs.next()){
        	
                String maSanPham = rs.getString(1);
                String tenSanPham = rs.getString(2);
                LoaiSanPham loaiSanPham = new LoaiSanPham(rs.getString("LoaiSanPham"));
                NhaCungCap nhaCungCap = new NhaCungCap(rs.getString("NhaCungCap"));
                int soLuongTon = rs.getInt(5);
                Double donGia = rs.getDouble("DonGia");
                String moTa = rs.getString("MoTa");
                String tinhTrang = rs.getString("TinhTrang");
                String hinhAnh = rs.getString("HinhAnh");
                XuatXu xuatXu = new XuatXu(rs.getString("XuatXu"));
                int namXuatban = rs.getInt("NamSanXuat");
                String chatLieu = rs.getString("ChatLieu");
                ThuongHieu thuongHieu = new ThuongHieu(rs.getString("ThuongHieu"));
                LoaiVanPhongPham loaiVanPhongPham = new LoaiVanPhongPham(rs.getString("LoaiVanPhongPham"));
                 //Sach sach = new Sach();
                VanPhongPham vanPhongPham = new VanPhongPham(xuatXu, thuongHieu, loaiVanPhongPham, chatLieu, namXuatban, maSanPham, tenSanPham, loaiSanPham, nhaCungCap, soLuongTon , donGia , moTa, tinhTrang, hinhAnh);
                dssps.add(vanPhongPham);
            }    
        } catch (SQLException e) {
           e.printStackTrace();
        }
        
        return dssps; 
    }
    public boolean inserVanPhongPham(VanPhongPham vanPhongPham){
     
       ConnectDB.getInstance();
        Connection con = ConnectDB.getConnection();
        PreparedStatement state = null;
        int n = 0;
        try {
            String sql = "INSERT INTO [dbo].[VanPhongPham]\n" +
"           ([VanPhongPhamID]\n" +
"           ,[TenVanPhongPham]\n" +
"           ,[LoaiSanPham]\n" +
"           ,[NhaCungCap]\n" +
"           ,[SoLuongTon]\n" +
"           ,[DonGia]\n" +
"           ,[MoTa]\n" +
"           ,[TinhTrang]\n" +
"           ,[HinhAnh]\n" +
"           ,[XuatXu]\n" +
"           ,[NamSanXuat]\n" +
"           ,[ChatLieu]\n" +
"           ,[ThuongHieu]\n" +
"           ,[LoaiVanPhongPham])\n" +
"VALUES(?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
            
            state = con.prepareStatement(sql);
            state.setString(1, vanPhongPham.getMaSanPham());
            state.setString(2, vanPhongPham.getTenSanPham());
            state.setString(3, vanPhongPham.getLoaiSanPham().getMaLoaiSanPham());
            state.setString(4,vanPhongPham.getNhaCungCap().getMaNCC());
            state.setInt(5, vanPhongPham.getSoLuongTon());
            state.setDouble(6, vanPhongPham.getDonGia());
            state.setString(7,vanPhongPham.getMoTa());
            state.setString(8, vanPhongPham.getTinhTrang());
            state.setString(9, vanPhongPham.getHinhAnh());
            state.setString(10,vanPhongPham.getXuatXu().getMaXuatXu());
            state.setInt(11, vanPhongPham.getNamSanXuat());
            state.setString(12, vanPhongPham.getChatLieu());
            state.setString(13, vanPhongPham.getThuongHieu().getMaThuongHieu());
            state.setString(14, vanPhongPham.getLoaiVanPhongPham().getMaLoaiVanPhongPham());
            n = state.executeUpdate();
        } catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		finally {
			try {
				state.close();
			} catch (SQLException e2) {
				// TODO: handle exception
				e2.printStackTrace();
			}
		}
        
        return n > 0;
    }
    public boolean updateVanPhongPham(VanPhongPham vanPhongPham){
        ConnectDB.getInstance();
        Connection con = ConnectDB.getConnection();
        PreparedStatement state = null;
        int n = 0;

        try {
            String sql = "UPDATE [dbo].[VanPhongPham]\n" +
"   SET[TenVanPhongPham] =  ?, "+
"[LoaiSanPham] = ?\n" +
"      ,[NhaCungCap] = ? ,[SoLuongTon] = ?,[DonGia] = ?\n" +
"      ,[MoTa] = ?\n" +
"      ,[TinhTrang] = ?\n" +
"      ,[HinhAnh] = ?\n" +
"      ,[XuatXu] =?\n" +
"      ,[NamSanXuat] = ?\n" +
"      ,[ChatLieu] = ?\n" +
"      ,[ThuongHieu] = ?\n" +
"      ,[LoaiVanPhongPham] = ?\n" +
" WHERE  [VanPhongPhamID] = ? ";
            state = con.prepareStatement(sql);
           
            state.setString(1, vanPhongPham.getTenSanPham());
            state.setString(2, vanPhongPham.getLoaiSanPham().getMaLoaiSanPham());
            state.setString(3,vanPhongPham.getNhaCungCap().getMaNCC());
            state.setInt(4, vanPhongPham.getSoLuongTon());
            state.setDouble(5, vanPhongPham.getDonGia());
            state.setString(6,vanPhongPham.getMoTa());
            state.setString(7, vanPhongPham.getTinhTrang());
            state.setString(8, vanPhongPham.getHinhAnh());
            state.setString(9,vanPhongPham.getXuatXu().getMaXuatXu());
            state.setInt(10, vanPhongPham.getNamSanXuat());
            state.setString(11, vanPhongPham.getChatLieu());
            state.setString(12, vanPhongPham.getThuongHieu().getMaThuongHieu());
            state.setString(13, vanPhongPham.getLoaiVanPhongPham().getMaLoaiVanPhongPham());
            state.setString(14, vanPhongPham.getMaSanPham());
             n = state.executeUpdate();
        }  catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		finally {
			try {
				state.close();
			} catch (SQLException e2) {
				// TODO: handle exception
				e2.printStackTrace();
			}
		}
        return n > 0;
    }
    
     public boolean updateTinhTrangVanPhongPham(String maVanPhongPham, String tinhTrang){
        ConnectDB.getInstance();
        Connection con = ConnectDB.getConnection();
        PreparedStatement state = null;
        int n = 0;

        try {
            String sql = "UPDATE [dbo].[VanPhongPham]\n" +
            "SET"+
            "[TinhTrang] = ?\n" +

            " WHERE  [VanPhongPhamID] = ? ";
            state = con.prepareStatement(sql);
            state.setString(1, tinhTrang);
            state.setString(2, maVanPhongPham);
             n = state.executeUpdate();
        }  catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		finally {
			try {
				state.close();
			} catch (SQLException e2) {
				// TODO: handle exception
				e2.printStackTrace();
			}
		}
        return n > 0;
    }
      public boolean updateSoLuongVanPhongPham(SanPham sanPham, int soLuong){
        ConnectDB.getInstance();
	Connection con = ConnectDB.getConnection();
	PreparedStatement state = null;
        int n = 0;
        try {
            String sql = "UPDATE [dbo].[VanPhongPham] SET [SoLuongTon] = ? WHERE [VanPhongPhamID] = ?";
           state = con.prepareStatement(sql);
           state.setInt(1,soLuong);
           state.setString(2,sanPham.getMaSanPham());
        } catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		finally {
			try {
				state.close();
			} catch (SQLException e2) {
				// TODO: handle exception
				e2.printStackTrace();
			}
		}
                return n > 0;
    }
   
}
