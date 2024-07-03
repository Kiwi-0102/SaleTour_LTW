package vn.edu.hcmuaf.Controller;

import vn.edu.hcmuaf.DAO.BillDAO;
import vn.edu.hcmuaf.DAO.BookingDAO;
import vn.edu.hcmuaf.DAO.CustomerDAO;
import vn.edu.hcmuaf.bean.Bill;
import vn.edu.hcmuaf.bean.Booking;
import vn.edu.hcmuaf.bean.Customer;
import vn.edu.hcmuaf.bean.HistoryBills;
import vn.edu.hcmuaf.serice.Const;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.Timestamp;
import java.util.ArrayList;

import static vn.edu.hcmuaf.DAO.BillDAO.getBillById;

@WebServlet(name = "DetailBillADM", urlPatterns = {"/admin/DetailBillADM"})
public class DetailBillADM extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        if (action != null && action.equalsIgnoreCase("DetailBill")) {
            int idbill = Integer.parseInt(request.getParameter("idbill"));
            Bill bill = BillDAO.getBillById(idbill);
            if (bill == null) {
                System.out.println("Lỗi ở bill detail admin");
            } else {
                ArrayList<Customer> customers = CustomerDAO.getCustomerBybillid(bill.getId());
                request.setAttribute("bill", bill);
                request.setAttribute("customers", customers);
                request.getRequestDispatcher("DetailsBillAdmin.jsp").forward(request, response);
            }
        } else {
            request.getRequestDispatcher("order.jsp").forward(request, response);
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        if (action != null && action.equalsIgnoreCase("updateBill")) {
            int idbill = Integer.parseInt(request.getParameter("idbill"));
            String status = request.getParameter("status");
            String date = request.getParameter("date");
            String name = request.getParameter("name");
            String sdt = request.getParameter("sdt");
            String email = request.getParameter("email");
            String address = request.getParameter("address");
            String note = request.getParameter("note");
            long currentTimeSeconds = System.currentTimeMillis() / 1000; // Lấy thời gian hiện tại đến đơn vị giây
            Timestamp createdAt = new Timestamp(currentTimeSeconds * 1000);
            boolean updated;
            boolean hasError = false;
            StringBuilder err = new StringBuilder();

            BillDAO billDAO = new BillDAO();
            Bill bill = billDAO.getBillById(idbill);
            Booking booking = BookingDAO.getBookingbyId(bill.getBookingId());
            billDAO.IshistoryBill(new HistoryBills(idbill,"Chỉnh sửa thông tin bởi admin",createdAt.toString(),
                    "Trạng thái: "+bill.getStatus()+", "+"Ngày bắt đầu: "+booking.getDateStart()+", Tên người đặt: "+booking.getName()+", Số điện thoại:"+booking.getPhone()+", Địa chỉ: "+booking.getAddress()+", Ghi chú:"+bill.getNoteBill(),
                    "Trạng thái: "+status+", "+"Ngày bắt đầu: "+date+", Tên người đặt: "+name+", Số điện thoại:"+sdt+", Địa chỉ: "+address+", Ghi chú:"+note
            ));

            updated = BookingDAO.updateBooking(BillDAO.getBillById(idbill).getBookingId(), date, name, sdt, email, address);
            if (!updated) {
                err.append("err1 ");
                hasError = true;
            }

            updated = BillDAO.updateBill("status", status, idbill);
            if (!updated) {
                err.append("err2 ");
                hasError = true;
            }

            updated = BillDAO.updateBill("noteBill", note, idbill);
            if (!updated) {
                err.append("err3 ");
                hasError = true;
            }

            System.out.println(err.toString());

            if (!hasError) {
                System.out.println("update thành công " + idbill);
                response.sendRedirect("DetailBillADM?action=DetailBill&idbill=" + idbill);
            } else {
                System.out.println("Lỗi khi cập nhật hóa đơn");
                response.sendRedirect("error.jsp");
            }
        } else {
            System.out.println("Không xác định được action hoặc action không hợp lệ");
            response.sendRedirect("error.jsp");
        }
    }
}
