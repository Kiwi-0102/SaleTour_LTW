package vn.edu.hcmuaf.DAO;

import vn.edu.hcmuaf.DB.ConnectToDatabase;
import vn.edu.hcmuaf.bean.Tour;
import vn.edu.hcmuaf.bean.*;

import java.sql.*;
import java.sql.ResultSet;
import java.util.ArrayList;

import java.util.List;

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
                Tour tour = new Tour(id, region, idDis, name, image, price, startTime, duration, schedule, description);
                tours.add(tour);
            }
        } catch (Exception e) {
            e.printStackTrace();
            throw new RuntimeException(e);
        }
        return tours;
    }



    public static Tour findtourbyid(int id) {
        Tour tour = null;

        try {
            connection = ConnectToDatabase.getConnect();
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
        }
        return tour;
    }

    public Tour findtourbyID(int id) {
        Tour tour = null;
        try {
            connection = ConnectToDatabase.getConnect();
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
        }
    }


    public void addTour(String region, int discountID, String name, String image, int price, String startTime, String duration, String schedule, String des) {
        String sql = "INSERT INTO tours (region, discountId, name, image, price, startTime, duration, schedule, description) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?)";

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
            preparedStatement.executeUpdate();
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
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
        }
    }


    public static void main(String[] args) {
//            // Gọi phương thức getListTourbySearch
//            String searchKeyword = "Sa pa";
//            List<Tour> searchResults = TourDao.getListTourbySearch(searchKeyword);
//
//            // Hiển thị kết quả
//            if (searchResults.isEmpty()) {
//                System.out.println("Không tìm thấy kết quả cho từ khóa: " + searchKeyword);
//            } else {
//                System.out.println("Kết quả tìm kiếm cho từ khóa: " + searchKeyword);
//                for (Tour tour : searchResults) {
//                    System.out.println("Tour ID: " + tour.getId());
//                    System.out.println("Tên tour: " + tour.getName());
//                    // Hiển thị thêm các thông tin khác nếu cần
//                    System.out.println("----------------------------------");
//                }
//            }

        //add
                    TourDao dao = new TourDao();
                     dao.addTour("1",1,"1","1",1111,"1111","111","111","!1111");


    }


}
