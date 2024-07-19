package vn.edu.hcmuaf.bean;


import java.util.Date;

public class Booking {
    private int id;
    private int userId;
    private String date;
    private int tourId;
    private int numChildren;
    private int numAdult;
    private String name;
    private String phone;
    private String email;
    private String address;

    private String dateStart;

    public Booking() {
    }

    public Booking(int id, int userId, String date, int tourId, int numChildren, int numAdult, String name, String phone, String email, String address, String dateStart) {
        this.id = id;
        this.userId = userId;
        this.date = date;
        this.tourId = tourId;
        this.numChildren = numChildren;
        this.numAdult = numAdult;
        this.name = name;
        this.phone = phone;
        this.email = email;
        this.address = address;
        this.dateStart = dateStart;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getUserId() {
        return userId;
    }

    public void setUserId(int userId) {
        this.userId = userId;
    }

    public String getDate() {
        return date;
    }

    public void setDate(String date) {
        this.date = date;
    }

    public int getTourId() {
        return tourId;
    }

    public void setTourId(int tourId) {
        this.tourId = tourId;
    }

    public int getNumChildren() {
        return numChildren;
    }

    public void setNumChildren(int numChildren) {
        this.numChildren = numChildren;
    }

    public int getNumAdult() {
        return numAdult;
    }

    public void setNumAdult(int numAdult) {
        this.numAdult = numAdult;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getDateStart() {
        return dateStart;
    }

    public void setDateStart(String dateStart) {
        this.dateStart = dateStart;
    }

    @Override
    public String toString() {
        return "Booking{" +
                "id=" + id +
                ", userId=" + userId +
                ", date='" + date + '\'' +
                ", tourId=" + tourId +
                ", numChildren=" + numChildren +
                ", numAdult=" + numAdult +
                ", name='" + name + '\'' +
                ", phone='" + phone + '\'' +
                ", email='" + email + '\'' +
                ", address='" + address + '\'' +
                ", dateStart='" + dateStart + '\'' +
                '}';
    }
}
