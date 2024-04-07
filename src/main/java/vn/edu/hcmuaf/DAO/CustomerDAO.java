package vn.edu.hcmuaf.DAO;

import vn.edu.hcmuaf.DB.ConnectToDatabase;
import vn.edu.hcmuaf.bean.Customer;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class CustomerDAO {
    static Connection connection;
    static ResultSet rs = null;
    static PreparedStatement preparedStatement = null;

    public int insertListCustomer(ArrayList<Customer> customers,int billid) {
        int insertedCount = 0;

        try {
            connection = ConnectToDatabase.getConnect();
            String sql = "INSERT INTO customer (name, male, dateOfBirth, billId) VALUES (?, ?, ?, ?)";
            preparedStatement = connection.prepareStatement(sql);

            for (Customer customer : customers) {
                preparedStatement.setString(1, customer.getName());
                preparedStatement.setString(2, customer.getMale());
                preparedStatement.setString(3, customer.getDateOfBirth());
                preparedStatement.setInt(4, billid);

                int rowsInserted = preparedStatement.executeUpdate();
                if (rowsInserted > 0) {
                    insertedCount += rowsInserted;
                }
            }
            return insertedCount;
        }
        catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }

        public ArrayList<Customer> getAllCustomers() {
            ArrayList<Customer> customers = new ArrayList<>();

            try {
                connection = ConnectToDatabase.getConnect();
                String sql = "SELECT * FROM customer";
                preparedStatement = connection.prepareStatement(sql);
                ResultSet resultSet = preparedStatement.executeQuery();

                while (resultSet.next()) {
                    int id = resultSet.getInt("id");
                    String name = resultSet.getString("name");
                    String male = resultSet.getString("male");
                    String dateOfBirth = resultSet.getString("dateOfBirth");
                    int billId = resultSet.getInt("billId");

                    Customer customer = new Customer(id, billId,name, male, dateOfBirth );
                    customers.add(customer);
                }
            } catch (SQLException e) {
                e.printStackTrace();
                throw new RuntimeException(e);
            }
            return customers;
        }
    public Customer getCustomerById(int customerId) {
        Customer customer = null;

        try {
            connection = ConnectToDatabase.getConnect();
            String sql = "SELECT * FROM customer WHERE id = ?";
            preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setInt(1, customerId);
            ResultSet resultSet = preparedStatement.executeQuery();

            if (resultSet.next()) {
                String name = resultSet.getString("name");
                String male = resultSet.getString("male");
                String dateOfBirth = resultSet.getString("dateOfBirth");
                int billId = resultSet.getInt("billId");

                customer = new Customer(customerId,billId, name, male, dateOfBirth);
            }
        } catch (SQLException e) {
            e.printStackTrace();
            throw new RuntimeException(e);
        }
        return customer;
    }
    public void deleteCustomerById(int customerId) {
        try {
            connection = ConnectToDatabase.getConnect();
            String sql = "DELETE FROM customer WHERE id = ?";
            preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setInt(1, customerId);
            preparedStatement.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
            throw new RuntimeException(e);
        }
    }
    public void updateCustomerById(int customerId, String name, String male, String dateOfBirth, int billId) {
        try {
            connection = ConnectToDatabase.getConnect();
            String sql = "UPDATE customer SET name = ?, male = ?, dateOfBirth = ?, billId = ? WHERE id = ?";
            preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setString(1, name);
            preparedStatement.setString(2, male);
            preparedStatement.setString(3, dateOfBirth);
            preparedStatement.setInt(4, billId);
            preparedStatement.setInt(5, customerId);
            preparedStatement.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
            throw new RuntimeException(e);
        }
    }

}

