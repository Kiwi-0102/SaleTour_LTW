package vn.edu.hcmuaf.Controller;

import org.json.JSONObject;
import vn.edu.hcmuaf.serice.FacebookAPI;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "LoginFB", value = "/loginFB")
public class LoginFB extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        StringBuilder sb = new StringBuilder();
        String line;
        while ((line = request.getReader().readLine()) != null) {
            sb.append(line);
        }
        String requestBody = sb.toString();
        JSONObject json = new JSONObject(requestBody);
        String accessToken = json.getString("accessToken");

        // Gọi hàm để lấy thông tin người dùng từ Facebook
        try {
            String userProfile = FacebookAPI.getFacebookUserProfile(accessToken);
            response.setContentType("application/json");
            response.getWriter().write(userProfile);
        } catch (Exception e) {
            response.sendError(HttpServletResponse.SC_INTERNAL_SERVER_ERROR, e.getMessage());
        }
    }
}