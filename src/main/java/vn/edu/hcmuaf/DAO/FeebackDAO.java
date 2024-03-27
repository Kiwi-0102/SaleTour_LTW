package vn.edu.hcmuaf.DAO;

import vn.edu.hcmuaf.DB.ConnectToDatabase;
import vn.edu.hcmuaf.bean.Feedback;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

public class FeebackDAO {
    public static boolean addFeedback(int idUser, String text){
        String sql = "insert into feedbacks(userId,text,date) values (?,?,CURDATE())";
        boolean kq = false;
        Connection con = ConnectToDatabase.getConnect();
        try {
            PreparedStatement pst = con.prepareStatement(sql);
            pst.setInt(1, idUser);
            pst.setString(2, text);
            pst.executeUpdate();
            kq = true;
        } catch (Exception e) {
            System.out.println("Lỗi khi thêm feedback" + e.getMessage());
        }
        System.out.println("kq"+kq);
        return kq;
    }
    public  List<Feedback> getFeedback() {
        List<Feedback> feedbacks = new ArrayList<Feedback>();
        try {
            String sql = "Select * from feedbacks";
            ResultSet rs = ConnectToDatabase.executeQuery(sql);
            while (rs.next()) {
                int id = rs.getInt("id");
                int userId = rs.getInt("userId");
                String text = rs.getString("text");
                Date date = rs.getDate("date");
                Feedback f = new Feedback(id,userId,text,date);
                feedbacks.add(f);
            }
        } catch (Exception e) {
            e.printStackTrace();
            throw new RuntimeException(e);
        }
        return feedbacks;
    }
    public static void deleteFeedback(int id){
        String sql = "delete from feedbacks where id = ?";
        boolean kq = false;
        Connection con = ConnectToDatabase.getConnect();
        try {
            PreparedStatement pst = con.prepareStatement(sql);
            pst.setInt(1, id);
            pst.executeUpdate();
            kq = true;
        } catch (Exception e) {
            System.out.println("Lỗi khi xóa feedback" + e.getMessage());
        }
        System.out.println("kq"+kq);
    }

    public static void updateFeedback(String text,int id){
        String sql = "UPDATE feedbacks set text =? where id = ?";
        boolean kq = false;
        Connection con = ConnectToDatabase.getConnect();
        try {
            PreparedStatement pst = con.prepareStatement(sql);
            pst.setString(1, text);
            pst.setInt(2, id);
           int row = pst.executeUpdate();
           if (row>0) {
               kq = true;
           }
        } catch (Exception e) {
            System.out.println("Lỗi khi sửa feedback" + e.getMessage());
        }
        System.out.println("kq"+kq);
    }


    public static void main(String[] args) {
            FeebackDAO f = new FeebackDAO();
    System.out.println(f.getFeedback());
    }



    }

