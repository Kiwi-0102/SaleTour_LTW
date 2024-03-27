package vn.edu.hcmuaf.Controller;

import vn.edu.hcmuaf.bean.Tour;
import vn.edu.hcmuaf.serice.TourService;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.ArrayList;

@WebServlet(name = "SearchController", value = "/SearchController")
public class SearchController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");
        response.setContentType("text/html;charset=utf-8");

        HttpSession session = request.getSession();
        String action = request.getParameter("action");
        System.out.println(action);

        if (action == null) {
            System.out.println("Khong thuc hien duoc gi het");
            session.setAttribute("ListTour", null);
            request.getRequestDispatcher("catelogy.jsp").forward(request, response);
        }else if (action.equals("searchByLocation")) {

            String startInput = request.getParameter("dxp");
            String endInput = request.getParameter("diemden");
            System.out.println("dxp " + startInput);
            System.out.println("diemden " + endInput);
            System.out.println("--------------------------------------");

            ArrayList<Tour> searchResults = (ArrayList<Tour>) new TourService().findAll();
            int size = searchResults.size();
            System.out.println(size);

            ArrayList<Tour> kqtimkiem = new ArrayList<>();

            for (Tour t : searchResults) {
                String input = t.getName();

// Nếu cả hai điểm đều không được nhập
                if ((startInput == null || startInput.isEmpty()) && (endInput == null || endInput.isEmpty())) {
                    kqtimkiem.add(t);
                } else {
                    int firstDash = input.indexOf("-");
                    int lastDash = input.lastIndexOf("-");

                    if (firstDash != -1 && lastDash != -1) {
                        String startPoint = input.substring(0, firstDash).trim();
                        String endPoint = input.substring(lastDash + 1).trim();

                        // Nếu không nhập điểm cuối, chỉ kiểm tra điểm đầu
                        if ((endInput == null || endInput.isEmpty()) && startPoint.equals(startInput)) {
                            kqtimkiem.add(t);
                        }
                        // Nếu không nhập điểm đầu, chỉ kiểm tra điểm cuối
                        else if ((startInput == null || startInput.isEmpty()) && endPoint.equals(endInput)) {
                            kqtimkiem.add(t);
                        }
                        // Nếu cả hai đều được nhập, kiểm tra cả điểm đầu và cuối
                        else if (startPoint.equals(startInput) && endPoint.equals(endInput)) {
                            kqtimkiem.add(t);
                        }
                    } else {
                        // Nếu không có dấu "-" trong chuỗi, so sánh nguyên chuỗi với điểm đầu nhập vào
                        if ((endInput == null || endInput.isEmpty()) && startInput != null && startInput.equals(input)) {
                            kqtimkiem.add(t);
                        }
                        if ((startInput == null || startInput.isEmpty()) && endInput != null && endInput.equals(input)) {
                            kqtimkiem.add(t);
                        }
                    }
                }
            }
            System.out.println("kqtk: " + kqtimkiem.size());
            session.setAttribute("ListTour", kqtimkiem);
            request.getRequestDispatcher("catelogy.jsp").forward(request, response);

        }else if(action.equals("searchByParam")){
            String param = request.getParameter("param");
            String error = "";
            if(param.isEmpty()){
                error = "Vui lòng nhập thông tin cần tìm";
            }

            if(!error.isEmpty()){
                request.setAttribute("error", error);
                request.getRequestDispatcher("catelogy.jsp").forward(request, response);
            }else{
                ArrayList<Tour> kqtimkiem = new TourService().getListTourbySearch(param);
                session.setAttribute("ListTour", kqtimkiem);
                request.getRequestDispatcher("catelogy.jsp").forward(request, response);
            }

        }
    }

    }


