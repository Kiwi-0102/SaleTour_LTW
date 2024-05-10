package vn.edu.hcmuaf.DAO;

import vn.edu.hcmuaf.DB.ConnectToDatabase;
import vn.edu.hcmuaf.bean.Log;
import vn.edu.hcmuaf.bean.LogLevel;
import vn.edu.hcmuaf.bean.User;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;


public class LogDAO {

    public static Connection connect = null;
    public static PreparedStatement pst = null;
    public static ResultSet rs = null;

    public int insert(Log log) {
        String sql = "INSERT INTO logs(`level`, `address`, `ip`, `beforeValue`, `afterValue`) VALUES (?, ?, ?, ?, ?)";
        connect = ConnectToDatabase.getConnect();
        int rowsAffected = 0;
        try {
            pst = connect.prepareStatement(sql);
            pst.setString(1, log.getLogLevel().toString());
            pst.setString(2, log.getAddress());
            pst.setString(3, log.getIp());
            pst.setString(4, log.getBeforeValue());
            pst.setString(5, log.getAfterValue());

            rowsAffected = pst.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return rowsAffected;
    }
    public List<Log> findAll() {
        PreparedStatement preparedStatement = null;
        ResultSet resultSet = null;

        List<Log> list = new ArrayList<>();

        try {
            Connection connection;
            connection = ConnectToDatabase.getConnect();
            String sql = "SELECT id, level, address, ip, beforeValue, afterValue, createAt FROM logs";
            preparedStatement = connection.prepareStatement(sql);


            // Thực hiện truy vấn
            resultSet = preparedStatement.executeQuery();
            while (resultSet.next()) {
                int id = resultSet.getInt(1);
                String levelString = resultSet.getString(2);
                LogLevel logLevel = LogLevel.valueOf(levelString);
                String address = resultSet.getString(3);
                String ip = resultSet.getString(4);
                String beforeValue = resultSet.getString(5);
                String afterValue = resultSet.getString(6);
                Timestamp createAt = resultSet.getTimestamp(7);
                Log log = new Log(id, logLevel, address, ip,  beforeValue,  afterValue, createAt);
                list.add(log);
            }
        } catch (Exception e) {
        }
        return list;
    }

    public static void main(String[] args) {
        Log log = new Log(LogLevel.valueOf("INFO"),"192,15","user","before","after");
        LogDAO logDAO = new LogDAO();
        int rowsAffected = logDAO.insert(log);
        //System.out.println(rowsAffected + " row(s) affected.");
        System.out.println(logDAO.findAll());
    }

}
