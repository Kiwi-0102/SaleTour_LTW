package vn.edu.hcmuaf.bean;

public class Customer {
    int id;
    int idBill;
    String name;
    String male;
    String DateOfBirth;

    public Customer(String name, String male, String dateOfBirth) {
        this.name = name;
        this.male = male;
        DateOfBirth = dateOfBirth;
    }

    public Customer(int id, int idBill, String name, String male, String dateOfBirth) {
        this.id = id;
        this.idBill = idBill;
        this.name = name;
        this.male = male;
        DateOfBirth = dateOfBirth;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getIdBill() {
        return idBill;
    }

    public void setIdBill(int idBill) {
        this.idBill = idBill;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getMale() {
        return male;
    }

    public void setMale(String male) {
        this.male = male;
    }

    public String getDateOfBirth() {
        return DateOfBirth;
    }

    public void setDateOfBirth(String dateOfBirth) {
        DateOfBirth = dateOfBirth;
    }

    @Override
    public String toString() {
        return "Customer{" +
                "id=" + id +
                ", idBill=" + idBill +
                ", name='" + name + '\'' +
                ", male='" + male + '\'' +
                ", DateOfBirth='" + DateOfBirth + '\'' +
                '}';
    }
}
