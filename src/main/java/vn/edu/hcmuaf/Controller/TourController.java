package vn.edu.hcmuaf.Controller;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "TourController", urlPatterns = {"/tour"})
public class TourController  extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
       doPost(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//        // Lấy dữ liệu từ cơ sở dữ liệu
//        TourDao tourDao = new TourDao();x
//
//
//        // Đặt danh sách vào yêu cầu
//        request.setAttribute("data", tours);
//
//
//        // Chuyển hướng đến trang JSP
//        request.getRequestDispatcher("test.jsp").forward(request, response);
    }
}
