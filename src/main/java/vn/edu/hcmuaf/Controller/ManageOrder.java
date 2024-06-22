package vn.edu.hcmuaf.Controller;

import vn.edu.hcmuaf.DAO.BillDAO;
import vn.edu.hcmuaf.DAO.DAO;
import vn.edu.hcmuaf.bean.Bill;
import vn.edu.hcmuaf.bean.User;
import vn.edu.hcmuaf.serice.Const;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebServlet(name = "ManagerOrder", urlPatterns = {"/admin/managerOrder"})
public class ManageOrder extends HttpServlet {
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        HttpSession session = request.getSession();
        User use = (User) session.getAttribute("user");
        ArrayList<Bill> listBill = BillDAO.getAll();
        ArrayList<Bill> choxacnhan = new ArrayList<>();
        ArrayList<Bill> daxacnhan = new ArrayList<>();
        ArrayList<Bill> dahuy = new ArrayList<>();
        ArrayList<Bill> daxong = new ArrayList<>();
        ArrayList<Bill> dangxuly = new ArrayList<>();

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
                dangxuly.add(bill);
            }
        }
        request.setAttribute("choxacnhan",choxacnhan);
        request.setAttribute("daxacnhan",daxacnhan);
        request.setAttribute("dahuy",dahuy);
        request.setAttribute("daxong",daxong);
        request.setAttribute("dangxuly",dangxuly);


        request.getRequestDispatcher("order.jsp").forward(request,response);


    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request,response);
    }


    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

}
