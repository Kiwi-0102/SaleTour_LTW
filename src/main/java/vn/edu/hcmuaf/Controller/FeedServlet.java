package vn.edu.hcmuaf.Controller;

import vn.edu.hcmuaf.DAO.FeebackDAO;
import vn.edu.hcmuaf.DAO.indexDao;
import vn.edu.hcmuaf.bean.*;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet("/FeedServlet")
public class FeedServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        indexDao indx = new indexDao();
        User user = (User) session.getAttribute("user");
        String text = request.getParameter("danhgia");
        System.out.println("noi dung text trong svlr"+text);
        String error = "";
        if (user == null) {
            error = "Bạn phải đăng nhập để gửi đánh gá";
        } else if (text.isEmpty()) {
            error = "Hãy nhập nộp dung đánh giá";
        }

        if (!error.isEmpty()) {
            System.out.println("noi dung err trong svlr"+error);

            session.setAttribute("errorfeed", error);
            response.sendRedirect("index.jsp");
        } else {

            boolean kq = FeebackDAO.addFeedback(user.getId(), text);
            if (kq) {
                error = "Thành công";
                System.out.println("kq" + kq);
                session.setAttribute("errorfeed", error);
                response.sendRedirect("index.jsp");
            } else {
                error = "Xảy ra lỗi";
                session.setAttribute("errorfeed", error);
                response.sendRedirect("index.jsp");
            }
        }
    }
}