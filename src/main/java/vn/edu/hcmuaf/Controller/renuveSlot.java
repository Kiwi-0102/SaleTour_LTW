package vn.edu.hcmuaf.Controller;

import vn.edu.hcmuaf.DAO.TourDao;
import vn.edu.hcmuaf.bean.Booking;
import vn.edu.hcmuaf.bean.Tour;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;

import static vn.edu.hcmuaf.DAO.TourDao.toltalConlai;
import static vn.edu.hcmuaf.DAO.TourDao.toltalDaDat;

@WebServlet(name = "renuveSlot", urlPatterns = {"/admin/renuveSlot"})
public class renuveSlot extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String type = request.getParameter("type");
        TourDao tourDao = new TourDao();
        if (type.equalsIgnoreCase("now")) {
            ArrayList<Tour> tours = tourDao.getDisplayTours();
            int sochoconlai = toltalConlai(tours);
            int sochodadat = toltalDaDat(tours);
            request.setAttribute("listTour", tours);
            request.setAttribute("sochoconlai", sochoconlai);
            request.setAttribute("sochodadat", sochodadat);
            request.getRequestDispatcher("renuveSlot.jsp").forward(request, response);
        } else if (type.equalsIgnoreCase("day")) {
            String day = request.getParameter("day");
            String month = request.getParameter("month");
            String year = request.getParameter("year");
            ArrayList<Booking> bookings = (ArrayList<Booking>) tourDao.getBookingsForDate(year + "-" + month + "-" + day);
            long doanhthu = tourDao.doanhthutheongay(year + "-" + month + "-" + day);
            request.setAttribute("listTour", bookings);
            request.setAttribute("doanhthu", doanhthu);
            request.getRequestDispatcher("statictical.jsp").forward(request, response);
        } else if (type.equalsIgnoreCase("month")) {
            String month = request.getParameter("month");
            String year = request.getParameter("year");
            ArrayList<Booking> bookings = (ArrayList<Booking>) tourDao.getBookingsForMonth(month, year);
            long doanhthu = tourDao.doanhthutheothang(month, year);
            request.setAttribute("listTour", bookings);
            request.setAttribute("doanhthu", doanhthu);
            request.getRequestDispatcher("statictical.jsp").forward(request, response);
        } else if (type.equalsIgnoreCase("year")) {
            String year = request.getParameter("year");
            ArrayList<Booking> bookings = (ArrayList<Booking>) tourDao.getBookingsForYear(year);
            long doanhthu = tourDao.doanhthutheonam(year);
            request.setAttribute("listTour", bookings);
            request.setAttribute("doanhthu", doanhthu);
            request.getRequestDispatcher("statictical.jsp").forward(request, response);
        } else if (type.equalsIgnoreCase("BetWeen")) {
            String day = request.getParameter("day");
            String month = request.getParameter("month");
            String year = request.getParameter("year");
            String day2 = request.getParameter("day2");
            String month2 = request.getParameter("month2");
            String year2 = request.getParameter("year2");
            ArrayList<Booking> bookings = (ArrayList<Booking>) tourDao.getBookingsForBetWeen(year+"-"+month+"-"+day, year2+"-"+month2+"-"+day2);
            long doanhthu = tourDao.doanhthutrongkhoang(year+"-"+month+"-"+day, year2+"-"+month2+"-"+day2);
            request.setAttribute("listTour", bookings);
            request.setAttribute("doanhthu", doanhthu);
            request.getRequestDispatcher("statictical.jsp").forward(request, response);
        }
    }


    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        }

    }
