package servlets;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;

@WebServlet("/table")
public class Table extends HttpServlet {
    private final static ArrayList<String> list = new ArrayList<>();

    @Override
    protected void doGet (HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
        list.add(req.getParameter("data"));
        req.setAttribute("list", list);
        getServletContext().getRequestDispatcher("/tableindex.jsp").forward(req, resp);
    }

}