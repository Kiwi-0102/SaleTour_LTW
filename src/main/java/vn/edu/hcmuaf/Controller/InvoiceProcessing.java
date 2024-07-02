package vn.edu.hcmuaf.Controller;

import vn.edu.hcmuaf.DAO.BillDAO;
import vn.edu.hcmuaf.DAO.BookingDAO;
import vn.edu.hcmuaf.bean.Bill;
import vn.edu.hcmuaf.bean.HistoryBills;
import vn.edu.hcmuaf.serice.Const;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.sql.Timestamp;

import static vn.edu.hcmuaf.DAO.BillDAO.getBillById;

@WebServlet(name = "InvoiceProcessing", urlPatterns = {"/admin/InvoiceProcessing"})
public class InvoiceProcessing extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        long currentTimeSeconds = System.currentTimeMillis() / 1000; // Lấy thời gian hiện tại đến đơn vị giây
        Timestamp createdAt = new Timestamp(currentTimeSeconds * 1000);
        if (action.equals("huybill")) {
            String note = request.getParameter("note");
            int id = Integer.parseInt(request.getParameter("id"));

            BillDAO billDAO = new BillDAO();
            billDAO.IshistoryBill(new HistoryBills(id,"Hủy bill bởi Admin",createdAt.toString(),"Trạng thái: "+getBillById(id).getStatus(),"Trạng thái: "+Const.DAHUY+"\n"+" Ghi chú:"+getBillById(id).getNoteBill()));
            billDAO.updateStatusBill(id, Const.DAHUY);
            billDAO.noteBill(id, note);
        } else if (action.equals("xacnhanbill")) {
            String note = request.getParameter("note");
            int id = Integer.parseInt(request.getParameter("id"));

            BillDAO billDAO = new BillDAO();
            billDAO.IshistoryBill(new HistoryBills(id,"Cập nhật trạng thái",createdAt.toString(),"Trạng thái: "+getBillById(id).getStatus(),"Trạng thái: "+Const.DAXACNHAN+"\n"+" Ghi chú:"+getBillById(id).getNoteBill()));
            billDAO.updateStatusBill(id, Const.DAXACNHAN);
            billDAO.noteBill(id, note);
        } else if (action.equals("chuanbitour")) {
            String note = request.getParameter("note");
            int id = Integer.parseInt(request.getParameter("id"));

            BillDAO billDAO = new BillDAO();
            billDAO.IshistoryBill(new HistoryBills(id,"Cập nhật trạng thái",createdAt.toString(),"Trạng thái: "+getBillById(id).getStatus(),"Trạng thái: "+Const.DACHUANBITOUR+"\n"+" Ghi chú:"+getBillById(id).getNoteBill()));
            billDAO.updateStatusBill(id, Const.DACHUANBITOUR);
            billDAO.noteBill(id, note);
        }else if(action.equals("daxongtour")){
            String note = request.getParameter("note");
            int id = Integer.parseInt(request.getParameter("id"));

            BillDAO billDAO = new BillDAO();
            billDAO.IshistoryBill(new HistoryBills(id,"Cập nhật trạng thái",createdAt.toString(),"Trạng thái: "+getBillById(id).getStatus(),"Trạng thái: "+Const.DAXONG+"\n"+" Ghi chú:"+getBillById(id).getNoteBill()));
            billDAO.updateStatusBill(id, Const.DAXONG);
            billDAO.noteBill(id, note);
    }
    }
}
