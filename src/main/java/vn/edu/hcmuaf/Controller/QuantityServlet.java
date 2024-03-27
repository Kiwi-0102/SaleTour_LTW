package vn.edu.hcmuaf.Controller;

import vn.edu.hcmuaf.bean.valies;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

@WebServlet("/QuantityServlet")
public class QuantityServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        {
            response.setContentType("text/html;charset=UTF-8");
            try (PrintWriter out = response.getWriter()) {
                String action = request.getParameter("action");
                int id = Integer.parseInt(request.getParameter("id"));
                ArrayList<valies> vali_List = (ArrayList<valies>) request.getSession().getAttribute("vali-List");
                if (action != null && id >= 1) {
                    if (action.equals("inc")) {
                        for (valies c : vali_List) {
                            if (c.getId() == id) {
                                int quantity = c.getNumAdult();
                                quantity++;
                                c.setNumAdult(quantity);
                                response.sendRedirect("vali.jsp");
                            }
                        }
                    }

                    if (action.equals("dec")) {
                        for (valies c : vali_List) {
                            if (c.getId() == id && c.getNumAdult() > 1) {
                                int quantity = c.getNumAdult();
                                quantity--;
                                c.setNumAdult(quantity);
                                break;
                            }
                        }
                        response.sendRedirect("vali.jsp");
                    }
                    if (action.equals("incc")) {
                        for (valies c : vali_List) {
                            if (c.getId() == id) {
                                int quantity = c.getNumChildren();
                                quantity++;
                                c.setNumChildren(quantity);
                                response.sendRedirect("vali.jsp");
                            }
                        }
                    }

                    if (action.equals("decc")) {
                        for (valies c : vali_List) {
                            if (c.getId() == id && c.getNumChildren() > 1) {
                                int quantity = c.getNumChildren();
                                quantity--;
                                c.setNumChildren(quantity);
                                break;
                            }
                        }
                        response.sendRedirect("vali.jsp");
                    }
                } else {
                    response.sendRedirect("vali.jsp");
                }
            }
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
