package vn.edu.hcmuaf.Controller;

import vn.edu.hcmuaf.DAO.BillDAO;
import vn.edu.hcmuaf.bean.Bill;
import vn.edu.hcmuaf.bean.HistoryBills;
import vn.edu.hcmuaf.serice.Const;
import vn.edu.hcmuaf.bean.User;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.sql.Timestamp;
import java.util.ArrayList;

import static vn.edu.hcmuaf.DAO.BillDAO.getBillById;

// Sau khi đã xác nhận đơn hàng thì chỉ admin mới hủy được đơn hàng
@WebServlet(name = "ListBill", value = "/ListBill")
public class ListBill extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        User use = (User) session.getAttribute("user");
        ArrayList<Bill> listBill = BillDAO.getBillByIdUser(use.getId());
        ArrayList<Bill> choxacnhan = new ArrayList<>();
        ArrayList<Bill> daxacnhan = new ArrayList<>();
        ArrayList<Bill> dahuy = new ArrayList<>();
        ArrayList<Bill> daxong = new ArrayList<>();
        for (Bill bill : listBill) {
            if (bill.getStatus().equalsIgnoreCase(Const.DAXACNHAN)){
                daxacnhan.add(bill);
            } else if (bill.getStatus().equalsIgnoreCase(Const.CHOXACNHAN)) {
                choxacnhan.add(bill);
            } else if (bill.getStatus().equalsIgnoreCase(Const.DAHUY)) {
                dahuy.add(bill);
            } else if (bill.getStatus().equalsIgnoreCase(Const.DAXONG)) {
                daxong.add(bill);
            } else if (bill.getStatus().equalsIgnoreCase(Const.DACHUANBITOUR)) {
                daxacnhan.add(bill);
            }
        }
        request.setAttribute("choxacnhan",choxacnhan);
        request.setAttribute("daxacnhan",daxacnhan);
        request.setAttribute("dahuy",dahuy);
        request.setAttribute("daxong",daxong);

        request.getRequestDispatcher("invoiceHistory.jsp").forward(request,response);

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        if(action == null){
            System.out.println("Khong thuc hien duoc gi!");
        }else if(action.equalsIgnoreCase("huybill")){
            int id = Integer.parseInt(request.getParameter("id"));
            String status = request.getParameter("status");
            BillDAO billDAO = new BillDAO();
            billDAO.updateStatusBill(id,status);
            billDAO.noteBill(id,"Đã hủy bởi khách hàng");
            long currentTimeSeconds = System.currentTimeMillis() / 1000; // Lấy thời gian hiện tại đến đơn vị giây
            Timestamp createdAt = new Timestamp(currentTimeSeconds * 1000);
            billDAO.IshistoryBill(new HistoryBills(id,"Hủy Tour bởi khách hàng",createdAt.toString(),"Trạng thái: "+getBillById(id).getStatus(),"Trạng thái: "+Const.DACHUANBITOUR));

//            System.out.println("đã hủy bill "+id+"status "+status);
        }
//        request.getRequestDispatcher("invoiceHistory.jsp").forward(request,response);
    }
}
