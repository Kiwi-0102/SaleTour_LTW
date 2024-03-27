package vn.edu.hcmuaf.Controller;

import vn.edu.hcmuaf.DAO.TourDao;
import vn.edu.hcmuaf.bean.valies;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;

@WebServlet("/TangGiamServlet")
public class TangGiamServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
{
            HttpSession sesion = request.getSession();
            response.setContentType("text/html;charset=UTF-8");
            try (PrintWriter out = response.getWriter()) {
                String action = request.getParameter("action");
                int id = Integer.parseInt(request.getParameter("id"));
                TourDao td = new TourDao();
                valies c = null;
                try {
                    c = td.findvalibyid(id);
                } catch (SQLException e) {
                    throw new RuntimeException(e);
                }
                int i = c.getNumChildren() + 1;
                c.setNumChildren(i);

                if (action != null && id >= 1) {
                    if (action.equals("inc")) {
                        int quatity = (int) sesion.getAttribute("quatity");

                        quatity++;
                       int result =  quatity;
                         sesion.setAttribute("quatity",quatity);
                        request.setAttribute("id",id);
                        response.sendRedirect("ServiceServlet?id=" +id);

                    }

                    if (action.equals("dec")) {
                                int quatity = (int) sesion.getAttribute("quatity");

                                quatity--;
                                int result =  quatity;
                                sesion.setAttribute("quatity",quatity);
                                request.setAttribute("id",id);
                                response.sendRedirect("ServiceServlet?id=" +id);;
                    }
                    if (action.equals("incc")) {

                        int quatitycc = (int) sesion.getAttribute("quatitycc");
                        quatitycc++;
                        int result =  quatitycc;
                        sesion.setAttribute("quatitycc",quatitycc);
                        request.setAttribute("id",id);
                        response.sendRedirect("ServiceServlet?id=" +id);

                    }

                    if (action.equals("decc")) {
                        int quatitycc = (int) sesion.getAttribute("quatitycc");
                        quatitycc--;
                        int result =  quatitycc;
                        sesion.setAttribute("quatitycc",quatitycc);
                        request.setAttribute("id",id);
                        response.sendRedirect("ServiceServlet?id=" +id);
//                        response.sendRedirect(x);

                    }
                } else {
//                    response.sendRedirect(x);
                }
                }
            }
        }


    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
