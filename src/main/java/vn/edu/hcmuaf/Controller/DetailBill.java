package vn.edu.hcmuaf.Controller;

import vn.edu.hcmuaf.DAO.BillDAO;
import vn.edu.hcmuaf.DAO.BookingDAO;
import vn.edu.hcmuaf.DAO.CustomerDAO;
import vn.edu.hcmuaf.DAO.TourDao;
import vn.edu.hcmuaf.bean.*;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.ArrayList;

@WebServlet(name = "DetailBill", value = "/DetailBill")
public class DetailBill extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {



    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int billId = Integer.parseInt(request.getParameter("billid"));
        Bill bill = BillDAO.getBillById(billId);
        int idBooking = bill.getBookingId();
        Booking booking = BookingDAO.getBookingbyId(idBooking);
        ArrayList<Customer> customers = CustomerDAO.getCustomerBybillid(billId);

        User user = new User(booking.getName(), booking.getPhone(), booking.getEmail(),booking.getAddress());
        Tour tour = TourDao.findtourbyid(booking.getId());

        request.setAttribute("userdk",user);
        request.setAttribute("tour",tour);
        request.setAttribute("dskh",customers);
        request.setAttribute("bill",bill);
        request.setAttribute("booking",booking);
        request.getRequestDispatcher("detalInvoice.jsp").forward(request,response);
    }
}
