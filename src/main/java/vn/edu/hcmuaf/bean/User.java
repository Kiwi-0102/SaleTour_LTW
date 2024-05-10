package vn.edu.hcmuaf.bean;

public class User {
    private int id;
    private String userName;
    private String email;
    private String password;
    private String phoneNumber;
    private String address;
    private int roleId;

    public User(int id, String userName, String email, String password, int roleId) {
        this.id = id;
        this.userName = userName;
        this.email = email;
        this.password = password;
        this.roleId = roleId;
    }

    public User() {
    }

    public User(int id, String email, String password) {
        this.id = id;
        this.email = email;
        this.password = password;
    }
    public User( String email, String password) {

        this.email = email;
        this.password = password;
    }

    public User(String userName, String email, String password) {
    this.userName = userName;
        this.email = email;
        this.password = password;
    }

    public User(int id, String userName, String email, String password, String phoneNumber, String address, int roleId) {
        this.id = id;
        this.userName = userName;
        this.email = email;
        this.password = password;
        this.phoneNumber = phoneNumber;
        this.address = address;
        this.roleId = roleId;
    }

    public User(String userName, String email, String phoneNumber, String address) {
        this.userName = userName;
        this.email = email;
        this.phoneNumber = phoneNumber;
        this.address = address;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String  getPhoneNumber() {
        return phoneNumber;
    }

    public void setPhoneNumber(String phoneNumber) {
        this.phoneNumber = phoneNumber;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public int getRoleId() {
        return roleId;
    }

    public void setRoleId(int roleId) {
        this.roleId = roleId;
    }
    @Override
    public String toString() {
        return "user{" +
                "id=" + id +
                ", userName='" + userName + '\'' +
                ", email='" + email + '\'' +
                ", password='" + password + '\'' +
                ", phoneNumber=" + phoneNumber +
                ", address='" + address + '\'' +
                ", roleId=" + roleId +
                '}';
    }

}
