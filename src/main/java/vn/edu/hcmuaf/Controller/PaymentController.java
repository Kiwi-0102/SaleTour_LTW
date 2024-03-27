package vn.edu.hcmuaf.Controller;

import vn.edu.hcmuaf.DAO.TourDao;
import vn.edu.hcmuaf.bean.*;
import vn.edu.hcmuaf.bean.Tour;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebServlet(name = "PaymentController", value = "/PaymentController")
public class PaymentController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");
        response.setContentType("text/html;charset=utf-8");
        HttpSession session = request.getSession();
        int numadlut = Integer.parseInt(request.getParameter("numadult"));
        String name = request.getParameter("ttllfullName");
        String email = request.getParameter("ttllemail");
        String phone = request.getParameter("ttllphone");
        String address = request.getParameter("ttlladdress");
        String date = request.getParameter("date");
//        System.out.println(date+"date");
//        System.out.println(name+"|"+email+"|"+phone+"|"+address+"|"+date);
//
        User userdk = new User(name,email,phone,address);
        session.setAttribute("userdk",userdk);
//        System.out.println(numadlut);
        RequestDispatcher res = null;
        List<Customer> lcs = new ArrayList<>();
        for (int i =0;i<numadlut;i++){
            String hoten = request.getParameter("fullName"+i);
            String gioitinh = request.getParameter("gender"+i);
            int ngay = Integer.parseInt(request.getParameter("ngay"+i));
            int thang = Integer.parseInt(request.getParameter("thang"+i));
            int nam = Integer.parseInt(request.getParameter("nam"+i));
            Customer cus = new Customer(hoten,gioitinh,ngay,thang,nam);
//            System.out.print(cus);
            lcs.add(cus);
        }
        int matour = Integer.parseInt(request.getParameter("Matour"));

        TourDao tourDao = new TourDao();
        request.setAttribute("date",date);
        session.setAttribute("dskh",lcs);
        Tour tour = tourDao.findtourbyid(matour);
        request.setAttribute("tour", tour);
        request.getRequestDispatcher("payment.jsp").forward(request, response);
    }
}
