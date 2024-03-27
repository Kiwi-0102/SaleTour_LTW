package vn.edu.hcmuaf.DAO;



import vn.edu.hcmuaf.DB.ConnectToDatabase;
import vn.edu.hcmuaf.bean.User;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class UserDAO implements objectDAO {

    public static Map<Integer, User> mapuser = loaduserbyID();
    Connection conn = null;
    PreparedStatement ps = null;
    ResultSet rs = null;


    public UserDAO() {
    }
    private static Connection connection;

    // Constructor để nhận kết nối từ bên ngoài
    public UserDAO(Connection connection) {
        this.connection = connection;
    }


    public static Map<Integer, User> loaduserbyID() {
        Map<Integer, User> mapTemp = new HashMap<>();
        try {
            String sql = "select * from users";
            ResultSet rs = new ConnectToDatabase().executeQuery(sql);
            while (rs.next()) {
                int id = rs.getInt(1);
                String userName = rs.getString(2);
                String email = rs.getString(3);
                String password = rs.getString(4);
                String phoneNumber = rs.getString(5);
                String address = rs.getString(6);
                int roleId = rs.getInt(7);
                User user = new User(id, userName, email, password, phoneNumber, address, roleId);
                mapTemp.put(user.getId(), user);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }

        return mapTemp;
    }

    // Kiem tra xem email nay co ton tai chua hoac bị trung lap khong
    // Neu da bi trung se chuyen thanh 1 tai khoan
    public static Map<String, User> checkMail() {
        Map<String, User> maptempMail = new HashMap<>();
        try {
            String sql = "Select * from users";
            ResultSet rs = ConnectToDatabase.executeQuery(sql);
            while (rs.next()) {
                int idforEmail = rs.getInt(1);
                String userName = rs.getString(2);
                String email = rs.getString(3);
                String password = rs.getString(4);
                String phoneNumber = rs.getString(5);
                String address = rs.getString(6);
                int roleId = rs.getInt(7);
                User user = new User(idforEmail, userName, email, password, phoneNumber, address, roleId);
                maptempMail.put(user.getEmail(), user);
            }
        } catch (Exception e) {
            e.printStackTrace();
            throw new RuntimeException(e);
        }
        return maptempMail;

    }
    public static User getUserByEmail(String email) {
        PreparedStatement preparedStatement = null;
        ResultSet resultSet = null;

        try {
            // Chuẩn bị truy vấn SQL với tham số
            Connection connection;
            connection = ConnectToDatabase.getConnect();
            String sql = "SELECT * FROM users where email =?";
            preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setString(1, email);

            // Thực hiện truy vấn
            resultSet = preparedStatement.executeQuery();

            // Xử lý kết quả trả về từ ResultSet
            if (resultSet.next()) {
                // Lấy thông tin người dùng từ ResultSet và tạo đối tượng User
                int userId = resultSet.getInt(1);
                String userName = resultSet.getString(2);
                String userEmail = resultSet.getString(3);
                String userPassword = resultSet.getString(4);
                String phoneNumber = resultSet.getString(5);
                String address = resultSet.getString(6);
                int roleId = resultSet.getInt(7);

                User user = new User(userId, userName, userEmail, userPassword, phoneNumber, address, roleId);
                return user;

            }

        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            // Đóng tất cả các resource
            try {
                if (resultSet != null) resultSet.close();
                if (preparedStatement != null) preparedStatement.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }

        return null; // Trả về null nếu không tìm thấy người dùng
    }

    public static User checkLogin(String email, String pass) {
        User userbyEmail;
        userbyEmail = getUserByEmail(email);
        if(userbyEmail !=null && userbyEmail.getEmail().equals(email) && userbyEmail.getPassword().equals(pass))
            return userbyEmail;

        return null;
    }
    public List<User> getAllUser() {
        PreparedStatement preparedStatement = null;
        ResultSet resultSet = null;

        List<User> list = new ArrayList<>();

        try {
            Connection connection;
            connection = ConnectToDatabase.getConnect();
            String sql = "SELECT * FROM users";
            preparedStatement = connection.prepareStatement(sql);


            // Thực hiện truy vấn
            resultSet = preparedStatement.executeQuery();
            while (resultSet.next()) {
                int userId = resultSet.getInt(1);
                String userName = resultSet.getString(2);
                String userEmail = resultSet.getString(3);
                String userPassword = resultSet.getString(4);
                String phoneNumber = resultSet.getString(5);
                String address = resultSet.getString(6);
                int roleId = resultSet.getInt(7);
                User user = new User(userId, userName, userEmail, userPassword, phoneNumber, address, roleId);
                list.add(user);
            }
        } catch (Exception e) {
        }
        return list;
    }
    public void addUser(User user) {
        try (Connection connection = ConnectToDatabase.getConnect()) {
            // Kiểm tra xem email đã tồn tại hay chưa

                // Email không tồn tại, thêm người dùng vào cơ sở dữ liệu
                try (PreparedStatement preparedStatement = connection.prepareStatement("INSERT INTO users (username, email, password) VALUES (?, ?, ?)")) {
                    preparedStatement.setString(1, user.getUserName());
                    preparedStatement.setString(2, user.getEmail());
                    preparedStatement.setString(3, user.getPassword());

                    preparedStatement.executeUpdate();
                }

        } catch (SQLException e) {
            e.printStackTrace(); // In lỗi để bạn có thể xác định vấn đề
        }
    }


    public static boolean editInforUser(String name, String phone, String address, String email){
        String sql = "update users set userName = ?,phoneNumber= ?, address=? where email = ?";
        boolean kq = false;
        Connection con = ConnectToDatabase.getConnect();
        try {
            PreparedStatement pst = con.prepareStatement(sql);
            pst.setString(1,name);
            pst.setString(2,phone);
            pst.setString(3,address);
            pst.setString(4,email);

            pst.executeUpdate();
            kq = true;
        } catch (Exception e) {
            System.out.println("Lỗi khi update thông tin user" + e.getMessage());
        }
        System.out.println("kq"+kq);
        return kq;

    }

    public boolean isEmailExists(String email) {
        Connection conn = null;
        PreparedStatement preparedStatement = null;
        ResultSet rs = null;

        try {
            // Lấy kết nối đến cơ sở dữ liệu
            conn = ConnectToDatabase.getConnect();

                    // Truy vấn kiểm tra xem tên người dùng đã tồn tại hay chưa
                    String sql = "SELECT * FROM users WHERE email=?";
            preparedStatement = conn.prepareStatement(sql);
            preparedStatement.setString(1, email);
            rs = preparedStatement.executeQuery();

            // Trả về true nếu có kết quả, ngược lại trả về false
            return rs.next();
        } catch (SQLException e) {
            e.printStackTrace();
            return false;
        }
    }
    @Override
    public boolean add(Object obj) {
        return false;
    }

    @Override
    public boolean delete(String id) {
        return false;
    }

    @Override
    public boolean edit(String id, Object obj) {
        return false;
    }

    @Override
    public void read() {

    }


    public static void main(String[] args) {

            // add User
        User u = new User("asa","122131122212@gmail.com","123321");
                UserDAO userDao = new UserDAO();
//                System.out.println(userDao.isEmailExists("thuc9g@gmail.com"));
                userDao.addUser(u);

            // Giả sử bạn có các giá trị tham số như sau:
//            String name = "Vu 123";
//            String phone = "0913415077";
//            String address = "Hẻm 482 Nơ Trang Long, Phường 13, Bình Thạnh, Thành phố Hồ Chí Minh, Việt Nam";
//            String email = "21130615@st.hcmuaf.edu.vn";
//
//            // Gọi phương thức editInforUser để kiểm tra
//             editInforUser(name, phone, address, email);
            /// check trung UserName



    }
}
