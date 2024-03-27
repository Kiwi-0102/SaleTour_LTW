package vn.edu.hcmuaf.Controller;

import vn.edu.hcmuaf.DAO.FeebackDAO;
import vn.edu.hcmuaf.bean.Feedback;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "ManageContact", urlPatterns = {"/admin/manageContact"})

public class ManageContact extends HttpServlet {
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        HttpSession session = request.getSession();


        FeebackDAO dao = new FeebackDAO();


        List<Feedback> listF = dao.getFeedback();


        request.setAttribute("listFFF", listF);
        request.getRequestDispatcher("customerContact.jsp").forward(request, response);

    }
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        processRequest(request,response);
    }


    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request,response);
    }
}
