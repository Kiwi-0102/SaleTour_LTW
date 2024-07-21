package vn.edu.hcmuaf.DAO;

import vn.edu.hcmuaf.DB.ConnectToDatabase;
import vn.edu.hcmuaf.bean.Log;

import java.sql.*;
import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
import java.util.ArrayList;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import static vn.edu.hcmuaf.Controller.renuveAddproduct.getQuantity;
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
                log.setCurrentValue(rs.getString("currentValue"));
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

    public static ArrayList<Log> getLoglogin(){
        ArrayList<Log> logs = new ArrayList<>();

//        String sql = "SELECT * FROM logs where SELECT * FROM logs WHERE LOWER(content) LIKE '%login%'";
        connect = ConnectToDatabase.getConnect();
        try {
            pst = connect.prepareStatement("SELECT * FROM logs WHERE LOWER(content) LIKE '%login%'");
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
                log.setCurrentValue(rs.getString("currentValue"));
                log.setStatus(rs.getInt("status"));
                logs.add(log);
            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }finally {
            closeResources(connect,pst,rs);
        }
        return logs;
    }

    public static ArrayList<Log> getLognewProduct(){
        ArrayList<Log> logs = new ArrayList<>();

//        String sql = "SELECT * FROM logs where SELECT * FROM logs WHERE LOWER(content) LIKE '%login%'";
        connect = ConnectToDatabase.getConnect();
        try {
            pst = connect.prepareStatement("SELECT * FROM logs\n" +
                    "WHERE `content` LIKE '%Thêm sản phẩm mới%';");
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
                log.setCurrentValue(rs.getString("currentValue"));
                log.setStatus(rs.getInt("status"));
                logs.add(log);
            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }finally {
            closeResources(connect,pst,rs);
        }
        return logs;
    }


    public static ArrayList<Log> getLogbyday(int day){
        ArrayList<Log> logs = new ArrayList<>();

        String sql = "SELECT * " + "FROM logs " + "WHERE createAt >= DATE_SUB(CURRENT_DATE, INTERVAL ? DAY) " + "ORDER BY createAt DESC";
        connect = ConnectToDatabase.getConnect();
        try {
            pst = connect.prepareStatement(sql);
            pst.setInt(1,day);
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
                log.setCurrentValue(rs.getString("currentValue"));
                log.setStatus(rs.getInt("status"));
                logs.add(log);
            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }finally {
            closeResources(connect,pst,rs);
        }
        return logs;
    }

    public static ArrayList<Log> getstatustLogin(String status){
        ArrayList<Log> logs = new ArrayList<>();

        connect = ConnectToDatabase.getConnect();
        try {
            pst = connect.prepareStatement("SELECT * FROM logs WHERE LOWER(content) LIKE ?");
            pst.setString(1,status);
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
                log.setCurrentValue(rs.getString("currentValue"));
                log.setStatus(rs.getInt("status"));
                logs.add(log);
            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }finally {
            closeResources(connect,pst,rs);
        }
        return logs;
    }
    public static ArrayList<Log> getLogNewUpdateProduct(){
        ArrayList<Log> logs = new ArrayList<>();

        connect = ConnectToDatabase.getConnect();
        try {
            pst = connect.prepareStatement("SELECT * FROM logs WHERE content LIKE 'Sửa sản phẩm thành công%' AND status = '0'");
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
                log.setCurrentValue(rs.getString("currentValue"));
                log.setStatus(rs.getInt("status"));
                logs.add(log);
            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }finally {
            closeResources(connect,pst,rs);
        }
        return logs;
    }

    public static LocalDate extractStartTime(String str) {
        String pattern = "startTime\\s*=\\s*(\\d{4}-\\d{2}-\\d{2})";
        Pattern regex = Pattern.compile(pattern);
        Matcher matcher = regex.matcher(str);

        if (matcher.find()) {
            String dateString = matcher.group(1);
            DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyy-MM-dd");
            return LocalDate.parse(dateString, formatter);
        }

        throw new IllegalArgumentException("No startTime found in the string: " + str);
    }

    public static boolean isStartTimeGreater(String str1, String str2) {
        LocalDate startTime1 = extractStartTime(str1);
        LocalDate startTime2 = extractStartTime(str2);

        return startTime2.isAfter(startTime1);
    }

    public static ArrayList<Log> getAllnewProduct(){
        ArrayList<Log> logs = new ArrayList<>();
        ArrayList<Log> newP = getLognewProduct();
        ArrayList<Log> newUP = getLogNewUpdateProduct();
        for (Log log: newP) {
            logs.add(log);
        }
        for (Log log: newUP) {
            if(isStartTimeGreater(log.getBeforeValue(),log.getCurrentValue())){
                logs.add(log);
            }
        }
        return logs;
    }
    public static Integer getQuantity(String input) {
        // Định nghĩa các mẫu tìm kiếm
        Pattern pattern1 = Pattern.compile("Số lượng vé: (\\d+)");
        Pattern pattern2 = Pattern.compile("quantity (\\d+)");

        // Tạo đối tượng Matcher cho các mẫu
        Matcher matcher1 = pattern1.matcher(input);
        Matcher matcher2 = pattern2.matcher(input);

        // Tìm và trả về số lượng vé từ chuỗi đầu tiên nếu có
        if (matcher1.find()) {
            return Integer.parseInt(matcher1.group(1));
        }

        // Nếu không tìm thấy số lượng vé, tìm quantity từ chuỗi thứ hai
        if (matcher2.find()) {
            return Integer.parseInt(matcher2.group(1));
        }

        // Nếu không tìm thấy kết quả phù hợp, trả về null hoặc bất kỳ giá trị nào bạn muốn
        return null;
    }

    public static void main(String[] args) {
//        Timestamp timestamp = new Timestamp(System.currentTimeMillis());
//        Log log = new Log(1, 3, "0.0.0.1", 1, "127.0.0.1", "Log Test", "abc123", "dfe456", timestamp, 1);
//        LogDAO logDAO = new LogDAO();
//        System.out.println(LogDAO.getLogNewUpdateProduct().size());
//        System.out.println(LogDAO.getLognewProduct().size());
//        System.out.println(LogDAO.getAllnewProduct().size());
//        boolean result = isStartTimeGreater(getLogbyId(129).getBeforeValue(),getLogbyId(129).getCurrentValue());
//        System.out.println("Is startTime in str2 greater than startTime in str1? " + result);
//        public static void main(String[] args) {
            System.out.println(getQuantity(LogDAO.getLogbyId(118).getCurrentValue()));
//        }
    }


}
