package vn.edu.hcmuaf.Controller;

import vn.edu.hcmuaf.DAO.BillDAO;
import vn.edu.hcmuaf.DAO.CustomerDAO;
import vn.edu.hcmuaf.bean.Bill;
import vn.edu.hcmuaf.bean.Customer;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;

@WebServlet(name = "DetailBillADM", urlPatterns = {"/admin/DetailBillADM"})
public class DetailBillADM extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        if (action.equalsIgnoreCase("DetailBill")) {
            int idbill = Integer.parseInt(request.getParameter("idbill"));
            Bill bill = BillDAO.getBillById(idbill);
            if (bill == null) {
                System.out.println("Lỗi ở bill detail admin");
            } else if (action.equalsIgnoreCase("DetailBill")) {
                ArrayList<Customer> customers = CustomerDAO.getCustomerBybillid(bill.getId());
                request.setAttribute("bill", bill);
                request.setAttribute("customers", customers);

                request.getRequestDispatcher("DetailsBillAdmin.jsp").forward(request, response);
            } else if (action == null) {
                request.getRequestDispatcher("order.jsp").forward(request, response);
            }
        }
    }


    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    }

}
