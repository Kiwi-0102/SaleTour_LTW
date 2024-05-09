package vn.edu.hcmuaf.DAO;

import vn.edu.hcmuaf.DB.ConnectToDatabase;
import vn.edu.hcmuaf.bean.Bill;
import vn.edu.hcmuaf.bean.Booking;

import java.sql.*;
import java.util.ArrayList;
import java.util.Date;

public class BookingDAO {
    static Connection connection;
    static ResultSet rs = null;
    static PreparedStatement preparedStatement = null;

    public static ArrayList<Booking> getAll() {
        ArrayList<Booking> ListBooking = new ArrayList<>();
        try {
            String sql = "Select * from booking";
            rs = ConnectToDatabase.executeQuery(sql);
            while (rs.next()) {
                int id = rs.getInt("id");
                int userId = rs.getInt("userId");
                String date = rs.getString("date");
                int tourId = rs.getInt("tourId");
                int numChildren = rs.getInt("numChildren");
                int numAdult = rs.getInt("numAdult");
                String name = rs.getString("name");
                String phone = rs.getString("phone");
                String email = rs.getString("email");
                String address = rs.getString("address");
                String dateBooking = rs.getString("dateBooking");

//    public Booking(int id, int userId, String date, int tourId, int numChildren, int numAdult, String name, String phone, String email, String address) {
//    public Booking(int id, int userId, String date, int tourId, int numChildren, int numAdult, String name, String phone, String email, String address, String dateBooking) {

                // Tạo đối tượng Booking từ dữ liệu lấy ra từ cơ sở dữ liệu
                Booking booking = new Booking(id, userId, date, tourId, numChildren, numAdult, name, phone,email, address, dateBooking);
                ListBooking.add(booking);
            }
        } catch (Exception e) {
            e.printStackTrace();
            throw new RuntimeException(e);
        }
        return ListBooking;
    }


    public static ArrayList<Booking> getAllbyidUser(int idUser) {
        ArrayList<Booking> ListBooking = new ArrayList<>();
        try {
            connection = ConnectToDatabase.getConnect();
            String sql = "Select * from booking where userId = ?";
            preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setInt(1, idUser);
            rs = preparedStatement.executeQuery();
            while (rs.next()) {
                int id = rs.getInt("id");
                int userId = rs.getInt("userId");
                String date = rs.getString("date");
                int tourId = rs.getInt("tourId");
                int numChildren = rs.getInt("numChildren");
                int numAdult = rs.getInt("numAdult");
                String name = rs.getString("name");
                String phone = rs.getString("phone");
                String email = rs.getString("email");
                String address = rs.getString("address");
                String dateBooking = rs.getString("dateBooking");


                Booking booking = new Booking(id, userId, date, tourId, numChildren, numAdult, name, phone,email, address, dateBooking);
                ListBooking.add(booking);
            }
        } catch (Exception e) {
            e.printStackTrace();
            throw new RuntimeException(e);
        }
        return ListBooking;
    }

    public static Booking getBookingbyId(int IdBK) {
        Booking Booking = null;
        try {
            connection = ConnectToDatabase.getConnect();
            String sql = "Select * from booking where id = ?";
            preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setInt(1, IdBK);
            rs = preparedStatement.executeQuery();
            while (rs.next()) {
                int id = rs.getInt("id");
                int userId = rs.getInt("userId");
                String date = rs.getString("date");
                int tourId = rs.getInt("tourId");
                int numChildren = rs.getInt("numChildren");
                int numAdult = rs.getInt("numAdult");
                String name = rs.getString("name");
                String phone = rs.getString("phone");
                String email = rs.getString("email");
                String address = rs.getString("address");
                String dateBooking = rs.getString("dateBooking");

                Booking = new Booking(id, userId, date, tourId, numChildren, numAdult, name, phone,email, address, dateBooking);
            }
        } catch (Exception e) {
            e.printStackTrace();
            throw new RuntimeException(e);
        }
        return Booking;
    }


    public static int insertBooking(int userId, int tourId, int numChildren, int numAdult, String name, String phone,String email, String address,String dateBooking) {
        try {
            Connection connection = ConnectToDatabase.getConnect();
            String sql = "INSERT INTO booking (userId, date, tourId, numChildren, numAdult, name, phone,email, address, dateBooking) VALUES (?, CURDATE(), ?, ?, ?, ?, ?, ?, ?, ?)";
            PreparedStatement preparedStatement = connection.prepareStatement(sql, Statement.RETURN_GENERATED_KEYS);
            preparedStatement.setInt(1, userId);
            preparedStatement.setInt(2, tourId);
            preparedStatement.setInt(3, numChildren);
            preparedStatement.setInt(4, numAdult);
            preparedStatement.setString(5, name);
            preparedStatement.setString(6, phone);
            preparedStatement.setString(7, email);
            preparedStatement.setString(8, address);
            preparedStatement.setString(9, dateBooking);

            preparedStatement.executeUpdate();

            ResultSet generatedKeys = preparedStatement.getGeneratedKeys();
            if (generatedKeys.next()) {
                return generatedKeys.getInt(1);
            } else {
                throw new SQLException("Inserting booking failed, no ID obtained.");
            }
        } catch (Exception e) {
            e.printStackTrace();
            throw new RuntimeException(e);
        }
    }


    public static void updateBooking(int bookingId, String date, int userId, int tourId, int numChildren, int numAdult, String name, String phone, String email, String address, String dateBooking) {
        try {
            connection = ConnectToDatabase.getConnect();
            String sql = "UPDATE booking SET userId = ?, tourId = ?, numChildren = ?, numAdult = ?, name = ?, phone = ?, email = ?, address = ?, date = ?, dateBooking = ? WHERE id = ?";
            preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setInt(1, userId);
            preparedStatement.setInt(2, tourId);
            preparedStatement.setInt(3, numChildren);
            preparedStatement.setInt(4, numAdult);
            preparedStatement.setString(5, name);
            preparedStatement.setString(6, phone);
            preparedStatement.setString(7, email);
            preparedStatement.setString(8, address);
            preparedStatement.setString(9, date);
            preparedStatement.setString(10, dateBooking);
            preparedStatement.setInt(11, bookingId);

            preparedStatement.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace();
            throw new RuntimeException(e);
        }
    }
    public static void main(String[] args) {
        BookingDAO bkd =  new BookingDAO();
//        int inseted = bkd.insertBooking(2,1,2, 3, "vu", "987654321", "vu@gmail.com","ab123","17-14-2004");
//        System.out.println(BookingDAO.getBookingbyId(1));
    }
}
