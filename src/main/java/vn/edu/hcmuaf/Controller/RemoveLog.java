package vn.edu.hcmuaf.Controller;

import com.google.gson.Gson;
import com.google.gson.reflect.TypeToken;
import vn.edu.hcmuaf.DAO.LogDAO;
import vn.edu.hcmuaf.DB.JDBIConnector;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.Arrays;
import java.util.List;
import java.util.stream.Collectors;

@WebServlet(name = "RemoveLog", value = "/RemoveLog")
public class RemoveLog extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String idDeleteJson = request.getParameter("idDelete");
        List<Integer> idDelete = new Gson().fromJson(idDeleteJson, new TypeToken<List<Integer>>() {}.getType());
        System.out.println("Danh sách ID cần xóa: " + idDelete);

        LogDAO listdelete = new LogDAO();
        int delete = listdelete.deleteLogsByIds(idDelete);

        if(delete>0){
            response.setContentType("text/plain");
            response.setCharacterEncoding("UTF-8");
            response.getWriter().write("Xóa log dùng thành công!");
        }else{
            response.setContentType("text/plain");
            response.setCharacterEncoding("UTF-8");
            response.getWriter().write("Xóa log dùng thất bại!");
        }

    }
}
