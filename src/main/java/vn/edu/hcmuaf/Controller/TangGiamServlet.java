package vn.edu.hcmuaf.Controller;

import com.google.gson.Gson;
import vn.edu.hcmuaf.DAO.TourDao;
import vn.edu.hcmuaf.bean.valies;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.HashMap;
import java.util.Map;

@WebServlet("/TangGiamServlet")
public class TangGiamServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        response.setContentType("application/json");
        response.setCharacterEncoding("UTF-8");
        PrintWriter out = response.getWriter();
        Gson gson = new Gson();

        String action = request.getParameter("action");
        int id = Integer.parseInt(request.getParameter("id"));

        // Kiểm tra và gán giá trị mặc định nếu null
        Integer quatity = (Integer) session.getAttribute("quatity");
        if (quatity == null) quatity = 1;

        Integer quatitycc = (Integer) session.getAttribute("quatitycc");
        if (quatitycc == null) quatitycc = 0;

        int total = quatitycc + quatity;

        TourDao td = new TourDao();
        valies c = null;
        try {
            c = td.findvalibyid(id);
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        int i = c.getNumChildren() + 1;
        c.setNumChildren(i);

        Map<String, String> data = new HashMap<>();
        if (action != null && id >= 1) {
            if (action.equals("inc")) {
                int sochoconlai = td.sochoconlai(id);
                if (total < sochoconlai) {
                    quatity++;
                    session.setAttribute("quatity", quatity);
                    data.put("adult", String.valueOf(quatity));
                    data.put("childr", String.valueOf(quatitycc));
                } else {
                    data.put("adult", "Số lượng chỗ đã đạt tối đa");
                    data.put("childr", String.valueOf(quatity));
                }
            }

            if (action.equals("dec")) {
                if (quatity > 1) {
                    quatity--;
                }
                data.put("adult", String.valueOf(quatity));
                data.put("childr", String.valueOf(quatitycc));
                session.setAttribute("quatity", quatity);
            }

            if (action.equals("incc")) {
                int sochoconlai = td.sochoconlai(id);
                if (total < sochoconlai) {
                    quatitycc++;
                    session.setAttribute("quatitycc", quatitycc);
                    data.put("adult", String.valueOf(quatity));
                    data.put("childr", String.valueOf(quatitycc));
                } else {
                    data.put("adult", String.valueOf(quatity));
                    data.put("childr", "Số lượng chỗ đã đạt tối đa");
                }
            }

            if (action.equals("decc")) {
                if (quatitycc > 0) {
                    quatitycc--;
                }
                data.put("adult", String.valueOf(quatity));
                data.put("childr", String.valueOf(quatitycc));
                session.setAttribute("quatitycc", quatitycc);
            }
        } else {
            System.out.println("không thể in ra cái gì");
        }

        try {
            String json = gson.toJson(data);
            out.write(json);
//            System.out.println(json); // In ra chuỗi JSON để kiểm tra
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            out.close(); // Đảm bảo PrintWriter được đóng
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }
}
