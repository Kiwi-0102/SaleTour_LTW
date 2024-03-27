package vn.edu.hcmuaf.Controller;

import vn.edu.hcmuaf.bean.Tour;
import vn.edu.hcmuaf.serice.SortTour;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.ArrayList;

@WebServlet(name = "SortController", value = "/SortController")
public class SortController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");
        response.setContentType("text/html;charset=utf-8");
        HttpSession session = request.getSession();
        ArrayList<Tour> ListTour = (ArrayList<Tour>) session.getAttribute("ListTour");
        String action = request.getParameter("action");
        ArrayList<Tour> Listsort = null;


        if (action == null) {
            System.out.println("Khong thuc hien duoc gi het");
            session.setAttribute("ListTour", null);
            request.getRequestDispatcher("catelogy.jsp").forward(request, response);

        }else  if(action.equals("sortbypriceAscending")){
             Listsort = SortTour.SortByPriceAscending(ListTour);
        } else if(action.equals("sortbypriceDescending")){
            Listsort = SortTour.SortByPriceDescending(ListTour);
        } else if(action.equals("sortbyDay")){
            String day = request.getParameter("day");
            System.out.println(day);
            ArrayList<Tour> ListsortDay = SortTour.SortByDuration(ListTour,day);
            for (Tour t: ListsortDay) {
                System.out.println(t);
            }
            request.setAttribute("ListsortDay",ListsortDay);
            request.setAttribute("sortDay","sortDay");
            request.getRequestDispatcher("catelogy.jsp").forward(request, response);
            return;
        } else if (action.equals("sortbyregion")) {
            String region = request.getParameter("region");
            System.out.println(region);
            ArrayList<Tour> ListsortRegion = SortTour.SortByRegion(ListTour,region);
            for (Tour t: ListsortRegion) {
                System.out.println(t);
            }
            request.setAttribute("ListsortDay",ListsortRegion);
            request.setAttribute("sortDay","sortRegion");
            request.getRequestDispatcher("catelogy.jsp").forward(request, response);
            return;
        }


        session.setAttribute("ListTour",Listsort);
        request.getRequestDispatcher("catelogy.jsp").forward(request, response);

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
