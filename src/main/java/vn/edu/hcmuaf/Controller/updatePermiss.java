package vn.edu.hcmuaf.Controller;

import vn.edu.hcmuaf.DAO.LogDAO;
import vn.edu.hcmuaf.DAO.UserDAO;
import vn.edu.hcmuaf.bean.Log;
import vn.edu.hcmuaf.bean.User;

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

@WebServlet(name = "updatePermiss", urlPatterns = {"/admin/updatePermiss"})
public class updatePermiss extends HttpServlet {
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
        HttpSession session = request.getSession();
        User admin = (User) session.getAttribute("user");
        int id = Integer.parseInt(request.getParameter("idUser"));
        int role = Integer.parseInt(request.getParameter("role"));
        LogDAO logs = new LogDAO();
        User bfus = UserDAO.getUserById(id);
        boolean noerr =UserDAO.editRoleUser(role,id);
        System.out.println(id);
        System.out.println("role"+role);

        if(noerr){
            User user = UserDAO.getUserById(id);
            request.setAttribute("user",user);
            logs.insert(new Log(Log.WARNING,Nation(request), admin.getId(),  getPublicIP(), "Cập nhật quyền tài khoản", new Timestamp(System.currentTimeMillis()),"Mã tài khoản: "+bfus.getId()+" ,role: "+bfus.getRoleId(),"Mã tài khoản: "+id+", role: "+role, 0));
        }else {
            logs.insert(new Log(Log.WARNING,Nation(request), admin.getId(),  getPublicIP(), "Cập nhật quyền người dùng thất bại", new Timestamp(System.currentTimeMillis()),"","", 0));
            request.setAttribute("status","Xảy ra lỗi khi cập nhật người dùng");
        }
    }
}
