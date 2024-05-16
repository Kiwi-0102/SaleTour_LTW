package vn.edu.hcmuaf.DB;
import java.sql.*;

public class ConnectToDatabase {
    public ConnectToDatabase() {
    }

    public static Connection getConnect() {
        String url = "jdbc:mysql://localhost:3306/DA_WEB";
        String user = "root";
        String pass = "";
        Connection connection = null;
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            connection = DriverManager.getConnection(url, user, pass);
//            System.out.println("Connect success");
        } catch (Exception e) {
            System.out.println(e.getMessage());
        }
        return connection;
    }

    public static void executeSql(String sql) throws Exception {
        Connection connect = getConnect();
        PreparedStatement stmt = connect.prepareStatement(sql);
        stmt.executeUpdate();

    }

    public static ResultSet executeQuery(String sql) throws Exception {

        Connection connect = getConnect();
        PreparedStatement stmt = connect.prepareStatement(sql);
        ResultSet rs = stmt.executeQuery();
        return rs;
    }

    public static void closeResources(Connection connection, PreparedStatement preparedStatement, ResultSet rs) {
        try {
            if (rs != null) {
                rs.close();
            }
            if (preparedStatement != null) {
                preparedStatement.close();
            }
            if (connection != null) {
                connection.close();
            }
        } catch (SQLException e) {
            e.printStackTrace();
            throw new RuntimeException(e);
        }
    }


    public static PreparedStatement UseStament(String sql) throws SQLException, Exception {
        return getConnect().prepareStatement(sql);
    }

    public static void main(String[] args) throws Exception {
        System.out.println(getConnect());
    }

}