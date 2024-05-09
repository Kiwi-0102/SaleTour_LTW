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

    public int getBookingId() {
        return bookingId;
    }

    public void setBookingId(int bookingId) {
        this.bookingId = bookingId;
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

    public void setStatus(String status) {
        this.status = status;
    }

    @Override
    public String toString() {
        return "Bill{" +
                "id=" + id +
                ", bookingId=" + bookingId +
                ", paymentMethod='" + paymentMethod + '\'' +
                ", toltalPrice=" + toltalPrice +
                ", status='" + status + '\'' +
                '}';
    }
}
