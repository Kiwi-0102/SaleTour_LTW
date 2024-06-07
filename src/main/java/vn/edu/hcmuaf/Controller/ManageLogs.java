package vn.edu.hcmuaf.Controller;



import vn.edu.hcmuaf.DAO.FeebackDAO;
import vn.edu.hcmuaf.DAO.LogDAO;
import vn.edu.hcmuaf.bean.Feedback;
import vn.edu.hcmuaf.bean.Log;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebServlet(name = "ManageLogs", urlPatterns = {"/admin/manageLogs"})

public class ManageLogs extends HttpServlet {
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        LogDAO logd = new LogDAO();
        ArrayList<Log> listLog = logd.getAllLogs();


        request.setAttribute("listLog", listLog);
        request.getRequestDispatcher("log.jsp").forward(request, response);

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
