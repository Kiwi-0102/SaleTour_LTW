package vn.edu.hcmuaf.Controller;

import vn.edu.hcmuaf.DAO.BillDAO;
import vn.edu.hcmuaf.bean.Bill;
import vn.edu.hcmuaf.bean.User;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.ArrayList;

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
            if (bill.getStatus().equalsIgnoreCase("Đã xác nhận")){
                daxacnhan.add(bill);
            } else if (bill.getStatus().equalsIgnoreCase("Chờ xác nhận")) {
                choxacnhan.add(bill);
            } else if (bill.getStatus().equalsIgnoreCase("Đã Xong")) {
                dahuy.add(bill);
            } else if (bill.getStatus().equalsIgnoreCase("Đã hủy")) {
                daxong.add(bill);
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

    }
}
