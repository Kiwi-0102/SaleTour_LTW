package vn.edu.hcmuaf.DAO;

import vn.edu.hcmuaf.DB.ConnectToDatabase;
import vn.edu.hcmuaf.bean.Bill;

import java.sql.*;
import java.util.ArrayList;

import static vn.edu.hcmuaf.DB.ConnectToDatabase.closeResources;

public class BillDAO {
    static Connection connection;
    static ResultSet rs = null;
    static PreparedStatement preparedStatement = null;

    // Method to close resources

    public static ArrayList<Bill> getAll() {
        ArrayList<Bill> ListBill = new ArrayList<>();
        try {
            String sql = "Select * from bills";
            rs = ConnectToDatabase.executeQuery(sql);
            while (rs.next()) {
                int id = rs.getInt("id");
                int userId = rs.getInt("bookingId");
                String paymentMethod = rs.getString("paymentMethod");
                double toltalPrice = rs.getDouble("toltalPrice");
                String status = rs.getString("status");

                // Tạo đối tượng Booking từ dữ liệu lấy ra từ cơ sở dữ liệu
                Bill bill = new Bill(id, userId, paymentMethod, toltalPrice, status);
                ListBill.add(bill);
            }
        } catch (Exception e) {
            e.printStackTrace();
            throw new RuntimeException(e);
        } finally {
            closeResources(connection, preparedStatement, rs);
        }
        return ListBill;
    }

    public static Bill getBillById(int idBill) {
        connection = ConnectToDatabase.getConnect();
        Bill bill = null;
        try {
            String sql = "Select * from bills where id = ?";
            preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setInt(1, idBill);
            rs = preparedStatement.executeQuery();
            while (rs.next()) {
                int id = rs.getInt("id");
                int userId = rs.getInt("bookingId");
                String paymentMethod = rs.getString("paymentMethod");
                double toltalPrice = rs.getDouble("totalPrice");
                String status = rs.getString("status");
                bill = new Bill(id, userId, paymentMethod, toltalPrice, status);
            }
        } catch (Exception e) {
            e.printStackTrace();
            throw new RuntimeException(e);
        } finally {
            closeResources(connection, preparedStatement, rs);
        }
        return bill;
    }

    public static ArrayList<Bill> getBillByIdUser(int idUser) {
        ArrayList<Bill> ListBill = new ArrayList<>();
        connection = ConnectToDatabase.getConnect();
        try {
            String sql = "Select * from bills inner join booking on bills.id = booking.id where booking.userId = ?";
            preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setInt(1, idUser);
            rs = preparedStatement.executeQuery();
            while (rs.next()) {
                int id = rs.getInt("id");
                int userId = rs.getInt("bookingId");
                String paymentMethod = rs.getString("paymentMethod");
                double toltalPrice = rs.getDouble("totalPrice");
                String status = rs.getString("status");

                // Tạo đối tượng Booking từ dữ liệu lấy ra từ cơ sở dữ liệu
                Bill bill = new Bill(id, userId, paymentMethod, toltalPrice, status);
                ListBill.add(bill);
            }
        } catch (Exception e) {
            e.printStackTrace();
            throw new RuntimeException(e);
        } finally {
            closeResources(connection, preparedStatement, rs);
        }
        return ListBill;
    }

    public static int insertBill(int bookingId, String paymentMethod, double totalPrice, String status) {
        try {
            Connection connection = ConnectToDatabase.getConnect();
            String sql = "INSERT INTO bills (bookingId, paymentMethod, totalPrice, status) VALUES (?, ?, ?, ?)";
            PreparedStatement preparedStatement = connection.prepareStatement(sql, Statement.RETURN_GENERATED_KEYS);
            preparedStatement.setInt(1, bookingId);
            preparedStatement.setString(2, paymentMethod);
            preparedStatement.setDouble(3, totalPrice);
            preparedStatement.setString(4, status);
            preparedStatement.executeUpdate();

            ResultSet generatedKeys = preparedStatement.getGeneratedKeys();
            int insertedId = -1;
            if (generatedKeys.next()) {
                insertedId = generatedKeys.getInt(1);
            } else {
                throw new SQLException("Inserting bill failed, no ID obtained.");
            }
            return insertedId;
        } catch (Exception e) {
            e.printStackTrace();
            throw new RuntimeException(e);
        }
    }

    public static void updateBill(int billId, int bookingId, String paymentMethod, double totalPrice, String status) {
        try {
            connection = ConnectToDatabase.getConnect();
            String sql = "UPDATE bills SET bookingId = ?, paymentMethod = ?, totalPrice = ?, status = ? WHERE id = ?";
            preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setInt(1, bookingId);
            preparedStatement.setString(2, paymentMethod);
            preparedStatement.setDouble(3, totalPrice);
            preparedStatement.setString(4, status);
            preparedStatement.setInt(5, billId);
            preparedStatement.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace();
            throw new RuntimeException(e);
        } finally {
            closeResources(connection, preparedStatement, rs);
        }
    }

    public static void updateStatusBill(int billId, String status) {
        try {
            connection = ConnectToDatabase.getConnect();
            String sql = "UPDATE bills SET status = ? WHERE id = ?";
            preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setString(1, status);
            preparedStatement.setInt(2, billId);
            preparedStatement.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace();
            throw new RuntimeException(e);
        } finally {
            closeResources(connection, preparedStatement, rs);
        }
    }
    public static void main(String[] args) {
        new BillDAO().updateStatusBill(2,"đã đã hủy hủy");
    }
}
