package vn.edu.hcmuaf.Controller;

import vn.edu.hcmuaf.DAO.UserDAO;
import vn.edu.hcmuaf.bean.User;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

@WebServlet(name = "InforUser", value = "/InforUser")
public class InforUser extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");
        response.setContentType("text/html;charset=utf-8");

        HttpSession session = request.getSession();
        String name = request.getParameter("username").trim();
        String phone = request.getParameter("phone");
        String address = request.getParameter("address").trim();

        String err = "";

        if (name.length() > 20) {
            err = "Tên người dùng phải từ 4 đến 20 kí tự";
        }
        if (name.length() < 2) {
            err = "Tên người dùng phải nhiều hơn 2 kí tự";
        }
        if (!isValidUsername(name)){
            err = "Tên người dùng chỉ được sử dụng các kí tự từ A-Z và từ 0-9 ";
        }
        if (!isValidPhoneNumber(phone)) {
            err = "Số điện thoại không hợp lệ";
        }
        if (address.length() > 500) {
            err = "Địa chỉ tối đa 500 kí tự";
        }

        if (!err.isEmpty() && err != null) {
            System.out.println("err" + err);
            request.setAttribute("err", err);
            request.getRequestDispatcher("infor.jsp").forward(request, response);
        } else {
            System.out.println("Thực hiện thay đổi thông tin");
            System.out.println("name" + name);
            System.out.println("phone" + phone);
            System.out.println("address" + address);
            User user = (User) session.getAttribute("user");

            UserDAO userDAO = new UserDAO();
            boolean kq = userDAO.editInforUser(name, phone, address, user.getEmail());
            if (kq) {
                System.out.println("kq" + kq);
                request.setAttribute("status", "Thay đổi thông tin thành công");
                request.getRequestDispatcher("infor.jsp").forward(request,response);
            } else {
                request.setAttribute("err", "Thay đổi thông tin không thành công");
                request.getRequestDispatcher("infor.jsp").forward(request,response);
            }
        }
    }
    //Kiểm tra xem số điện thoại có hợp lệ không
    private boolean isValidPhoneNumber(String phoneNumber) {
        String phoneRegex = "^(\\+84|0|19)\\d{8,14}$";
        Pattern pattern = Pattern.compile(phoneRegex);
        Matcher matcher = pattern.matcher(phoneNumber);

        return matcher.matches();
    }

    private boolean isValidUsername(String username) {
        String usernameRegex = "^[\\p{L}0-9\\s]+$";
        Pattern pattern = Pattern.compile(usernameRegex);
        Matcher matcher = pattern.matcher(username);

        return matcher.matches();
    }
}
