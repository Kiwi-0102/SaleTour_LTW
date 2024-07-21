package vn.edu.hcmuaf.Controller;

import vn.edu.hcmuaf.DAO.LogDAO;
import vn.edu.hcmuaf.DAO.TourDao;
import vn.edu.hcmuaf.bean.Log;
import vn.edu.hcmuaf.bean.Tour;
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

@WebServlet(name = "editTourAdmin", urlPatterns = {"/admin/editTourAdmin"})
public class editTourAdmin extends HttpServlet {
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        request.setCharacterEncoding("UTF-8");
        HttpSession session = request.getSession();
        User user = (User) session.getAttribute("user");
        TourDao tourDao = new TourDao();
        int id = Integer.parseInt(request.getParameter("id"));
        String name = request.getParameter("name");
        String region = request.getParameter("region");
        int price = Integer.parseInt(request.getParameter("price"));
        int quantity = Integer.parseInt(request.getParameter("customer"));
        String startTime = request.getParameter("startTime");
        String schedule = request.getParameter("schedule");
        String description = request.getParameter("description");
        LogDAO logs = new LogDAO();
        logs.insert(new Log(Log.WARNING,Nation(request), user.getId(),  getPublicIP(), "Sửa sản phẩm thành công "+"Mã sản phẩm "+id+", Tên sản phẩm "+name, new Timestamp(System.currentTimeMillis()),"Tour: "+tourDao.findtourbyID(id).toString(),"region "+region+", "+"name"+name+", "+"price "+price+", "+"startTime = "+startTime+", "+"quantity "+quantity+", "+"id "+id, 0));
        boolean tourdao = tourDao.updateTour(region,name,price,startTime,schedule,description,quantity,id);
        if(tourdao) {
            request.setAttribute("status", "Sửa tour thành công");
            request.setAttribute("tour", tourDao.findtourbyid(id));
        }else {
            logs.insert(new Log(Log.WARNING,Nation(request), user.getId(),  getPublicIP(), "Sửa sản phẩm thất bại", new Timestamp(System.currentTimeMillis()),"","Mã sản phẩm"+id+", Tên sản phẩm"+name, 0));
            request.setAttribute("status", "Sửa tour thất bại");
        }
        request.getRequestDispatcher("./editProduct.jsp").forward(request, response);

    }
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        processRequest(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        processRequest(request,response);
    }
}
