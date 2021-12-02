import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name= "ColorShowServlet", urlPatterns = "/viewcolor")
public class ColorShowServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String colorQuery = request.getParameter("color");
        request.setAttribute("color", colorQuery);
        request.getRequestDispatcher("viewcolor.jsp").forward(request, response);
    }
}

