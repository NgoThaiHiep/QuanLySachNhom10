
package Entity;

/**
 *
 * @author FPTSHOP
 */
public class QuyDinh {
     private int soLuongToiThieu;
    private int soLuongToiDa;
    private float VAT;

    public QuyDinh(int soLuongToiThieu, int soLuongToiDa, float VAT) {
        this.soLuongToiThieu = soLuongToiThieu;
        this.soLuongToiDa = soLuongToiDa;
        this.VAT = VAT;
    }

    public QuyDinh() {
    }

    public int getSoLuongToiThieu() {
        return soLuongToiThieu;
    }

    public void setSoLuongToiThieu(int soLuongToiThieu) {
        this.soLuongToiThieu = soLuongToiThieu;
    }

    public int getSoLuongToiDa() {
        return soLuongToiDa;
    }

    public void setSoLuongToiDa(int soLuongToiDa) {
        this.soLuongToiDa = soLuongToiDa;
    }

    public float getVAT() {
        return VAT;
    }

    public void setVAT(float VAT) {
        this.VAT = VAT;
    }
    
    

}
