package vn.edu.hcmuaf.Controller;

import com.google.gson.Gson;
import vn.edu.hcmuaf.DAO.LogDAO;
import vn.edu.hcmuaf.DAO.TourDao;
import vn.edu.hcmuaf.DAO.UserDAO;
import vn.edu.hcmuaf.bean.Log;
import vn.edu.hcmuaf.bean.Tour;
import vn.edu.hcmuaf.bean.User;
import vn.edu.hcmuaf.serice.Const;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Timestamp;
import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
import java.time.format.DateTimeParseException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import static vn.edu.hcmuaf.serice.PublicIPFetcher.getPublicIP;
import static vn.edu.hcmuaf.serice.getNation.Nation;

@WebServlet(name = "outofstock", urlPatterns = {"/admin/outofstock"})
public class outofstock extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        System.out.println("actiom ;"+action);
        DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyy-MM-dd");
        if (action == null) {
            List<Tour> tourNone = TourDao.findAllTourbyStatus("none");
            System.out.println();
            request.setAttribute("button", "none");
            request.setAttribute("tournone", tourNone);
            request.getRequestDispatcher("outofstock.jsp").forward(request, response);
        } else if (action.equals("listOld")) {
            List<Tour> tourNone = TourDao.findAllTourbyStatus("none");
            LocalDate currentDate = LocalDate.now();
            LocalDate dateStart ;
            ArrayList<Tour> tourArrayList = new ArrayList<>();
            for (Tour t: tourNone){
                String dateStartStr = t.getStartTime(); // Lấy chuỗi ngày từ đối tượng Tour
                 dateStart = LocalDate.parse(dateStartStr, formatter);
                 if(dateStart.isBefore(currentDate)){
                     tourArrayList.add(t);
                 }
            }
            request.setAttribute("tournone", tourArrayList);
            request.getRequestDispatcher("outofstock.jsp").forward(request, response);
        } else if (action.equals("listFullslot")) {
            List<Tour> tourNone = TourDao.findAllTourbyStatus("none");
            LocalDate currentDate = LocalDate.now();
            LocalDate dateStart ;
            ArrayList<Tour> tourArrayList = new ArrayList<>();
            for (Tour t: tourNone){
                String dateStartStr = t.getStartTime(); // Lấy chuỗi ngày từ đối tượng Tour
                dateStart = LocalDate.parse(dateStartStr, formatter);
                if(dateStart.isAfter(currentDate) && (TourDao.sochoconlai(t.getId())<=0)){
                    tourArrayList.add(t);
                }
            }
            request.setAttribute("tournone", tourArrayList);
            request.getRequestDispatcher("outofstock.jsp").forward(request, response);
        } else if (action.equals("nooder")) {
            int month = Integer.parseInt(request.getParameter("month"));
            List<Tour> tourNone = TourDao.findAllTourbyorder(month);
            request.setAttribute("tournone", tourNone);
            request.setAttribute("month", month);
            request.setAttribute("showSelect", "showSelect");
            request.getRequestDispatcher("outofstock.jsp").forward(request, response);
        }
        }


    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        response.setContentType("application/json");
        response.setCharacterEncoding("UTF-8");
        String action = request.getParameter("action");
        Gson gson = new Gson();
        PrintWriter writer = response.getWriter();
        DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyy-MM-dd");
        if ("updateProduct".equals(action)) {
            int id = Integer.parseInt(request.getParameter("idTour"));
            Tour tour = TourDao.findtourbyid(id);
            String dateStartStr = tour.getStartTime(); // Lấy chuỗi ngày từ đối tượng Tour

            try {
                LocalDate dateStart = LocalDate.parse(dateStartStr, formatter);
                LocalDate currentDate = LocalDate.now();

                Map<String, String> repon = new HashMap<>();

                if (dateStart.isAfter(currentDate)) {
                    int sochoconlai = TourDao.sochoconlai(id);
                    if (sochoconlai <= 0) {
                        repon.put("repon", "Tour đã hết chỗ cần cập nhật");
                    } else {
                        TourDao.Updatesatust(Const.displayTour, id);
                        repon.put("repon", "Cập nhật thành công.");
                    }
                } else {
                    repon.put("repon", "Tour cần cập nhật lại ngày bắt đầu!");
                }

                String json = gson.toJson(repon);
                writer.write(json);
            } catch (DateTimeParseException e) {
                e.printStackTrace();
                response.sendError(HttpServletResponse.SC_BAD_REQUEST, "Ngày không hợp lệ");
            } finally {
                writer.close(); // Đảm bảo PrintWriter được đóng
            }
        } else if (action.equalsIgnoreCase("noneProduct")) {
            System.out.println("noneProductnoneProductnoneProductnoneProduct");
            int id = Integer.parseInt(request.getParameter("idTour"));
            try {
                Map<String, String> repon = new HashMap<>();
                TourDao.Updatesatust(Const.noneTour, id);
                repon.put("repon", "Cập nhật thành công.");
                String json = gson.toJson(repon);
                writer.write(json);
            } catch (DateTimeParseException e) {
                e.printStackTrace();
                response.sendError(HttpServletResponse.SC_BAD_REQUEST, "Cập nhật không thành công");
            } finally {
                writer.close(); // Đảm bảo PrintWriter được đóng
            }
        }
//    }
//
//        User admin = (User) session.getAttribute("user");
//        int id = Integer.parseInt(request.getParameter("idUser"));
//        int role = Integer.parseInt(request.getParameter("role"));
//        LogDAO logs = new LogDAO();
//        User bfus = UserDAO.getUserById(id);
//        boolean noerr =UserDAO.editRoleUser(role,id);
//
//
//        if(noerr){
//            User user = UserDAO.getUserById(id);
//            request.setAttribute("user",user);
//            logs.insert(new Log(Log.WARNING,Nation(request), admin.getId(),  getPublicIP(), "Cập nhật quyền tài khoản", new Timestamp(System.currentTimeMillis()),"Mã tài khoản: "+bfus.getId()+" ,role: "+bfus.getRoleId(),"Mã tài khoản: "+id+", role: "+role, 0));
//        }else {
//            logs.insert(new Log(Log.WARNING,Nation(request), admin.getId(),  getPublicIP(), "Cập nhật quyền người dùng thất bại", new Timestamp(System.currentTimeMillis()),"","", 0));
//            request.setAttribute("status","Xảy ra lỗi khi cập nhật người dùng");
//        }
    }
}
