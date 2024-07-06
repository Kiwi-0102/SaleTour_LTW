package vn.edu.hcmuaf.Controller;

import com.google.gson.Gson;
import vn.edu.hcmuaf.DAO.BillDAO;
import vn.edu.hcmuaf.DAO.BookingDAO;
import vn.edu.hcmuaf.DAO.CustomerDAO;
import vn.edu.hcmuaf.DAO.TourDao;
import vn.edu.hcmuaf.bean.*;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@WebServlet(name = "updateCustomer",  urlPatterns = {"/admin/updateCustomer"})
public class updateCustomer extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("application/json");
        response.setCharacterEncoding("UTF-8");
        HttpSession session = request.getSession();
        String action = request.getParameter("action");
        TourDao tourDao = new TourDao();
        Gson gson = new Gson();
        Map<String, String> repon = new HashMap<>();
        PrintWriter writer = response.getWriter();
        if (action.equalsIgnoreCase("inc")) {
            int numberA = Integer.parseInt(request.getParameter("numberA"));
            int numberC = Integer.parseInt(request.getParameter("numberC"));
            int id = Integer.parseInt(request.getParameter("idTour"));
            int sochoconlai = tourDao.sochoconlai(id);
            if (numberA + numberC < sochoconlai) {
                repon.put("numberA", (numberA + 1) + "");
            } else {
                repon.put("numberA", "max");
            }
        } else if (action.equalsIgnoreCase("incc")) {
            int numberA = Integer.parseInt(request.getParameter("numberA"));
            int numberC = Integer.parseInt(request.getParameter("numberC"));
            int id = Integer.parseInt(request.getParameter("idTour"));
            int sochoconlai = tourDao.sochoconlai(id);
            if (numberA + numberC < sochoconlai) {
                repon.put("numberC", (numberC + 1) + "");
            } else {
                repon.put("numberC", "max");
            }
        } else if (action.equalsIgnoreCase("dec")) {
            int numberA = Integer.parseInt(request.getParameter("numberA"));
            if (numberA>1) {
                repon.put("numberA", (numberA - 1) + "");
            } else {
                repon.put("numberA", "min");
            }
        }else if (action.equalsIgnoreCase("decc")) {
            int numberC = Integer.parseInt(request.getParameter("numberC"));
            if (numberC > 0) {
                repon.put("numberC", (numberC - 1) + "");
            } else {
                repon.put("numberC", "min");
            }
        } else if (action.equalsIgnoreCase("update")) {
            int numA = Integer.parseInt(request.getParameter("numadult"));
            int numC = Integer.parseInt(request.getParameter("numchildren"));
            int idbill = Integer.parseInt(request.getParameter("idbill"));
            Bill bill = BillDAO.getBillById(idbill);
            Booking booking = BookingDAO.getBookingbyId(bill.getBookingId());
            Tour tour = TourDao.findtourbyid(booking.getTourId());
            ArrayList<Customer> lcs = new ArrayList<>();
            for (int i =0;i<numA;i++){
                String hoten = request.getParameter("fullName"+i);
                String gioitinh = request.getParameter("gender"+i);
                int ngay = Integer.parseInt(request.getParameter("ngay"+i));
                int thang = Integer.parseInt(request.getParameter("thang"+i));
                int nam = Integer.parseInt(request.getParameter("nam"+i));
                String ngaysinh = ngay+"-"+thang+"-"+nam;
                Customer cus = new Customer(hoten,gioitinh,ngaysinh);
                lcs.add(cus);
            }
            long currentTimeSeconds = System.currentTimeMillis() / 1000;
            Timestamp createdAt = new Timestamp(currentTimeSeconds * 1000);
            BookingDAO bookingDAO = new BookingDAO();
            int numAdult = booking.getNumAdult() + numA;
            int numChildren = booking.getNumChildren() + numC;
            User user = (User) session.getAttribute("user");
            BillDAO.IshistoryBill(new HistoryBills(idbill,"Thêm khách hàng vào bill bởi admin, Mã tài khoản: "+user.getId() ,createdAt.toString(),
                    "Người lớn: "+booking.getNumAdult()+", "+"Trẻ em "+booking.getNumChildren()+", Tổng tiền: "+bill.getToltalPrice(),
                    "Người lớn: "+numAdult+", "+"Trẻ em "+numChildren+", Tổng tiền: "+ (numA * tour.getPrice()+(numC*tour.getPrice()*0.6)+bill.getToltalPrice())
            ));
            CustomerDAO ctm = new CustomerDAO();
            ctm.insertListCustomer(lcs, bill.getId());
            boolean update = BookingDAO.updateCustomerBooking(numAdult,numChildren,booking.getId());
            update = BillDAO.updateBill("totalPrice", String.valueOf((numA * tour.getPrice()+(numC*tour.getPrice()*0.6)+bill.getToltalPrice())),bill.getId());
            if(!update){
                System.out.println("Lỗi khi cập nhật");
            }else{
                response.sendRedirect(request.getContextPath() + "/admin/DetailBillADM?action=DetailBill&idbill=" + idbill);
            }
        }
        try {
            String json = gson.toJson(repon);
            writer.write(json);
        }catch (Exception e){
            e.printStackTrace();
        }finally {
            writer.close();
        }
    }
}
