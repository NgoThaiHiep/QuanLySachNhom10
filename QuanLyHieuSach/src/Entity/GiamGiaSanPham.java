
package Entity;

import java.time.LocalDate;

/**
 *
 * @author FPTSHOP
 */
public class GiamGiaSanPham {
    private String maGiamGiaSanPham;
    private String tenGiamGia;
    private SanPham sanPham;
    private float soTienGiam;
    private float tyLeGiam;
    private LocalDate ngayBatDau;
    private LocalDate ngayKetThuc;
    private String tinhTrang;
    private String chiTiet;
    private int loai;
    private LoaiSanPham loaiSanPham;
    public GiamGiaSanPham() {
    }

    public GiamGiaSanPham(String maGiamGiaSanPham, String tenGiamGia, SanPham sanPham, float soTienGiam, LocalDate ngayBatDau, LocalDate ngayKetThuc, String tinhTrang, String chiTiet, int loai) {
        this.maGiamGiaSanPham = maGiamGiaSanPham;
        this.tenGiamGia = tenGiamGia;
        this.sanPham = sanPham;
        this.soTienGiam = soTienGiam;
        this.ngayBatDau = ngayBatDau;
        this.ngayKetThuc = ngayKetThuc;
        this.tinhTrang = tinhTrang;
        this.chiTiet = chiTiet;
        this.loai = loai;
    }

  
   public GiamGiaSanPham(String maGiamGiaSanPham, String tenGiamGia, SanPham sanPham, LocalDate ngayBatDau, LocalDate ngayKetThuc, String tinhTrang, String chiTiet, int loai, float tyLeGiam) {
        this.maGiamGiaSanPham = maGiamGiaSanPham;
        this.tenGiamGia = tenGiamGia;
        this.sanPham = sanPham;
        this.tyLeGiam = tyLeGiam;
        this.ngayBatDau = ngayBatDau;
        this.ngayKetThuc = ngayKetThuc;
        this.tinhTrang = tinhTrang;
        this.chiTiet = chiTiet;
        this.loai = loai;
    }

    
    
    public String getMaGiamGiaSanPham() {
        return maGiamGiaSanPham;
    }

    public LoaiSanPham getLoaiSanPham() {
        return loaiSanPham;
    }

    public void setLoaiSanPham(LoaiSanPham loaiSanPham) {
        this.loaiSanPham = loaiSanPham;
    }

    public void setMaGiamGiaSanPham(String maGiamGiaSanPham) {
        this.maGiamGiaSanPham = maGiamGiaSanPham;
    }

    public String getTenGiamGia() {
        return tenGiamGia;
    }

    public void setTenGiamGia(String tenGiamGia) {
        this.tenGiamGia = tenGiamGia;
    }

    public SanPham getSanPham() {
        return sanPham;
    }

    public void setSanPham(SanPham sanPham) {
        this.sanPham = sanPham;
    }

    public float getSoTienGiam() {
        return soTienGiam;
    }

    public void setSoTienGiam(float soTienGiam) {
        this.soTienGiam = soTienGiam;
    }

    public LocalDate getNgayBatDau() {
        return ngayBatDau;
    }

    public void setNgayBatDau(LocalDate ngayBatDau) {
        this.ngayBatDau = ngayBatDau;
    }

    public LocalDate getNgayKetThuc() {
        return ngayKetThuc;
    }

    public void setNgayKetThuc(LocalDate ngayKetThuc) {
        this.ngayKetThuc = ngayKetThuc;
    }

    public String getTinhTrang() {
        return tinhTrang;
    }

    public void setTinhTrang(String tinhTrang) {
        this.tinhTrang = tinhTrang;
    }

    public String getChiTiet() {
        return chiTiet;
    }

    public void setChiTiet(String chiTiet) {
        this.chiTiet = chiTiet;
    }

    public float getTyLeGiam() {
        return tyLeGiam;
    }

    public void setTyLeGiam(float tyLeGiam) {
        this.tyLeGiam = tyLeGiam;
    }

    public int getLoai() {
        return loai;
    }

    public void setLoai(int loai) {
        this.loai = loai;
    }

    @Override
    public String toString() {
        return "GiamGiaSanPham{" + "maGiamGiaSanPham=" + maGiamGiaSanPham + ", tenGiamGia=" + tenGiamGia + ", sanPham=" + sanPham + ", soTienGiam=" + soTienGiam + ", tyLeGiam=" + tyLeGiam + ", ngayBatDau=" + ngayBatDau + ", ngayKetThuc=" + ngayKetThuc + ", tinhTrang=" + tinhTrang + ", chiTiet=" + chiTiet + ", loai=" + loai + '}';
    }
    
    
    
}
