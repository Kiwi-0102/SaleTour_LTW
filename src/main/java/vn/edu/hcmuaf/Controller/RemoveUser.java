package vn.edu.hcmuaf.Controller;

import com.mysql.cj.jdbc.JdbcConnection;
import vn.edu.hcmuaf.DB.JDBIConnector;
import vn.edu.hcmuaf.bean.User;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "RemoveUser", value = "/RemoveUser")
public class RemoveUser extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try {
            int id = Integer.parseInt(request.getParameter("id"));
            System.out.println("delete user " + id);
            String sql = "DELETE FROM users WHERE id = ?";
            System.out.println("SQL: " + sql); // In ra câu lệnh SQL để debug
            int deletedRows = JDBIConnector.getJdbi().withHandle(handle -> {
                return handle.createUpdate(sql)
                        .bind(0, id)
                        .execute();
            });

            System.out.println("số dòng bị xóa " + deletedRows);
            System.out.println("-----------------------------");
            if (deletedRows > 0) {
                // Trả về kết quả
                response.setContentType("text/plain");
                response.setCharacterEncoding("UTF-8");
                response.getWriter().write("Xóa người dùng thành công!");
            } else {
                // Trả về thông báo nếu không có dòng nào bị xóa
                response.setContentType("text/plain");
                response.setCharacterEncoding("UTF-8");
                response.getWriter().write("Không có người dùng nào được xóa!");
            }
        } catch (NumberFormatException e) {
            // Xử lý ngoại lệ khi id không phải là một số
            response.sendError(HttpServletResponse.SC_BAD_REQUEST, "ID không hợp lệ!");
        } catch (Exception ex) {
            // In ra lỗi nếu có vấn đề xảy ra trong quá trình xóa dữ liệu
            System.out.println("Lỗi khi xóa dữ liệu: " + ex.getMessage());
            response.sendError(HttpServletResponse.SC_INTERNAL_SERVER_ERROR, "Lỗi khi xóa dữ liệu!");
        }
    }


}
