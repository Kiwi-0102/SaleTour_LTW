package vn.edu.hcmuaf.Controller;

import vn.edu.hcmuaf.DAO.TourDao;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.File;
import java.io.IOException;

@WebServlet(name = "ADD", urlPatterns = {"/admin/add"})
public class AddTour extends HttpServlet {
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        request.setCharacterEncoding("UTF-8");


        String pname = request.getParameter("name");
        String img = request.getParameter("image");
    //        Part filePart = request.getPart("image");
    //        String fileName = filePart.getSubmittedFileName();
    //        String root = getServletContext().getRealPath("/assesst/");
    //        File check = new File(root);
    //        if (!(check).exists()) check.mkdirs();
    //        if (filePart != null) {
    //            filePart.write(root + fileName);
    //        }

        String pstartTime = request.getParameter("startTime"); //
        String pschedule = request.getParameter("schedule");

        String pprice = request.getParameter("price");
        int price = 0; //
        if (pprice != null && !pprice.isEmpty()) {
            try {
                price = Integer.parseInt(pprice);
            } catch (NumberFormatException e) {

                e.printStackTrace(); //
            }
        }
        String pduration = request.getParameter("duration");
        String pdescription = request.getParameter("description");


        String pregion = request.getParameter("region");

        if (pregion == null || pregion.trim().isEmpty()) {

            request.getRequestDispatcher("/admin/managerProduct").forward(request, response);

        } else {

            TourDao dao = new TourDao();
            dao.addTour(pregion, 1, pname, img, price, pstartTime, pduration, pschedule, pdescription);
            request.getRequestDispatcher("/admin/managerProduct").forward(request, response);

        }


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
