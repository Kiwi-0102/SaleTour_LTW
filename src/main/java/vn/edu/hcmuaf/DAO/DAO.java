package vn.edu.hcmuaf.DAO;

import vn.edu.hcmuaf.DB.ConnectToDatabase;
import vn.edu.hcmuaf.bean.Bill;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

public class DAO {
    public ArrayList<Bill> getBill() {
        ArrayList<Bill> listBill = new ArrayList<>();
        String sql = "SELECT * FROM bills " +
                "JOIN valies ON bills.valiId = valies.id " +
                "JOIN users ON valies.userId = users.id";
        Connection connect = ConnectToDatabase.getConnect();

        try {
            PreparedStatement pst = connect.prepareStatement(sql);


            ResultSet rs = pst.executeQuery();
            while (rs.next()) {
                int billId = rs.getInt("bills.id");
                int valiId = rs.getInt("valies.id");
                int userId = rs.getInt("users.id");
                double price = rs.getDouble("bills.totalPrice");
                String stt = rs.getString("bills.status");
                Bill bill = new Bill(billId,valiId,price,stt);
                listBill.add(bill);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return listBill;
    }

    public static void main(String[] args) {
        DAO dao  = new DAO();
       System.out.println(dao.getBill());
    }

}
//(int id, int valiId, String paymentMethod, double toltalPrice, String status)