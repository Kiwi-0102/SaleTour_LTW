package vn.edu.hcmuaf.DAO;

import vn.edu.hcmuaf.DB.ConnectToDatabase;
import vn.edu.hcmuaf.bean.Tour;
import vn.edu.hcmuaf.bean.*;

import java.sql.*;
import java.sql.ResultSet;
import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
import java.util.ArrayList;

import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import static vn.edu.hcmuaf.DB.ConnectToDatabase.closeResources;

public class TourDao {
    static Connection connection;
    static ResultSet rs = null;
    static PreparedStatement preparedStatement = null;

    public static List<Tour> findAll() {
        List<Tour> tours = new ArrayList<>();
        try {
            String sql = "Select * from tours";
            ResultSet rs = ConnectToDatabase.executeQuery(sql);
            while (rs.next()) {
                int id = rs.getInt("id");
                String region = rs.getString("region");
                int idDis = rs.getInt("discountId");
                String name = rs.getString("name");
                String image = rs.getString("image");
                int price = rs.getInt("price");
                String startTime = rs.getString("startTime");
                String duration = rs.getString("duration");
                String schedule = rs.getString("schedule");
                String description = rs.getString("description");
                int quantity = rs.getInt("quantity");
                Tour tour = new Tour(id, region, idDis, name, image, price, startTime, duration, schedule, description, quantity);
                tours.add(tour);
            }
        } catch (Exception e) {
            e.printStackTrace();
            throw new RuntimeException(e);
        }
        return tours;
    }

    public static void Updatequatity(int quatity,int id){
        Tour tour = null;
        connection = ConnectToDatabase.getConnect();
        String sql ="UPDATE tours SET quantity = ? where id = ?";
        try {
            preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setInt(1, quatity);
            preparedStatement.setInt(2, id);
            preparedStatement.executeUpdate();
        } catch (SQLException e) {
            throw new RuntimeException(e);
        } finally {
            closeResources(connection, preparedStatement, rs);
        }
    }

    public static Tour findtourbyid(int id) {
        Tour tour = null;
        connection = ConnectToDatabase.getConnect();
        try {
            String sql = "SELECT * FROM tours where id =?";
            preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setInt(1, id);
            rs = preparedStatement.executeQuery();
            while (rs.next()) {
                tour = new Tour();
                int id1 = rs.getInt("id");
                String region = rs.getString("region");
                int idDis = rs.getInt("discountId");
                String name = rs.getString("name");
                String image = rs.getString("image");
                int price = rs.getInt("price");
                String startTime = rs.getString("startTime");
                String duration = rs.getString("duration");
                String schedule = rs.getString("schedule");
                String description = rs.getString("description");
                int quantity = rs.getInt("quantity");

                tour.setId(id1);
                tour.setRegion(region);
                tour.setDiscountId(idDis);
                tour.setName(name);
                tour.setImage(image);
                tour.setPrice(price);
                tour.setDuration(duration);
                tour.setStartTime(startTime);
                tour.setSchedule(schedule);
                tour.setDescription(description);
                tour.setQuantity(quantity);
            }
        } catch (Exception e) {
            e.printStackTrace();
            throw new RuntimeException(e);
        } finally {
            closeResources(connection, preparedStatement, rs);
        }
        return tour;
    }

