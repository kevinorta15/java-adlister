import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name="ColorPickServlet", urlPatterns = "/pickcolor")
public class ColorPickServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
        request.getRequestDispatcher("colorchoose.jsp").forward(request, response);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
        String chosenColor = request.getParameter("color");
        System.out.println(chosenColor);
        request.setAttribute("color", chosenColor);
        response.sendRedirect("/viewcolor?color=" + chosenColor);
    }
}
