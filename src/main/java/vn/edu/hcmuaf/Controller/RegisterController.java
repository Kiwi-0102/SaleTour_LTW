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
        // Lấy thông tin từ form đăng ký
        String email = request.getParameter("email") == null ? "" : request.getParameter("email");
        String password = request.getParameter("pass1") == null ? "" : request.getParameter("pass1");
        String confirmPassword = request.getParameter("pass2") == null ? "" : request.getParameter("pass2");
        String username = request.getParameter("userName") == null ? "" : request.getParameter("userName");
        System.out.println(email);
        System.out.println(password);
        System.out.println(confirmPassword);
        System.out.println(username);

        // Tạo đối tượng User
        User user = new User(username, email, Mahoa.toSHA1(password));

        // Thêm người dùng vào cơ sở dữ liệu
        UserDAO userDAO = new UserDAO();

        // Kiểm tra email và thêm người dùng
        if (userDAO.isEmailExists(email)) {

            request.setAttribute("err", "Email đã tồn tại");
            request.getRequestDispatcher("./register.jsp").forward(request, response);
        } else {

            userDAO.addUser(user);


            // Chuyển hướng đến trang đăng nhập hoặc trang đăng ký thành công
            request.getRequestDispatcher("./login.jsp").forward(request, response);
        }
    }
}