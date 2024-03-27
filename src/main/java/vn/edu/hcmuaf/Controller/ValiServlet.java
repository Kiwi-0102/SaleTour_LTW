package vn.edu.hcmuaf.Controller;

import vn.edu.hcmuaf.bean.User;
import vn.edu.hcmuaf.bean.valies;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

@WebServlet( "/ValiServlet")
public class ValiServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            ArrayList<valies> valiList = new ArrayList<>();
            int id = Integer.parseInt(request.getParameter("id"));
            HttpSession session = request.getSession();
            User user = (User) session.getAttribute("user");
            String userId = String.valueOf(user.getId());
            valies vl = new valies();
            vl.setUserId(Integer.parseInt(userId));
            vl.setId(id);
            vl.setNumAdult(1);
            vl.setNumChildren(0);
            vl.setTourId(id);

            HttpSession ses = request.getSession();
            ArrayList<valies> vali_List = (ArrayList<valies>) ses.getAttribute("vali-List");

            if (vali_List == null) {
                valiList.add(vl);
                ses.setAttribute("vali-List",valiList);
                    response.sendRedirect("CategorieServlet");
                    out.println("<script>alert('Đã thêm vào giỏ hàng');</script>");
            }else{
                valiList=vali_List;
                boolean exit = false;
                for (valies v: vali_List) {
                    if(v.getId()==id){
                        exit=true;
                        response.sendRedirect("CategorieServlet");
                        out.println("<script>alert('Sản phẩm đã tồn tại.');</script>");
                    }
                }
                    if(!exit){
                        valiList.add(vl);
                        response.sendRedirect("CategorieServlet");
                        out.println("<script>alert('Đã thêm vào giỏ hàng.');</script>");
                    }
            }
        }
    }
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
