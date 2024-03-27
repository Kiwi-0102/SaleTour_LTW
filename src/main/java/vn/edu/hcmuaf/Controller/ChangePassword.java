package vn.edu.hcmuaf.Controller;

import vn.edu.hcmuaf.DB.ConnectToDatabase;
import vn.edu.hcmuaf.bean.User;
import vn.edu.hcmuaf.serice.Mahoa;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.text.Normalizer;
import java.util.regex.Pattern;

@WebServlet(name = "ChangePassword", value = "/ChangePassword")
public class ChangePassword extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        User user = (User) session.getAttribute("user");
        String passuser = user.getPassword();
        String oldpass = request.getParameter("oldpassword");
        String newpass1 = request.getParameter("newpass1");
        String newpass2 = request.getParameter("newpass2");
        String error = "";
        RequestDispatcher dispatcher = null;

        if (oldpass == null || oldpass.trim().isEmpty()) {
            error = "Vui lòng nhập mật khẩu cũ";
        } else if (passuser != null && !Mahoa.toSHA1(oldpass).equals(passuser)) {
            error = "Mật khẩu cũ không đúng";
        } else if (newpass1 == null || newpass1.trim().isEmpty()) {
            error = "Vui lòng nhập mật khẩu mới";
        } else if (oldpass.equals(newpass1)) {
            error = "Mật khẩu mới không được giống mật khẩu cũ";
        } else if (newpass2 == null || newpass2.trim().isEmpty()) {
            error = "Vui lòng nhập lại mật khẩu mới";
        } else if (newpass1.length() < 6) {
            error = "Mật khẩu mới phải có ít nhất 6 kí tự";
        } else if (!newpass1.equals(newpass2)) {
            error = "Mật khẩu nhập lại không giống với mật khẩu mới";
        } else if (containsWhitespace(newpass1)) {
            error = "Mật khẩu mới không được chứa khoảng trắng";
        } else if (checkSpecialCharacters(newpass1)) {
            error = "Mật khẩu mới không được chứa các chữ cái có dấu";
        } else if (!newpass1.matches("^[a-zA-Z0-9!@#$]*$")) {
            error = "Mật khẩu mới không được chứa các ký tự đặc biệt ngoại trừ !@#$";
        }

        if (!error.isEmpty()) {
            request.setAttribute("error", error);
            request.setAttribute("stqmk", "show");
            System.out.println("Giá trị của stqmk: " + request.getAttribute("stqmk"));
            dispatcher = request.getRequestDispatcher("infor.jsp");
            dispatcher.forward(request, response);
        } else {
            try {
                Connection conn = ConnectToDatabase.getConnect();
                PreparedStatement pst = conn.prepareStatement("UPDATE users SET password = ? where users.id = ? ");
                pst.setString(1, Mahoa.toSHA1(newpass1));
                pst.setInt(2, user.getId());

                int roundCount = pst.executeUpdate();
                if (roundCount > 0) {
                    request.setAttribute("status", "Thay đổi mật khẩu thành công");
                    request.getSession().invalidate();
                    response.sendRedirect("login.jsp");
                } else {
                    request.setAttribute("error", "Thay đổi mật khẩu không thành công. Xin vui lòng thực hiện lại");
                    dispatcher = request.getRequestDispatcher("infor.jsp");
                }
            } catch (Exception e) {
                System.out.println("lỗi" + e.getMessage());
                e.printStackTrace();
                throw new RuntimeException(e);
            }
        }
    }

    // Kiểm tra xem chuỗi có chứa khoảng trắng không
    private static boolean containsWhitespace(String str) {
        return str.contains(" ");
    }

    // Không được chứa các ký tự đặc biệt ngoại trừ !@#$" và khoảng trắng
    private boolean containsSpecialCharacters(String str) {
        return !str.matches("^[!@#$]*$");
    }

    // Không được chứa các kí tự có dấu
    public static boolean checkSpecialCharacters(String string) {
        String normalizedString = Normalizer.normalize(string, Normalizer.Form.NFD);
        Pattern pattern = Pattern.compile("\\p{InCombiningDiacriticalMarks}+");
        String withoutDiacritics = pattern.matcher(normalizedString).replaceAll("");
        return !string.equals(withoutDiacritics);
    }
}
