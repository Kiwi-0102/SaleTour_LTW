package vn.edu.hcmuaf.Controller;


import vn.edu.hcmuaf.DAO.LogDAO;
import vn.edu.hcmuaf.DAO.UserDAO;
import vn.edu.hcmuaf.bean.Log;
import vn.edu.hcmuaf.bean.User;
import vn.edu.hcmuaf.serice.Mahoa;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.net.InetAddress;
import java.sql.Timestamp;

@WebServlet(name = "LoginController", value = "/login")
public class LoginController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");
        response.setContentType("text/html;charset=utf-8");

        String action = request.getParameter("action");
//        System.out.println("doget: " + action);
        if (action == null) {

            System.out.println("Khong thuc hien duoc gi het");

        } else if (action.equals("logout")) {
            HttpSession session = request.getSession();
            session.invalidate();
//                response.sendRedirect("signin");
            response.sendRedirect("./login.jsp");

        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try {
            LogDAO logs = new LogDAO();
            InetAddress inet =InetAddress.getLocalHost();
            String adress = inet.getHostAddress();


            String email = request.getParameter("email")==null?"":request.getParameter("email");
            String pass = request.getParameter("password")==null?"":request.getParameter("password");



            // Sử dụng hàm getUserByEmail để lấy thông tin người dùng
           UserDAO userDAO = new UserDAO();
            User u = UserDAO.checkLogin(email, Mahoa.toSHA1(pass));
            if(u != null){
                HttpSession session = request.getSession();
                session.setAttribute("user", u); // session này dùng để
                Timestamp createdAt = new Timestamp(System.currentTimeMillis()); // Lấy thời gian hiện tại
                logs.insert(new Log(Log.INFO, u.getId(),  request.getRemoteAddr(),adress, "Login thành công", createdAt, 0));
                request.getRequestDispatcher("./index.jsp").forward(request, response); // sử dụng forward() để chuyển tiếp người dùng này cho các tác vụ khác

            } else {
                request.setAttribute("err", "Email or Password is incorrect!");
                Timestamp createdAt = new Timestamp(System.currentTimeMillis()); // Lấy thời gian hiện tại
                logs.insert(new Log(Log.INFO, -1,  request.getRemoteAddr(),adress, "Login không thành công", createdAt, 0));
                request.getRequestDispatcher("./login.jsp").forward(request, response);
            }
        } catch (Exception e) {
            e.printStackTrace();
            response.sendError(HttpServletResponse.SC_INTERNAL_SERVER_ERROR, "Internal Server Error");
        }
    }

}
