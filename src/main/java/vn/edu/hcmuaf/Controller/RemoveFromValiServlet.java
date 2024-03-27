package vn.edu.hcmuaf.Controller;
import vn.edu.hcmuaf.bean.valies;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

@WebServlet("/RemoveFromValiServlet")
public class RemoveFromValiServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

        protected void doGet(HttpServletRequest request, HttpServletResponse response)
                throws ServletException, IOException {
            response.setContentType("text/html;charset=UTF-8");
            try (PrintWriter out = response.getWriter()) {
                String bookId = request.getParameter("id");
                if (bookId != null) {
                    ArrayList<valies> valiList = (ArrayList<valies>) request.getSession().getAttribute("vali-List");
                    if (valiList != null) {
                        for (valies v :valiList ) {
                            if (v.getId() == Integer.parseInt(bookId)) {
                                valiList.remove(v);
                                break;
                            }
                        }
                    }
                    response.sendRedirect("vali.jsp");

                } else {
                    response.sendRedirect("vali.jsp");
                }

            }
        }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
