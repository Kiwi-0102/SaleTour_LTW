package vn.edu.hcmuaf.bean;

public class Customer {
    String hoten;
    String goitinh;
    int ngay;
    int thang;
    int nam;

    public Customer() {
    }

    public Customer(String hoten, String goitinh, int ngay, int thang, int nam) {
        this.hoten = hoten;
        this.goitinh = goitinh;
        this.ngay = ngay;
        this.thang = thang;
        this.nam = nam;
    }

    public String getHoten() {
        return hoten;
    }

    public void setHoten(String hoten) {
        this.hoten = hoten;
    }

    public String getGoitinh() {
        return goitinh;
    }

    public void setGoitinh(String goitinh) {
        this.goitinh = goitinh;
    }

    public int getNgay() {
        return ngay;
    }

    public void setNgay(int ngay) {
        this.ngay = ngay;
    }

    public int getThang() {
        return thang;
    }

    public void setThang(int thang) {
        this.thang = thang;
    }

    public int getNam() {
        return nam;
    }

    public void setNam(int nam) {
        this.nam = nam;
    }

    @Override
    public String toString() {
        return "Customer{" +
                "hoten='" + hoten + '\'' +
                ", goitinh='" + goitinh + '\'' +
                ", ngay=" + ngay +
                ", thang=" + thang +
                ", nam=" + nam +
                '}';
    }
}