package vn.edu.hcmuaf.Controller;

import vn.edu.hcmuaf.DAO.BillDAO;
import vn.edu.hcmuaf.DAO.BookingDAO;
import vn.edu.hcmuaf.DAO.CustomerDAO;
import vn.edu.hcmuaf.DAO.TourDao;
import vn.edu.hcmuaf.bean.Customer;
import vn.edu.hcmuaf.bean.Tour;
import vn.edu.hcmuaf.bean.User;
import vn.edu.hcmuaf.serice.Const;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.ArrayList;

@WebServlet(name = "BillController", value = "/BillController")
public class BillController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        int id = Integer.parseInt(request.getParameter("id"));
        TourDao tourDao = new TourDao();
        Tour tour = tourDao.findtourbyid(id);
        request.setAttribute("tour", tour);
        request.getRequestDispatcher("./bill.jsp").forward(request, response);

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");
        response.setContentType("text/html;charset=utf-8");
        HttpSession session = request.getSession();
        String action = request.getParameter("action");

//        System.out.println("paypay");
//        System.out.println("userdk"+userdk);
//        System.out.println("userht"+user);
//        System.out.println(dscus);
//        System.out.println(quantity);
//        System.out.println(quatitycc);
//        System.out.println(id);
//        String sql = "INSERT INTO booking (userId, date, tourId, numChildren, numAdult, name, phone,email, address) VALUES (?, CURDATE(), ?, ?, ?, ?, ?, ?, ?)";
        if(action == null){
            System.out.println("view bill");
            String date = request.getParameter("date");
            String id = request.getParameter("tour");
            String payment = request.getParameter("pay");
        } else if (action.equalsIgnoreCase("booking")) {
            String date = request.getParameter("date");
            String id = request.getParameter("tour");
            String payment = request.getParameter("pay");

            TourDao tourDao = new TourDao();
            request.setAttribute("date",date);
            Tour tour = tourDao.findtourbyid(Integer.parseInt(id));
            request.setAttribute("tour", tour);
            request.setAttribute("pay", payment);

            User userdk = (User) session.getAttribute("userdk");
            ArrayList<Customer> dscus = (ArrayList<Customer>) session.getAttribute("dskh");
            Integer quantity = (Integer) session.getAttribute("quatity");
            int quatity = (quantity != null) ? quantity.intValue() : 1;
            session.setAttribute("quatity",quatity);

            Integer quantitycc = (Integer) session.getAttribute("quatitycc");
            int quatitycc = (quantitycc != null) ? quantitycc.intValue() : 0;
            User user = (User) session.getAttribute("user");
//            System.out.println("CC "+quatitycc + ", adu"+quatity) ;
            BookingDAO bkd = new BookingDAO();
            int idbk = BookingDAO.insertBooking(user.getId(), tour.getId(), quatitycc,quatity , userdk.getUserName(), userdk.getPhoneNumber(), userdk.getEmail(), userdk.getAddress(), tour.getStartTime());

            BillDAO billDao = new BillDAO();
            int idb = BillDAO.insertBill(idbk, payment, (quatity+quatitycc*0.6)*tour.getPrice(), Const.CHOXACNHAN,null);

            CustomerDAO ctm = new CustomerDAO();
            ctm.insertListCustomer(dscus, idb);
        }
        request.getRequestDispatcher("bill.jsp").forward(request,response);
    }
}
