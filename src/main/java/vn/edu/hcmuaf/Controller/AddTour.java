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

        String pschedul1 = request.getParameter("schedule1");
        String img1 = request.getParameter("img1");

        String pschedul2 = request.getParameter("schedule2");
        String img2 = request.getParameter("img2");

        String pschedul3 = request.getParameter("schedule3");
        String img3 = request.getParameter("img3");

        String pschedul4 = request.getParameter("schedule4");
        String img4 = request.getParameter("img4");

        String pschedul5 = request.getParameter("schedule5");
        String img5 = request.getParameter("img5");

        System.out.println("pschedul1"+pschedul1);
        System.out.println("pschedul2"+pschedul2);
        System.out.println("pschedul3"+pschedul3);
        System.out.println("pschedul4"+pschedul4);
        System.out.println("pschedul5"+pschedul5);

        System.out.println("img1"+img1);
        System.out.println("img2"+img2);
        System.out.println("img3"+img3);
        System.out.println("img4"+img4);
        System.out.println("img5"+img5);




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
        int quantity = Integer.parseInt(request.getParameter("quantity"));
        if (pregion == null || pregion.trim().isEmpty()) {
            request.getRequestDispatcher("/admin/managerProduct").forward(request, response);
        } else {

            TourDao dao = new TourDao();
            int idtour = TourDao.addTour(pregion, 1, pname, img, price, pstartTime, pduration, pschedule, pdescription,quantity);
            System.out.println(idtour);




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
