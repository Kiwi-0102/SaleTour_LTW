package vn.edu.hcmuaf.bean;

public class Bill {
    private int id;
    private int bookingId;
    private String paymentMethod;
    private double toltalPrice;
    private String status;

    public Bill() {
    }

    public Bill(int id, int bookingId, String paymentMethod, double toltalPrice, String status) {
        this.id = id;
        this.bookingId = bookingId;
        this.paymentMethod = paymentMethod;
        this.toltalPrice = toltalPrice;
        this.status = status;
    }
    public Bill(int id, int valiId, double toltalPrice, String status) {
        this.id = id;
        this.bookingId = valiId;

        this.toltalPrice = toltalPrice;
        this.status = status;
    }
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getValiId() {
        return bookingId;
    }

    public void setValiId(int valiId) {
        this.bookingId = valiId;
    }

    public String getPaymentMethod() {
        return paymentMethod;
    }

    public void setPaymentMethod(String paymentMethod) {
        this.paymentMethod = paymentMethod;
    }

    public double getToltalPrice() {
        return toltalPrice;
    }

    public void setToltalPrice(double toltalPrice) {
        this.toltalPrice = toltalPrice;
    }

    public String getStatus() {
        return status;
    }

    @Override
    public String toString() {
        return "Bill{" +
                "id=" + id +
                ", bookingId=" + bookingId +
                ", toltalPrice=" + toltalPrice +
                ", status='" + status + '\'' +
                '}';
    }

    public void setStatus(String status) {
        this.status = status;
    }


}
