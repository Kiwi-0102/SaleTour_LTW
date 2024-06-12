package vn.edu.hcmuaf.Controller;

import vn.edu.hcmuaf.DAO.LogDAO;
import vn.edu.hcmuaf.DAO.TourDao;
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

@WebServlet(name = "Delete", urlPatterns = {"/admin/delete"})
public class DeleteTour extends HttpServlet {
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        request.setCharacterEncoding("UTF-8");
        String pid = request.getParameter("id").trim();
        int id = Integer.parseInt(pid);
        HttpSession session = request.getSession();
        User user = (User) session.getAttribute("user");
        TourDao dao = new TourDao();

//        dao.deleteDependentOption(id);
//        dao.deleteDependentbills(id);
//        dao.deleteValies(id);
        LogDAO logs = new LogDAO();
        dao.deleteTour(id);
        logs.insert(new Log(Log.DANGER,Nation(request), user.getId(),  getPublicIP(), "Xóa sản phẩm", new Timestamp(System.currentTimeMillis()),"","Mã sản phẩm"+id, 0));

        request.getRequestDispatcher("/admin/managerProduct").forward(request, response);
        // Chuyển hướng hoặc xử lý tiếp theo nếu cần
    }


    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        processRequest(req, resp);
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        processRequest(req, resp);
    }
}
