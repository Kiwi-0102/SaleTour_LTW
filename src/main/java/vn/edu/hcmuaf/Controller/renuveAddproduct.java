package vn.edu.hcmuaf.Controller;

import vn.edu.hcmuaf.DAO.LogDAO;
import vn.edu.hcmuaf.DAO.TourDao;
import vn.edu.hcmuaf.bean.Booking;
import vn.edu.hcmuaf.bean.Log;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

@WebServlet(name = "renuveAddproduct", urlPatterns = {"/admin/renuveAddproduct"})
public class renuveAddproduct extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String type = request.getParameter("type");
        TourDao tourDao = new TourDao();
        if (type.equalsIgnoreCase("now")) {
            ArrayList<Log> logs = LogDAO.getAllnewProduct();
            ArrayList<Log> MontYear = new ArrayList<>();
            int totolSlot = 0;
            for (Log log: logs) {
                if(isSameMonthAndYear(String.valueOf(log.getCreate_at()))){
                    MontYear.add(log);
                    totolSlot += getQuantity(log.getCurrentValue());
                }
            }
            request.setAttribute("listLog", MontYear);
            request.setAttribute("totolSlot", totolSlot);
            request.getRequestDispatcher("renuveAddproduct.jsp").forward(request, response);
        } else if (type.equalsIgnoreCase("day")) {
            String day = request.getParameter("day");
            String month = request.getParameter("month");
            String year = request.getParameter("year");
            ArrayList<Log> logs = LogDAO.getAllnewProduct();
            ArrayList<Log> MontDay = new ArrayList<>();
            int totolSlot = 0;
            for (Log log: logs) {
                if(isSameDate(String.valueOf(log.getCreate_at()),year+"-"+month+"-"+day)){
                    MontDay.add(log);
                    totolSlot += getQuantity(log.getCurrentValue());
                }
            }
            request.setAttribute("listLog", MontDay);
            request.setAttribute("totolSlot", totolSlot);
            request.getRequestDispatcher("renuveAddproduct.jsp").forward(request, response);
        } else if (type.equalsIgnoreCase("month")) {
            String month = request.getParameter("month");
            String year = request.getParameter("year");
            ArrayList<Log> logs = LogDAO.getAllnewProduct();
            ArrayList<Log> MontDay = new ArrayList<>();
            int totolSlot = 0;
            for (Log log: logs) {
                if(isSameMonthAndYear(String.valueOf(log.getCreate_at()),year+"-"+month)){
                    MontDay.add(log);
                    totolSlot += getQuantity(log.getCurrentValue());
                }
            }
            request.setAttribute("listLog", MontDay);
            request.setAttribute("totolSlot", totolSlot);
            request.getRequestDispatcher("renuveAddproduct.jsp").forward(request, response);
        } else if (type.equalsIgnoreCase("year")) {
            String year = request.getParameter("year");
            ArrayList<Booking> bookings = (ArrayList<Booking>) tourDao.getBookingsForYear(year);
            ArrayList<Log> logs = LogDAO.getAllnewProduct();
            ArrayList<Log> MontDay = new ArrayList<>();
            int totolSlot = 0;
            for (Log log: logs) {
                if(isSameYear(String.valueOf(log.getCreate_at()),year)){
                    MontDay.add(log);
                    totolSlot += getQuantity(log.getCurrentValue());
                }
            }
            request.setAttribute("listLog", MontDay);
            request.setAttribute("totolSlot", totolSlot);
            request.getRequestDispatcher("renuveAddproduct.jsp").forward(request, response);
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
    public static boolean isSameMonthAndYear(String dateString) {
        SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");

        try {
            Date date = dateFormat.parse(dateString);

            Calendar inputDate = Calendar.getInstance();
            inputDate.setTime(date);

            Calendar currentDate = Calendar.getInstance();

            int inputMonth = inputDate.get(Calendar.MONTH);
            int inputYear = inputDate.get(Calendar.YEAR);

            int currentMonth = currentDate.get(Calendar.MONTH);
            int currentYear = currentDate.get(Calendar.YEAR);

            return (inputMonth == currentMonth && inputYear == currentYear);
        } catch (ParseException e) {
            e.printStackTrace();
        }

        return false;
    }
    public static boolean isSameDate(String dateTimeString, String inputDateString) {
        SimpleDateFormat dateTimeFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");

        try {
            // Phân tích cú pháp chuỗi ngày và giờ
            Date dateTime = dateTimeFormat.parse(dateTimeString);
            // Phân tích cú pháp ngày nhập vào
            Date inputDate = dateFormat.parse(inputDateString);

            // Chuyển đổi thành Calendar để dễ so sánh
            Calendar dateTimeCalendar = Calendar.getInstance();
            dateTimeCalendar.setTime(dateTime);

            Calendar inputDateCalendar = Calendar.getInstance();
            inputDateCalendar.setTime(inputDate);

            // So sánh ngày, tháng và năm
            return (dateTimeCalendar.get(Calendar.DAY_OF_MONTH) == inputDateCalendar.get(Calendar.DAY_OF_MONTH) &&
                    dateTimeCalendar.get(Calendar.MONTH) == inputDateCalendar.get(Calendar.MONTH) &&
                    dateTimeCalendar.get(Calendar.YEAR) == inputDateCalendar.get(Calendar.YEAR));
        } catch (ParseException e) {
            e.printStackTrace();
        }

        return false;
    }

    public static boolean isSameMonthAndYear(String dateTimeString, String inputMonthYearString) {
        SimpleDateFormat dateTimeFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        SimpleDateFormat monthYearFormat = new SimpleDateFormat("yyyy-MM");

        try {
            // Phân tích cú pháp chuỗi ngày và giờ
            Date dateTime = dateTimeFormat.parse(dateTimeString);
            // Phân tích cú pháp tháng và năm nhập vào
            Date inputMonthYear = monthYearFormat.parse(inputMonthYearString);

            // Chuyển đổi thành Calendar để dễ so sánh
            Calendar dateTimeCalendar = Calendar.getInstance();
            dateTimeCalendar.setTime(dateTime);

            Calendar inputMonthYearCalendar = Calendar.getInstance();
            inputMonthYearCalendar.setTime(inputMonthYear);

            // So sánh tháng và năm
            return (dateTimeCalendar.get(Calendar.MONTH) == inputMonthYearCalendar.get(Calendar.MONTH) &&
                    dateTimeCalendar.get(Calendar.YEAR) == inputMonthYearCalendar.get(Calendar.YEAR));
        } catch (ParseException e) {
            e.printStackTrace();
        }

        return false;
    }

    public static boolean isSameYear(String dateTimeString, String inputYearString) {
        SimpleDateFormat dateTimeFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        SimpleDateFormat yearFormat = new SimpleDateFormat("yyyy");

        try {
            // Phân tích cú pháp chuỗi ngày và giờ
            Date dateTime = dateTimeFormat.parse(dateTimeString);
            // Phân tích cú pháp năm nhập vào
            Date inputYear = yearFormat.parse(inputYearString);

            // Chuyển đổi thành Calendar để dễ so sánh
            Calendar dateTimeCalendar = Calendar.getInstance();
            dateTimeCalendar.setTime(dateTime);

            Calendar inputYearCalendar = Calendar.getInstance();
            inputYearCalendar.setTime(inputYear);

            // So sánh năm
            return dateTimeCalendar.get(Calendar.YEAR) == inputYearCalendar.get(Calendar.YEAR);
        } catch (ParseException e) {
            e.printStackTrace();
        }

        return false;
    }
    public static Integer getQuantity(String input) {
        // Định nghĩa các mẫu tìm kiếm
        Pattern pattern1 = Pattern.compile("Số lượng vé: (\\d+)");
        Pattern pattern2 = Pattern.compile("quantity (\\d+)");

        // Tạo đối tượng Matcher cho các mẫu
        Matcher matcher1 = pattern1.matcher(input);
        Matcher matcher2 = pattern2.matcher(input);

        // Tìm và trả về số lượng vé từ chuỗi đầu tiên nếu có
        if (matcher1.find()) {
            return Integer.parseInt(matcher1.group(1));
        }

        // Nếu không tìm thấy số lượng vé, tìm quantity từ chuỗi thứ hai
        if (matcher2.find()) {
            return Integer.parseInt(matcher2.group(1));
        }

        // Nếu không tìm thấy kết quả phù hợp, trả về null hoặc bất kỳ giá trị nào bạn muốn
        return null;
    }
    public static String extractPrice(String input) {
        // Xác định mẫu cho chuỗi 1
        Pattern pattern1 = Pattern.compile("Giá sản phẩm: (\\d+)");
        Matcher matcher1 = pattern1.matcher(input);

        // Nếu phù hợp với mẫu chuỗi 1, trả giá sản phẩm từ chuỗi 1
        if (matcher1.find()) {
            return matcher1.group(1);
        }

        // Xác định mẫu cho chuỗi 2
        Pattern pattern2 = Pattern.compile("price (\\d+)");
        Matcher matcher2 = pattern2.matcher(input);

        // Nếu phù hợp với mẫu chuỗi 2, trả giá sản phẩm từ chuỗi 2
        if (matcher2.find()) {
            return matcher2.group(1);
        }

        // Nếu không tìm thấy giá, trả về "Không tìm thấy giá"
        return "Không tìm thấy giá";
    }

    public static String extractId(String input) {
        // Kiểm tra nếu chuỗi chứa 'Mã sản phẩm'
        if (input.contains("Mã sản phẩm")) {
            // Định nghĩa mẫu (pattern) để khớp với từ 'Mã sản phẩm' theo sau là một số nguyên
            Pattern pattern = Pattern.compile("Mã sản phẩm: (\\d+)");
            Matcher matcher = pattern.matcher(input);

            // Nếu tìm thấy mẫu phù hợp, trả về giá trị số sau 'Mã sản phẩm'
            if (matcher.find()) {
                return matcher.group(1);
            }
        }
        // Kiểm tra nếu chuỗi chứa 'id'
        else if (input.contains("id")) {
            // Định nghĩa mẫu (pattern) để khớp với từ 'id' theo sau là một số nguyên
            Pattern pattern = Pattern.compile("id (\\d+)");
            Matcher matcher = pattern.matcher(input);

            // Nếu tìm thấy mẫu phù hợp, trả về giá trị số sau 'id'
            if (matcher.find()) {
                return matcher.group(1);
            }
        }

        // Nếu không tìm thấy, trả về thông báo lỗi
        return "Không tìm thấy mã sản phẩm hoặc ID";
    }

    public static String extractStartDate(String input) {
        // Định nghĩa mẫu (pattern) để khớp với Ngày bắt đầu hoặc startTime
        Pattern pattern1 = Pattern.compile(" (\\d{4}-\\d{2}-\\d{2})");
        Pattern pattern2 = Pattern.compile(" (\\d{4}-\\d{2}-\\d{2})");

        Matcher matcher1 = pattern1.matcher(input);
        Matcher matcher2 = pattern2.matcher(input);

        // Nếu tìm thấy mẫu phù hợp cho Ngày bắt đầu
        if (matcher1.find()) {
            return " " + matcher1.group(1);
        }

        // Nếu tìm thấy mẫu phù hợp cho startTime
        if (matcher2.find()) {
            return " " + matcher2.group(1);
        }

        // Nếu không tìm thấy ngày bắt đầu, trả về thông báo lỗi hoặc giá trị tùy chọn khác
        return "Ngày bắt đầu không được tìm thấy";
    }

    }

