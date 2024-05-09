package vn.edu.hcmuaf.Controller;


import vn.edu.hcmuaf.DAO.UserDAO;
import vn.edu.hcmuaf.bean.User;
import vn.edu.hcmuaf.serice.Mahoa;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "RegisterController", value = "/register")
public class RegisterController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        doPost(request, response);
    }


    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try {
            String email = request.getParameter("email") == null ? "" : request.getParameter("email").trim();
            String password = request.getParameter("pass1") == null ? "" : request.getParameter("pass1").trim();
            String confirmPassword = request.getParameter("pass2") == null ? "" : request.getParameter("pass2").trim();
            String username = request.getParameter("userName") == null ? "" : request.getParameter("userName").trim();
            if (email.isEmpty() || password.isEmpty() || confirmPassword.isEmpty() || username.isEmpty()) {
                request.setAttribute("err", "Vui lòng nhập đầy đủ thông tin.");
                request.getRequestDispatcher("./register.jsp").forward(request, response);
                return;
            }
            if (!email.matches("[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\\.[a-zA-Z]{2,}")) {
                request.setAttribute("err", "Email không hợp lệ.");
                request.getRequestDispatcher("./register.jsp").forward(request, response);
                return;
            }
            if (!password.equals(confirmPassword)) {
                request.setAttribute("err", "Mật khẩu và xác nhận mật khẩu không khớp.");
                request.getRequestDispatcher("./register.jsp").forward(request, response);
                return;
            }
            UserDAO userDAO = new UserDAO();
            if (userDAO.isEmailExists(email)) {
                request.setAttribute("err", "Email đã tồn tại.");
                request.getRequestDispatcher("./register.jsp").forward(request, response);
                return;
            }
            User user = new User(username, email, Mahoa.toSHA1(password));
            userDAO.addUser(user);
            request.getRequestDispatcher("./login.jsp").forward(request, response);

        } catch (Exception e) {
            e.printStackTrace();
            response.sendError(HttpServletResponse.SC_INTERNAL_SERVER_ERROR, "Internal Server Error");
        }
    }
}