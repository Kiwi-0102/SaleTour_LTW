package vn.edu.hcmuaf.Controller;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileUploadException;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;
import vn.edu.hcmuaf.DAO.LogDAO;
import vn.edu.hcmuaf.DAO.TourDao;
import vn.edu.hcmuaf.bean.Log;
import vn.edu.hcmuaf.bean.User;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import javax.swing.*;
import java.io.File;
import java.io.IOException;
import java.io.PrintStream;
import java.sql.Timestamp;
import java.util.Enumeration;
import java.util.Iterator;
import java.util.List;

import static vn.edu.hcmuaf.serice.PublicIPFetcher.getPublicIP;
import static vn.edu.hcmuaf.serice.getNation.Nation;

@WebServlet(name = "ADD", urlPatterns = {"/admin/add"})
public class AddTour extends HttpServlet {
    private ServletFileUpload uploader = null;
    public static int idtour;

    @Override
    public void init() throws ServletException {
        DiskFileItemFactory fileFactory = new DiskFileItemFactory();
        this.uploader = new ServletFileUpload(fileFactory);
    }
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        User usser = (User) request.getAttribute("user");
        response.setContentType("text/html;charset=UTF-8");
        request.setCharacterEncoding("UTF-8");
        LogDAO logs = new LogDAO();
        String action = request.getParameter("action");
        if (action != null) {
            String pname = request.getParameter("name");
            String img = request.getParameter("image");
            String pduration = request.getParameter("duration");
            String pdescription = request.getParameter("description");
            String pregion = request.getParameter("region");
            String quantity = request.getParameter("customer");
            if(quantity == null || quantity.isEmpty()){
                quantity="50";
            }

            String pstartTime = request.getParameter("startTime"); //
            String pschedule = request.getParameter("schedule");
            String pprice = request.getParameter("price");
//            System.out.println("pname"+pname);
//            System.out.println("img"+img);
//            System.out.println("pduration"+pduration);
//            System.out.println("pdescription"+pdescription);
//            System.out.println("pregion"+pregion);
//            System.out.println("quantity"+quantity);
//



            Enumeration<String> parameterNames = request.getParameterNames();
            while (parameterNames.hasMoreElements()) {
                String paramName = parameterNames.nextElement();
                if (paramName.startsWith("scheduleVar")) {
                    String paramValue = request.getParameter(paramName);
                    System.out.println("Schedule Var - Key: " + paramName + ", Value: " + paramValue);
                }
            }

            // Xử lý các biến ảnh
            parameterNames = request.getParameterNames();
            while (parameterNames.hasMoreElements()) {
                String paramName = parameterNames.nextElement();
                if (paramName.startsWith("imageVar")) {
                    String paramValue = request.getParameter(paramName);
                    System.out.println("Image Var - Key: " + paramName + ", Value: " + paramValue);
                }
            }





            int price = 0; //
            if (pprice != null && !pprice.isEmpty()) {
                try {
                    price = Integer.parseInt(pprice);
                } catch (NumberFormatException e) {

                    e.printStackTrace(); //
                }
            }
            if (pregion == null || pregion.trim().isEmpty()) {
                System.out.println("Thất bại");
//                request.getRequestDispatcher("/admin/managerProduct").forward(request, response);
            } else {

                TourDao dao = new TourDao();
                idtour = TourDao.addTour(pregion, 1, pname, img, price, pstartTime, pduration, pschedule, pdescription, Integer.parseInt(quantity));
                System.out.println("imgidtrc"+idtour);

                logs.insert(new Log(Log.ALERT,Nation(request), -1,  getPublicIP(), "Thêm sản phẩm mới", new Timestamp(System.currentTimeMillis()),"","Mã sản phẩm"+idtour+", Tên sản phẩm"+pname, 0));

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
//                request.getRequestDispatcher("/admin/managerProduct").forward(request, response);

                TourDao td = new TourDao();
                if(img1!=null){
                    td.insertImage(img1,idtour);
                }
                if(img2!=null){
                    td.insertImage(img2,idtour);
                }
                if(img3!=null){
                    td.insertImage(img3,idtour);
                }
                if(img4!=null){
                    td.insertImage(img4,idtour);
                }
                if(img5!=null){
                    td.insertImage(img4,idtour);
                }

                td.insertDetailDuration(idtour,pschedul1,pschedul2,pschedul3,pschedul4,pschedul5);

            }
        } else {
            if (!ServletFileUpload.isMultipartContent(request)) {
                System.out.println("Content type is not multipart/form-data");
                logs.insert(new Log(Log.ALERT,Nation(request), usser.getId(),  getPublicIP(), "Thêm sản phẩm mới thất bại", new Timestamp(System.currentTimeMillis()),"","", 0));
                throw new ServletException("Content type is not multipart/form-data");
            }

            try {
                List<FileItem> fileItemsList = uploader.parseRequest(request);
                Iterator<FileItem> fileItemsIterator = fileItemsList.iterator();
                System.out.println("id sau"+idtour);
                while (fileItemsIterator.hasNext()) {
                    FileItem fileItem = fileItemsIterator.next();
                    if (fileItem.getName() != null) {
                        System.out.println("link-image: " + request.getServletContext().getRealPath("/") + "assets\\images\\item\\" + fileItem.getName());
                        File file = new File(request.getServletContext().getRealPath("/") + "assets\\images\\item\\" + fileItem.getName());
                        fileItem.write(file);
                    }

                }
            } catch (FileUploadException e) {
                e.printStackTrace();
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String pname = request.getParameter("name");
        String img = request.getParameter("image");
        String pduration = request.getParameter("duration");
        String pdescription = request.getParameter("description");
        String pregion = request.getParameter("region");
        String quantity = request.getParameter("customer");
        if(quantity == null || quantity.isEmpty()){
            quantity="50";
        }
        System.out.println(quantity);

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

        String pprice = request.getParameter("price");
        int price = 0; //
        if (pprice != null && !pprice.isEmpty()) {
            try {
                price = Integer.parseInt(pprice);
            } catch (NumberFormatException e) {

                e.printStackTrace(); //
            }
        }
        if (pregion == null || pregion.trim().isEmpty()) {
            request.getRequestDispatcher("/admin/managerProduct").forward(request, response);
        } else {

            TourDao dao = new TourDao();
            int idtour = TourDao.addTour(pregion, 1, pname, img, price, pstartTime, pduration, pschedule, pdescription, Integer.parseInt(quantity));
            System.out.println(idtour);




            request.getRequestDispatcher("/admin/managerProduct").forward(request, response);

        }
    }
}
