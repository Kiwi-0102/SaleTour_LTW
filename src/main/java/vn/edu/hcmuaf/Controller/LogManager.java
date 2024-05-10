package vn.edu.hcmuaf.Controller;

import vn.edu.hcmuaf.DAO.LogDAO;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "LogManager", value = "/LogManager")
public class LogManager extends HttpServlet {
    LogDAO logDAO = new  LogDAO();
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        var logs = logDAO.findAll();
        request.setAttribute("logs", logs);
        request.getRequestDispatcher("/logManager.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }
}