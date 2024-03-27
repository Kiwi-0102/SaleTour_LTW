package vn.edu.hcmuaf.Controller;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet(name = "ValidateOtp", value = "/ValidateOtp")
public class ValidateOtp extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        String url ="";
        int otp = 0;

        try {
            otp = Integer.parseInt(request.getParameter("otp"));
        } catch (NumberFormatException e) {
            request.setAttribute("status", "OTP phải là chuỗi số");
            url = "otp.jsp";
            request.getRequestDispatcher(url).forward(request,response);
        }

        int opt_mail = (int) session.getAttribute("otp");

        try {
            if(otp==opt_mail){
                request.setAttribute("status","Thành công");
                url ="newpassword.jsp";
                request.getRequestDispatcher(url).forward(request,response);
            }else {
                request.setAttribute("status","Mã OTP không đúng");
                url ="otp.jsp";
                request.getRequestDispatcher(url).forward(request,response);
            }
        } catch (Exception e) {
            request.setAttribute("status","Có lỗi xảy ra .Vui lòng thực hiện lại sau");
            e.printStackTrace();
            url ="otp.jsp";
            request.getRequestDispatcher(url).forward(request,response);
        }
    }
}
