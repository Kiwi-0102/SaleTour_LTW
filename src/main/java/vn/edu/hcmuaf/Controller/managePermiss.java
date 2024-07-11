package vn.edu.hcmuaf.Controller;

import vn.edu.hcmuaf.DAO.UserDAO;
import vn.edu.hcmuaf.bean.User;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.ArrayList;

@WebServlet(name = "managePermiss", urlPatterns = {"/admin/managePermiss"})
public class managePermiss extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        if(action == null){
            ArrayList<User> list = (ArrayList<User>) UserDAO.getAllUser();
            request.setAttribute("user",list);
            request.getRequestDispatcher("editPermiss.jsp").forward(request,response);
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
