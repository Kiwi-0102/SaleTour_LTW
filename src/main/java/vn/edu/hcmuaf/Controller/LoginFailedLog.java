package vn.edu.hcmuaf.Controller;

import vn.edu.hcmuaf.DAO.LogDAO;
import vn.edu.hcmuaf.bean.Log;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.ArrayList;

@WebServlet(name = "LoginFailedLog",urlPatterns = {"/admin/LoginFailedLog"})
public class LoginFailedLog extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        if(action==null || action.isEmpty()){
            System.out.println("action la null khong thuc hien duoc gi");
        } else if (action.equalsIgnoreCase("LoginFailedLog")) {
            ArrayList<Log> listLog = LogDAO.getLoglogin();
            request.setAttribute("listLog",listLog);
        } else if (action.equals("checkday")) {
            int day = Integer.parseInt(request.getParameter("day"));
            ArrayList<Log> listLog = LogDAO.getLogbyday(day);
            request.setAttribute("listLog",listLog);
        } else if (action.equals("checkLogin")) {
            String checkLogin = request.getParameter("login");
            if(checkLogin.equals("true")){
                ArrayList<Log> listLog = LogDAO.getstatustLogin("Login thành công");
                request.setAttribute("listLog",listLog);
            }else{
                ArrayList<Log> listLog = LogDAO.getstatustLogin("Login không thành công");
                request.setAttribute("listLog",listLog);
            }
        }
        request.getRequestDispatcher("logLogin.jsp").forward(request,response);

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        System.out.println("loginFail2");
        request.getRequestDispatcher("logLogin.jsp").forward(request,response);
    }
}
