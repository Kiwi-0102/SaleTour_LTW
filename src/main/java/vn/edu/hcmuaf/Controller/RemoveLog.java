package vn.edu.hcmuaf.Controller;

import com.google.gson.Gson;
import com.google.gson.reflect.TypeToken;
import vn.edu.hcmuaf.DAO.LogDAO;
import vn.edu.hcmuaf.DB.JDBIConnector;
import vn.edu.hcmuaf.bean.Log;
import vn.edu.hcmuaf.bean.User;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.sql.Timestamp;
import java.util.Arrays;
import java.util.List;
import java.util.stream.Collectors;

import static vn.edu.hcmuaf.serice.PublicIPFetcher.getPublicIP;
import static vn.edu.hcmuaf.serice.getNation.Nation;

@WebServlet(name = "RemoveLog", value = "/RemoveLog")
public class RemoveLog extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        User user = (User) session.getAttribute("user");
        LogDAO logs = new LogDAO();

        String idDeleteJson = request.getParameter("idDelete");
        List<Integer> idDelete = new Gson().fromJson(idDeleteJson, new TypeToken<List<Integer>>() {}.getType());
        System.out.println("Danh sách ID cần xóa: " + idDelete);

        LogDAO listdelete = new LogDAO();
        int delete = listdelete.deleteLogsByIds(idDelete);
        logs.insert(new Log(Log.ALERT,Nation(request), user.getId(),  getPublicIP(), "Xóa "+idDelete.size()+" dòng log", new Timestamp(System.currentTimeMillis()),"Mã log: "+idDelete,"Mã log: "+idDelete, 0));

        if(delete>0){
            response.setContentType("text/plain");
            response.setCharacterEncoding("UTF-8");
            response.getWriter().write("Xóa log dùng thành công!");
        }else{
            logs.insert(new Log(Log.ALERT,Nation(request), user.getId(),  getPublicIP(), "Xóa "+idDelete.size()+" dòng log thất bại", new Timestamp(System.currentTimeMillis()),"","", 0));
            response.setContentType("text/plain");
            response.setCharacterEncoding("UTF-8");
            response.getWriter().write("Xóa log dùng thất bại!");
        }

    }
}
