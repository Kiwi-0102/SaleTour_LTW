package vn.edu.hcmuaf.Controller;

import vn.edu.hcmuaf.DAO.UserDAO;
import vn.edu.hcmuaf.bean.User;
import vn.edu.hcmuaf.serice.Mahoa;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "AddUserAdmin", value = "/AddUserAdmin")
public class AddUserAdmin extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try {
            String action = request.getParameter("action");
            String email = request.getParameter("email") == null ? "" : request.getParameter("email").trim();
            String password = request.getParameter("pass") == null ? "" : request.getParameter("pass").trim();
            String username = request.getParameter("name") == null ? "" : request.getParameter("name").trim();
            int role = Integer.parseInt(request.getParameter("role") == null ? "" : request.getParameter("role").trim());

//            System.out.println(email + " | " +password+ " | "+username+" | "+role);

            String err;

            if (email.isEmpty() || password.isEmpty() || username.isEmpty()) {
                request.setAttribute("err", "Vui lòng nhập đầy đủ thông tin.");
                request.getRequestDispatcher("admin/addUser.jsp").forward(request, response);
                return;
            }
            if (!email.matches("[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\\.[a-zA-Z]{2,}")) {
                request.setAttribute("err", "Email không hợp lệ.");
                request.getRequestDispatcher("admin/addUser.jsp").forward(request, response);
                return;
            }
            UserDAO userDAO = new UserDAO();
            if (userDAO.isEmailExists(email)) {
                request.setAttribute("err", "Email đã tồn tại.");
                request.getRequestDispatcher("admin/addUser.jsp").forward(request, response);
                return;
            }
            User user = new User(username, email, Mahoa.toSHA1(password));
            user.setRoleId(role);
            userDAO.addUserAdmin(user);
            request.getRequestDispatcher("admin/addUser.jsp").forward(request, response);
        } catch (Exception e) {
            e.printStackTrace();
            response.sendError(HttpServletResponse.SC_INTERNAL_SERVER_ERROR, "Internal Server Error");
        }
    }
}