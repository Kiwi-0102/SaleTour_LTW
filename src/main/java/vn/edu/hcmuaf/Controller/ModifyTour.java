package vn.edu.hcmuaf.Controller;

import vn.edu.hcmuaf.DAO.TourDao;
import vn.edu.hcmuaf.bean.Tour;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet(name = "Edit", urlPatterns = {"/admin/edit"})
public class ModifyTour extends HttpServlet {
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        request.setCharacterEncoding("UTF-8");

        String id = request.getParameter("id");
        int pid = Integer.parseInt(id);
        String pname = request.getParameter("name");
        String pimage = request.getParameter("image");
        String pstartTime = request.getParameter("startTime"); // Sửa tên tham số này
        String pschedule = request.getParameter("schedule");

        String pprice = request.getParameter("price");
        int price = 0; // Giá trị mặc định hoặc giá trị khác tùy thuộc vào yêu cầu của bạn
        if (pprice != null && !pprice.isEmpty()) {
            try {
                price = Integer.parseInt(pprice);
            } catch (NumberFormatException e) {
                // Xử lý nếu chuỗi không chứa một số nguyên hợp lệ
                e.printStackTrace(); // Hoặc xử lý theo cách phù hợp với ứng dụng của bạn
            }
        }
        String pduration = request.getParameter("duration");
        String pdescription = request.getParameter("description");


        String pregion = request.getParameter("region");


        TourDao dao = new TourDao();
        Tour tour = dao.findtourbyID(pid);



        dao.modifyTour(pid, pregion, 1, pname, pimage, price, pstartTime, pduration, pschedule, pdescription);

        HttpSession session = request.getSession();
        session.setAttribute("editTour", tour);

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
