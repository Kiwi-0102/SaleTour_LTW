package vn.edu.hcmuaf.Controller;

import vn.edu.hcmuaf.DAO.TourDao;
import vn.edu.hcmuaf.bean.Tour;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "editTourAdmin", urlPatterns = {"/admin/editTourAdmin"})
public class editTourAdmin extends HttpServlet {
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        request.setCharacterEncoding("UTF-8");
        TourDao tourDao = new TourDao();
        int id = Integer.parseInt(request.getParameter("id"));
        String name = request.getParameter("name");
        String region = request.getParameter("region");
        int price = Integer.parseInt(request.getParameter("price"));
        int quantity = Integer.parseInt(request.getParameter("customer"));
        String startTime = request.getParameter("startTime");
        String schedule = request.getParameter("schedule");
        String description = request.getParameter("description");

        boolean tourdao = tourDao.updateTour(region,name,price,startTime,schedule,description,quantity,id);
        if(tourdao) {
            request.setAttribute("tour", tourDao.findtourbyid(id));
            request.setAttribute("status", "Thêm tour thành công");
        }else {
            request.setAttribute("status", "Thêm tour thất bại");
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
