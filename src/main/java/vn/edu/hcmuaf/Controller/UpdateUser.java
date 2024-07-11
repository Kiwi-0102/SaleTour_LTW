package vn.edu.hcmuaf.Controller;

import vn.edu.hcmuaf.DAO.LogDAO;
import vn.edu.hcmuaf.DAO.UserDAO;
import vn.edu.hcmuaf.bean.Log;
import vn.edu.hcmuaf.bean.User;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.sql.Timestamp;

import static vn.edu.hcmuaf.serice.PublicIPFetcher.getPublicIP;
import static vn.edu.hcmuaf.serice.getNation.Nation;

@WebServlet(name = "UpdateUser", urlPatterns = {"/admin/UpdateUser"})
public class UpdateUser extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int id = Integer.parseInt(request.getParameter("userId"));
        User user = UserDAO.getUserById(id);
        if(user!=null){
            request.setAttribute("user",user);
            request.getRequestDispatcher("editUser.jsp").forward(request,response);
        }else {
            request.getRequestDispatcher("user.jsp").forward(request,response);
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int id = Integer.parseInt(request.getParameter("id"));
        HttpSession session = request.getSession();
        User admin = (User) session.getAttribute("user");
        String name = request.getParameter("name");
        String email = request.getParameter("email");
        String phone = request.getParameter("phone");
        LogDAO logs = new LogDAO();
        String address = request.getParameter("address");
        User bfus = UserDAO.getUserById(id);
        String bfname = bfus.getUserName();
        String bfphone = bfus.getPhoneNumber();
        String bfaddr = bfus.getAddress();
        boolean noerr =UserDAO.editInforUser(name,phone,address,email);
        if(noerr){
            User user = UserDAO.getUserById(id);
            request.setAttribute("user",user);
            logs.insert(new Log(Log.ALERT,Nation(request), admin.getId(),  getPublicIP(), "Cập nhật thông tin người dùng", new Timestamp(System.currentTimeMillis()),"name: "+bfname+", phone: "+bfphone+" ,address: "+bfaddr,"name: "+name+", phone: "+phone+" ,address: "+address, 0));
            request.getRequestDispatcher("editUser.jsp").forward(request,response);
        }else {
            logs.insert(new Log(Log.ALERT,Nation(request), admin.getId(),  getPublicIP(), "Cập nhật thông tin người dùng bởi admin thất bại", new Timestamp(System.currentTimeMillis()),"","", 0));
            request.setAttribute("status","Xảy ra lỗi khi cập nhật người dùng");
            request.getRequestDispatcher("editUser.jsp").forward(request,response);
        }
    }
}
