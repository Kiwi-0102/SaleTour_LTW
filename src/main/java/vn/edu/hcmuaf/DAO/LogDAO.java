package vn.edu.hcmuaf.DAO;

import vn.edu.hcmuaf.DB.ConnectToDatabase;
import vn.edu.hcmuaf.bean.Log;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

import static vn.edu.hcmuaf.DB.ConnectToDatabase.closeResources;


public class LogDAO {

    public static Connection connect = null;
    public static PreparedStatement pst = null;
    public static ResultSet rs = null;

    public int insert(Log log) {
        String sql = "INSERT INTO logs(`level`, `userId`, `ipAddress`, `src`, `content`, `createAt`, `status`,`beforeValue`,`currentValue`) VALUES (?, ?, ?, ?, ?, ?, ?,?,?)";
        connect = ConnectToDatabase.getConnect();
        int rowsAffected = 0;
        try {
            pst = connect.prepareStatement(sql);
            pst.setInt(1, log.getLevel());
            pst.setInt(2, log.getId_user());
            pst.setString(3, log.getIp_address().trim().isEmpty() ? "Không xác định" : log.getIp_address());
            pst.setString(4, log.getSrc());
            pst.setString(5, log.getContent());
            pst.setTimestamp(6, log.getCreate_at());
            pst.setInt(7, log.getStatus());
            pst.setString(8, log.getBeforeValue().trim().isEmpty() ? "Không có thay đổi": log.getBeforeValue());
            pst.setString(9, log.getCurrentValue().trim().isEmpty() ? "Không có thay đổi": log.getCurrentValue());

            rowsAffected = pst.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            closeResources(connect, pst, rs);
        }
        return rowsAffected;
    }

    public static ArrayList<Log> getAllLogs(){
        String sql = "select * from logs";
        ArrayList<Log> logs = new ArrayList<>();
        connect = ConnectToDatabase.getConnect();
        try {
            pst = connect.prepareStatement(sql);
            rs = pst.executeQuery();
            while (rs.next()){
                Log log = new Log();
                log.setId(rs.getInt("id"));
                log.setLevel(rs.getInt("level"));
                log.setSrc(rs.getString("src"));
                log.setId_user(rs.getInt("userId"));
                log.setIp_address(rs.getString("ipAddress"));
                log.setContent(rs.getString("content"));
                log.setCreate_at(rs.getTimestamp("createAt"));
                log.setBeforeValue(rs.getString("beforeValue"));
                log.setBeforeValue(rs.getString("currentValue"));

                log.setStatus(rs.getInt("status"));
                logs.add(log);
            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        } finally {
            closeResources(connect, pst, rs);
        }
        return logs;
    }

    public static Log getLogbyId(int id){
        String sql = "select * from logs where id = ?";
        Log log = new Log();
        connect = ConnectToDatabase.getConnect();
        try {
            pst = connect.prepareStatement(sql);
            pst.setInt(1, id);
            rs = pst.executeQuery();
            while (rs.next()){
                log.setId(rs.getInt("id"));
                log.setLevel(rs.getInt("level"));
                log.setSrc(rs.getString("src"));
                log.setId_user(rs.getInt("userId"));
                log.setIp_address(rs.getString("ipAddress"));
                log.setContent(rs.getString("content"));
                log.setCreate_at(rs.getTimestamp("createAt"));
                log.setBeforeValue(rs.getString("beforeValue"));
                log.setBeforeValue(rs.getString("currentValue"));
                log.setStatus(rs.getInt("status"));
            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        } finally {
            closeResources(connect, pst, rs);
        }
        return log;
    }

    public int deleteLogsByIds(List<Integer> ids) {
        String sql = "DELETE FROM logs WHERE id IN (";
        for (int i = 0; i < ids.size(); i++) {
            sql += "?"; // Thêm dấu ? cho mỗi ID
            if (i < ids.size() - 1) {
                sql += ", "; // Thêm dấu phẩy nếu không phải là ID cuối cùng
            }
        }
        sql += ")";

        connect = ConnectToDatabase.getConnect();
        int rowsAffected = 0;
        try {
            pst = connect.prepareStatement(sql);
            // Thiết lập giá trị cho các tham số ?
            for (int i = 0; i < ids.size(); i++) {
                pst.setInt(i + 1, ids.get(i)); // Tham số bắt đầu từ 1, vị trí ID bắt đầu từ 0
            }

            rowsAffected = pst.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            closeResources(connect, pst, rs);
        }
        return rowsAffected;
    }


    public static void main(String[] args) {
        Timestamp timestamp = new Timestamp(System.currentTimeMillis());
        Log log = new Log(1, 3, "0.0.0.1", 1, "127.0.0.1", "Log Test", " ", " ", timestamp, 1);
        LogDAO logDAO = new LogDAO();
        int rowsAffected = logDAO.insert(log);
//        List<Integer> logList = new ArrayList<>();
//        logList.add(18);
//        logList.add(19);
//        System.out.println(logDAO.deleteLogsByIds(logList));
//        System.out.println(logDAO.getLogbyId(30));
    }


}
