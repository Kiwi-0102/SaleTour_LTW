package vn.edu.hcmuaf.DAO;

import vn.edu.hcmuaf.DB.ConnectToDatabase;
import vn.edu.hcmuaf.bean.Log;

import java.sql.*;


public class LogDAO {

    public static Connection connect = null;
    public static PreparedStatement pst = null;
    public static ResultSet rs = null;

    public int insert(Log log) {
        String sql = "INSERT INTO logs(`level`, `userId`, `ipAddress`, `src`, `content`, `createAt`, `status`) VALUES (?, ?, ?, ?, ?, NOW(), ?)";
        connect = ConnectToDatabase.getConnect();
        int rowsAffected = 0;
        try {
            pst = connect.prepareStatement(sql);
            pst.setInt(1, log.getLevel());
            pst.setObject(2, log.getId_user() == -1 ? null : log.getId_user());
            pst.setString(3, log.getIp_address().trim().isEmpty() ? "Không xác định" : log.getIp_address());
            pst.setString(4, log.getSrc());
            pst.setString(5, log.getContent());
            pst.setInt(6, log.getStatus());

            rowsAffected = pst.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return rowsAffected;
    }

    public static void main(String[] args) {
        Timestamp timestamp = new Timestamp(System.currentTimeMillis());
        Log log = new Log(1,1,"0.0.0.1","login.jsp","login thành công", timestamp, 0);
        LogDAO logDAO = new LogDAO();
        int rowsAffected = logDAO.insert(log);
        System.out.println(rowsAffected + " row(s) affected.");
    }


}