    public static boolean updateTour(String region,String name,int price,String Starttime,String schedule,String description,int quantity,int id) {
        Connection connection = null;
        PreparedStatement preparedStatement = null;
        boolean updateStatus = false;
        try {
            connection = ConnectToDatabase.getConnect();
            String sql = "UPDATE tours SET region = ?, name = ?, price = ?, startTime = ?, schedule = ?, description = ?, quantity = ? WHERE id = ?";
            preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setString(1, region);
            preparedStatement.setString(2, name);
            preparedStatement.setInt(3, price);
            preparedStatement.setString(4, Starttime);
            preparedStatement.setString(5, schedule);
            preparedStatement.setString(6, description);
            preparedStatement.setInt(7, quantity);
            preparedStatement.setInt(8, id);

            int rowsAffected = preparedStatement.executeUpdate();
            updateStatus = rowsAffected > 0;
        } catch (Exception e) {
            e.printStackTrace();
            throw new RuntimeException(e);
        } finally {
            closeResources(connection, preparedStatement, null);
        }
        return updateStatus;
    }
    public Tour findtourbyID(int id) {
        Tour tour = null;
        connection = ConnectToDatabase.getConnect();
        try {
            String sql = "SELECT * FROM tours where id =?";
            preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setInt(1, id);
            rs = preparedStatement.executeQuery();
            while (rs.next()) {
                tour = new Tour();
                int id1 = rs.getInt("id");
                String region = rs.getString("region");
                int idDis = rs.getInt("discountId");
                String name = rs.getString("name");
                String image = rs.getString("image");
                int price = rs.getInt("price");
                String startTime = rs.getString("startTime");
                String duration = rs.getString("duration");
                String schedule = rs.getString("schedule");
                String description = rs.getString("description");
                tour.setId(id1);
                tour.setRegion(region);
                tour.setDiscountId(idDis);
                tour.setName(name);
                tour.setImage(image);
                tour.setPrice(price);
                tour.setDuration(duration);
                tour.setStartTime(startTime);
                tour.setSchedule(schedule);
                tour.setDescription(description);
            }
        } catch (Exception e) {
            e.printStackTrace();
            throw new RuntimeException(e);
        } finally {
            closeResources(connection, preparedStatement, rs);
        }
        return tour;
    }

    public static List<valies> getValiTour(ArrayList<valies> valiList) {
        List<valies> product = new ArrayList<>();
        try {
            if (valiList.size() > 0) {
                for (valies vl : valiList) {
                    connection = ConnectToDatabase.getConnect();
                    String sql = "SELECT * FROM tours where id =?";
                    preparedStatement = connection.prepareStatement(sql);
                    preparedStatement.setInt(1, vl.getId());
                    rs = preparedStatement.executeQuery();
                    while (rs.next()) {
                        valies row = new valies();
                        row.setId(rs.getInt("id"));
                        row.setNumAdult(vl.getNumAdult());
                        row.setNumChildren(vl.getNumChildren());
                        row.setImage(rs.getString("image"));
                        row.setDuration(rs.getString("duration"));
                        row.setSchedule(rs.getString("schedule"));
                        row.setPrice(rs.getInt("price"));
                        row.setName(rs.getString("name"));
                        product.add(row);
//                        insertVali(valiList);
                    }
                }
            }

        } catch (Exception e) {
            e.printStackTrace();
            throw new RuntimeException(e);
        } finally {
            closeResources(connection, preparedStatement, rs);
        }
        return product;
    }

    public valies findvalibyid(int id) throws SQLException {
        valies row = null;
        try {
            connection = ConnectToDatabase.getConnect();
            String sql = "SELECT * FROM valies where id =?";
            preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setInt(1, id);
            rs = preparedStatement.executeQuery();
            while (rs.next()) {
                row = new valies();
                row.setId(id);
                row.setNumAdult(rs.getInt("numAdult"));
                row.setNumChildren(rs.getInt("numChildren"));
            }
        } catch (Exception e) {
            e.printStackTrace();
            throw new RuntimeException(e);
        } finally {
            closeResources(connection, preparedStatement, rs);
        }
        return row;
    }

    public int numAldul (int num){
        return num;
    }

    public static void insertVali(ArrayList<valies> valiList) {
        try {
            for (valies vl : valiList) {
                connection = ConnectToDatabase.getConnect();
                String sql = "INSERT INTO vali (userId, tourId, numChildren, numAdult) VALUES (?, ?, ?, ?)";
                preparedStatement = connection.prepareStatement(sql);
                preparedStatement.setInt(1, vl.getUserId());
                preparedStatement.setInt(2, vl.getTourId());
                preparedStatement.setInt(3, vl.getNumAdult());
                preparedStatement.setInt(4, vl.getNumChildren());
                preparedStatement.executeUpdate();
            }
        } catch (Exception e) {
            e.printStackTrace();
            throw new RuntimeException(e);
        } finally {
            closeResources(connection, preparedStatement, rs);
        }
    }

