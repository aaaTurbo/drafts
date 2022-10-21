package servlets;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

import static java.lang.Math.sqrt;

@WebServlet("/areaChecker")
public class AreaChecker extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws IOException {
        int x = Integer.parseInt(req.getParameter("x"));
        float y = Float.parseFloat(req.getParameter("y"));
        float r = Float.parseFloat(req.getParameter("r"));
        boolean firstQuater = false;
        boolean thirdQuater = false;
        boolean fourthQuater = false;
        if (x <= r && x >= -r && y >= 0 && y <= r && y == -x + r) {
            firstQuater = true;
        }
        if (x >= -r && x <= 0 && y <= 0 && y >= -r) {
            thirdQuater = true;
        }
        if (x >= 0 && x <= r && y >= -r && y <= 0 && -y == sqrt(r * r - x * x)) {
            fourthQuater = true;
        }
        resp.getWriter().write(String.valueOf(firstQuater || thirdQuater || fourthQuater));
    }
}
