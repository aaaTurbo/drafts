package servlets;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/controller")
public class Controller extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
        if (String.valueOf(req.getParameter("type")).equals("check")) {
            int x = Integer.parseInt(req.getParameter("x"));
            float y = Float.parseFloat(req.getParameter("y"));
            float r = Float.parseFloat(req.getParameter("r"));
            req.getRequestDispatcher("/areaChecker").include(req, resp);
        }
        if (String.valueOf(req.getParameter("type")).equals("redirect")) {
            resp.sendRedirect("/table");
//            resp.getWriter().write("/table");
        }
    }
}
