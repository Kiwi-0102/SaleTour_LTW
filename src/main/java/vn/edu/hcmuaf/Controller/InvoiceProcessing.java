package vn.edu.hcmuaf.Controller;

import vn.edu.hcmuaf.DAO.BillDAO;
import vn.edu.hcmuaf.serice.Const;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "InvoiceProcessing", urlPatterns = {"/admin/InvoiceProcessing"})
public class InvoiceProcessing extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        if(action.equals("huybill")){
            String note = request.getParameter("note");
            int id = Integer.parseInt(request.getParameter("id"));

            BillDAO billDAO = new BillDAO();
            billDAO.updateStatusBill(id, Const.DAHUY);
            billDAO.noteBill(id,note);
        }
    }
}