    public int getTotalCartPrice(ArrayList<valies> valiList) {
        int sum = 0;
        double cout = 0.6;
        try {
            if (valiList.size() > 0) {
                for (valies vl : valiList) {
                    connection = ConnectToDatabase.getConnect();
                    String sql = "SELECT * FROM tours where id =?";
                    preparedStatement = connection.prepareStatement(sql);
                    preparedStatement.setInt(1, vl.getId());
                    rs = preparedStatement.executeQuery();

                    while (rs.next()) {
                        sum += rs.getInt("price") * vl.getNumAdult();
                        sum += rs.getInt("price") * vl.getNumChildren() * cout;
                    }

                }
            }

        } catch (SQLException e) {
            e.printStackTrace();
            System.out.println(e.getMessage());
        } finally {
            closeResources(connection, preparedStatement, rs);
        }
        return sum;
    }

    public static ArrayList<Tour> getListTourbySearch(String search) {
        ArrayList<Tour> listSearch = new ArrayList<>();

        String sql = "SELECT * FROM tours WHERE schedule LIKE ? ORDER BY id DESC";
        Connection connect = ConnectToDatabase.getConnect();

        try {
            PreparedStatement pst = connect.prepareStatement(sql);
            pst.setString(1, "%" + search + "%");

            ResultSet rs = pst.executeQuery();
            while (rs.next()) {
                int id1 = rs.getInt("id");
                String region = rs.getString("region");
                int idDis = rs.getInt("discountId");
                String name = rs.getString("name");
                String image = rs.getString("image");
                int price = rs.getInt("price");
                String startTime = rs.getString("startTime");
                String duration = rs.getString("duration");
                String schedule = rs.getString("schedule");
                String description = rs.getString("description");
                Tour tour1 = new Tour(id1, region, idDis, name, image, price, startTime, duration, schedule, description);
                listSearch.add(tour1);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return listSearch;
    }

    public void savePaymentInfo(int id, String date, String selectedIds) {
        connection = ConnectToDatabase.getConnect();
        String sql = "INSERT INTO options (departDate, serviceId, valiId) VALUES (?, ?, ?)";
        try {
            // Kết nối đến cơ sở dữ liệu
            preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setString(1, date);
            preparedStatement.setString(2, selectedIds);
            preparedStatement.setInt(3, id);
            preparedStatement.executeUpdate();

        } catch (SQLException e) {
            throw new RuntimeException(e);
        } finally {
            closeResources(connection, preparedStatement, rs);
        }
    }

    public static int addTour(String region, int discountID, String name, String image, int price, String startTime, String duration, String schedule, String des, int quantity) {
        String sql = "INSERT INTO tours (region, discountId, name, image, price, startTime, duration, schedule, description, quantity) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
        Connection connect = ConnectToDatabase.getConnect();
        try {
            preparedStatement = connect.prepareStatement(sql, Statement.RETURN_GENERATED_KEYS);
            preparedStatement.setString(1, region);
            preparedStatement.setInt(2, discountID);
            preparedStatement.setString(3, name);
            preparedStatement.setString(4, image);
            preparedStatement.setInt(5, price);
            preparedStatement.setString(6, startTime);
            preparedStatement.setString(7, duration);
            preparedStatement.setString(8, schedule);
            preparedStatement.setString(9, des);
            preparedStatement.setInt(10, quantity);
            preparedStatement.executeUpdate();
            ResultSet generatedKeys = preparedStatement.getGeneratedKeys();
            if (generatedKeys.next()) {
                return generatedKeys.getInt(1);
            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        } finally {
            closeResources(connect, preparedStatement, rs); // Sử dụng biến connect thay vì connection
        }
        return -1;
    }


    public void deleteTour(int tourId) {
        String sql = "DELETE FROM tours WHERE id = ?";

        Connection connect = ConnectToDatabase.getConnect();
        try {
            preparedStatement = connect.prepareStatement(sql);
            preparedStatement.setInt(1, tourId);
            preparedStatement.executeUpdate();
        } catch (SQLException e) {
            throw new RuntimeException(e);
        } finally {
            closeResources(connection, preparedStatement, rs);
        }
    }

    public void deleteDependentValies(int tourId) {
        String sql = "DELETE FROM valies WHERE tourId = ?";

        Connection connect = ConnectToDatabase.getConnect();
        try {
            preparedStatement = connect.prepareStatement(sql);
            preparedStatement.setInt(1, tourId);
            preparedStatement.executeUpdate();
        } catch (SQLException e) {
            throw new RuntimeException(e);
        } finally {
            closeResources(connection, preparedStatement, rs);
        }
    }

    public void deleteValies(int valiId) {
        String sql = "DELETE FROM valies WHERE id = ?";

        Connection connect = ConnectToDatabase.getConnect();
        try {
            preparedStatement = connect.prepareStatement(sql);
            preparedStatement.setInt(1, valiId);
            preparedStatement.executeUpdate();
        } catch (SQLException e) {
            throw new RuntimeException(e);
        } finally {
            closeResources(connection, preparedStatement, rs);
        }
    }

    public void deleteDependentOption(int valiId) {
        String sql = "DELETE FROM options WHERE valiId = ?";

        Connection connect = ConnectToDatabase.getConnect();
        try {
            preparedStatement = connect.prepareStatement(sql);
            preparedStatement.setInt(1, valiId);
            preparedStatement.executeUpdate();
        } catch (SQLException e) {
            throw new RuntimeException(e);
        } finally {
            closeResources(connection, preparedStatement, rs);
        }
    }

    public void deletetOption(int id) {
        String sql = "DELETE FROM options WHERE id = ?";

        Connection connect = ConnectToDatabase.getConnect();
        try {
            preparedStatement = connect.prepareStatement(sql);
            preparedStatement.setInt(1, id);
            preparedStatement.executeUpdate();
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }

    public void deleteDependentbills(int valiId) {
        String sql = "DELETE FROM bills WHERE valiId = ?";

        Connection connect = ConnectToDatabase.getConnect();
        try {
            preparedStatement = connect.prepareStatement(sql);
            preparedStatement.setInt(1, valiId);
            preparedStatement.executeUpdate();
        } catch (SQLException e) {
            throw new RuntimeException(e);
        } finally {
            closeResources(connection, preparedStatement, rs);
        }
    }

    public void modifyTour(int tourId, String region, int discountID, String name, String image, int price, String startTime, String duration, String schedule, String des) {
        String sql = "UPDATE tours SET region=?, discountId=?, name=?, image=?, price=?, startTime=?, duration=?, schedule=?, description=? WHERE id=?";

        Connection connect = ConnectToDatabase.getConnect();
        try {
            preparedStatement = connect.prepareStatement(sql);
            preparedStatement.setString(1, region);
            preparedStatement.setInt(2, discountID);
            preparedStatement.setString(3, name);
            preparedStatement.setString(4, image);
            preparedStatement.setInt(5, price);
            preparedStatement.setString(6, startTime);
            preparedStatement.setString(7, duration);
            preparedStatement.setString(8, schedule);
            preparedStatement.setString(9, des);
            preparedStatement.setInt(10, tourId);
            preparedStatement.executeUpdate();
        } catch (SQLException e) {
            throw new RuntimeException(e);
        } finally {
            closeResources(connection, preparedStatement, rs);
        }
    }

    public List<ImageTours> getImageByIdTours(int id) {
        List<ImageTours> res = new ArrayList<>();
        try {
            PreparedStatement ps = ConnectToDatabase.getConnect().prepareStatement("select id, URL from images where images.tourId = ?");
            ps.setInt(1, id);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                res.add(new ImageTours(rs.getInt(1), rs.getString(2)));
            }
            rs.close();
            ps.close();
        } catch (SQLException e) {
            throw new RuntimeException(e);
        } finally {
            closeResources(connection, preparedStatement, rs);
        }
        return res;
    }

    public static void insertImage(String URL,int idtour) {
        try {
            PreparedStatement ps = ConnectToDatabase.getConnect().prepareStatement("insert into images(URL,tourId) values (?,?)");
            ps.setString(1, URL);
            ps.setInt(2, idtour);
            ps.executeUpdate();
            ps.close();
        } catch (SQLException e) {
            throw new RuntimeException(e);
        } finally {
            closeResources(connection, preparedStatement, rs);
        }
    }

    public static void insertDetailDuration(int tourId, String day1, String day2, String day3, String day4, String day5) {
        Connection connection = null;
        PreparedStatement preparedStatement = null;
        try {
            connection = ConnectToDatabase.getConnect();
            String sql = "INSERT INTO detailduration(tourId, day1, day2, day3, day4, day5) VALUES (?, ?, ?, ?, ?, ?)";
            preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setInt(1, tourId);
            preparedStatement.setString(2, day1);
            preparedStatement.setString(3, day2);
            preparedStatement.setString(4, day3);
            preparedStatement.setString(5, day4);
            preparedStatement.setString(6, day5);
            preparedStatement.executeUpdate();
        } catch (SQLException e) {
            throw new RuntimeException(e);
        } finally {
            if (preparedStatement != null) {
                try {
                    preparedStatement.close();
                } catch (SQLException e) {
                    e.printStackTrace();
                }
            }
            if (connection != null) {
                try {
                    connection.close();
                } catch (SQLException e) {
                    e.printStackTrace();
                }
            }
        }
    }

    public List<Duration> getDetldurationByIdTours(int id) {
        List<Duration> res = new ArrayList<>();
        try {
            PreparedStatement ps = ConnectToDatabase.getConnect().prepareStatement("select day1,day2,day3,day4,day5 from detailduration where detailduration.tourId = ?");
            ps.setInt(1, id);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                String day1 = rs.getString(1);
                String day2 = rs.getString(2);
                String day3 = rs.getString(3);
                String day4 = rs.getString(4);
                String day5 = rs.getString(5);
                Duration dr = new Duration(day1,day2,day3,day4,day5);
                res.add(dr);
            }
            rs.close();
            ps.close();
        } catch (SQLException e) {
            throw new RuntimeException(e);
        } finally {
            closeResources(connection, preparedStatement, rs);
        }
        return res;
    }

    public static int soluongdadat(int id){
        int total = 0;
        Connection connect = ConnectToDatabase.getConnect();
        try {
            preparedStatement = connect.prepareStatement("SELECT numChildren,numAdult FROM `booking`where STR_TO_DATE(dateStart, '%Y-%m-%d')>CURRENT_DATE() AND tourId = ?");
            preparedStatement.setInt(1, id);
            ResultSet rs = preparedStatement.executeQuery();
            while (rs.next()) {
               int numchildren = rs.getInt("numChildren");
                int numAdult = rs.getInt("numAdult");
                total +=numchildren+numAdult;
            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        } finally {
            closeResources(connection, preparedStatement, rs);
        }
        return total;
    }
    public static int sochoconlai(int id){
        TourDao td = new  TourDao();
        int tours = td.findtourbyid(id).getQuantity();
        int ketqua = tours - td.soluongdadat(id);
        return ketqua;
    }
    //Nhập vào lịch trình tour trả ra số ngày
    public static int getNumberOfDays(String input) {
        Pattern pattern = Pattern.compile("\\d+");
        Matcher matcher = pattern.matcher(input);

        if (matcher.find()) {
            String number = matcher.group();
            return Integer.parseInt(number);
        } else {
            return 0; // Trả về 0 nếu không tìm thấy số
        }
    }

    public static String getEnd(int idtour) {
        String startTimeString =  new TourDao().findtourbyID(idtour).getStartTime(); // Chuỗi ngày bắt đầu
        LocalDate startTime = LocalDate.parse(startTimeString); // Chuyển đổi chuỗi thành LocalDate

        // Cộng thêm 3 ngày vào ngày bắt đầu
        LocalDate endTime = startTime.plusDays(getNumberOfDays(new TourDao().findtourbyID(idtour).getDuration()));

        // Định dạng lại ngày kết thúc
        DateTimeFormatter formatter = DateTimeFormatter.ofPattern("EEEE, yyyy-MM-dd");
        String formattedEndDate = endTime.format(formatter);

//        System.out.println("Ngày kết thúc: " + formattedEndDate);
        return formattedEndDate;
    }

            public static void main(String[] args) {

        new TourDao().Updatequatity(100,1);
        }

}



