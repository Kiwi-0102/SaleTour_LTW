package vn.edu.hcmuaf.Controller;

import vn.edu.hcmuaf.DAO.LogDAO;
import vn.edu.hcmuaf.bean.Log;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "DetailsLog", urlPatterns = {"/admin/DetailsLog"})
public class DetailsLog extends HttpServlet {
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String idParam = request.getParameter("id");
        if (idParam == null) {
            request.setAttribute("error", "ID không được để trống");
            request.getRequestDispatcher("log.jsp").forward(request, response);
            return;
        }

        int id;
        try {
            id = Integer.parseInt(idParam);
        } catch (NumberFormatException e) {
            request.setAttribute("error", "ID không hợp lệ");
            request.getRequestDispatcher("log.jsp").forward(request, response);
            return;
        }

        Log log = LogDAO.getLogbyId(id);
        if (log == null) {
            request.setAttribute("error", "Không tìm thấy log với ID: " + id);
            request.getRequestDispatcher("log.jsp").forward(request, response);
            return;
        }

        request.setAttribute("log", log);
        request.getRequestDispatcher("DetailsLog.jsp").forward(request, response);
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }
}
