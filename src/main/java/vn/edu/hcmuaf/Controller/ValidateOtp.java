package vn.edu.hcmuaf.Controller;

import vn.edu.hcmuaf.DAO.LogDAO;
import vn.edu.hcmuaf.DAO.UserDAO;
import vn.edu.hcmuaf.bean.Log;
import vn.edu.hcmuaf.bean.User;
import vn.edu.hcmuaf.serice.PublicIPFetcher;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.sql.Timestamp;

import static vn.edu.hcmuaf.serice.PublicIPFetcher.getPublicIP;
import static vn.edu.hcmuaf.serice.getNation.Nation;

@WebServlet(name = "ValidateOtp", value = "/ValidateOtp")
public class ValidateOtp extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        String action = (String) session.getAttribute("action");
        LogDAO logs = new LogDAO();
        Timestamp createdAt = new Timestamp(System.currentTimeMillis());
        if (action == null || action.isEmpty()) {
            String url = "";
            int otp = 0;

            try {
                otp = Integer.parseInt(request.getParameter("otp"));
            } catch (NumberFormatException e) {
                request.setAttribute("status", "OTP phải là chuỗi số");
                url = "otp.jsp";
                request.getRequestDispatcher(url).forward(request, response);
            }

            int opt_mail = (int) session.getAttribute("otp");
            String email = (String) session.getAttribute("email");

            try {
                if (otp == opt_mail) {
                    request.setAttribute("status", "Thành công");
                    logs.insert(new Log(Log.INFO,Nation(request), -1,  getPublicIP(), "OTP quên mật khẩu thành công", createdAt,"","Email+"+email+"\nOTP: "+opt_mail, 0));
                    url = "newpassword.jsp";
                    request.getRequestDispatcher(url).forward(request, response);
                } else {
                    logs.insert(new Log(Log.INFO,Nation(request), -1,  getPublicIP(), "OTP quên mật khẩu không đúng", createdAt,"","Email+"+email+"\nOTP: "+opt_mail, 0));
                    request.setAttribute("status", "Mã OTP không đúng");
                    url = "otp.jsp";
                    request.getRequestDispatcher(url).forward(request, response);
                }
            } catch (Exception e) {
                request.setAttribute("status", "Có lỗi xảy ra .Vui lòng thực hiện lại sau");
                e.printStackTrace();
                url = "otp.jsp";
                request.getRequestDispatcher(url).forward(request, response);
            }
        } else {
            String url = "";
            int otp = 0;

            try {
                otp = Integer.parseInt(request.getParameter("otp"));
            } catch (NumberFormatException e) {
                request.setAttribute("status", "OTP phải là chuỗi số");
                url = "otp.jsp";
                request.getRequestDispatcher(url).forward(request, response);
            }

            int opt_mail = (int) session.getAttribute("otp_register");

            try {
                if (otp == opt_mail) {
                    request.setAttribute("status", "Thành công");
                    url = "login.jsp";
                    User user = (User) session.getAttribute("register");
                    UserDAO userDO = new UserDAO();
                    userDO.addUser(user);
                    logs.insert(new Log(Log.ALERT,Nation(request), -1,  getPublicIP(), "OTP đăng kí được xác nhận - Đăng kí tài khoản thành công", createdAt,"","Email đăng kí: "+user.getEmail(), 0));
                    request.getRequestDispatcher("./login.jsp").forward(request, response);
                } else {
                    User user = (User) session.getAttribute("register");
                    logs.insert(new Log(Log.ALERT,Nation(request), -1,  getPublicIP(), "OTP đăng kí không đúng - Đăng kí tài khoản không thành công", createdAt,"","Email đăng kí: "+user.getEmail(), 0));
                    request.setAttribute("status", "Mã OTP không đúng");
                    url = "otp.jsp";
                    request.getRequestDispatcher(url).forward(request, response);
                }
            } catch (Exception e) {
                User user = (User) session.getAttribute("register");
                request.setAttribute("status", "Có lỗi xảy ra .Vui lòng thực hiện lại sau");
                logs.insert(new Log(Log.INFO, -1, PublicIPFetcher.getPublicIP(), Nation(request),"Không thể gửi OTP đăng kí tài khoản "+user.getEmail(), createdAt, 0));
                e.printStackTrace();
                url = "otp.jsp";
                request.getRequestDispatcher(url).forward(request, response);
            }
        }
    }
}
