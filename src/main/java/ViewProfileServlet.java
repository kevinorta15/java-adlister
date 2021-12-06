import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet(name = "ViewProfileServlet", urlPatterns = "/profile")
public class ViewProfileServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        HttpSession currentSession = request.getSession();
        String username = (String) currentSession.getAttribute("username");
        System.out.println(username);
        request.setAttribute("username", username);
        if((currentSession.getAttribute("user") == null)){
            response.sendRedirect("/login");
        } else {
//            response.sendRedirect("/profile");
            request.getRequestDispatcher("/WEB-INF/profile.jsp").forward(request, response);
        }
    }
}