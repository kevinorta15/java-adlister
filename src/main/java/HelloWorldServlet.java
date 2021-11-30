import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;


@WebServlet(name="HelloWorldServlet", urlPatterns = "/hello")

public class HelloWorldServlet extends HttpServlet {
    private int hitCounter;

    public void reset(){
        hitCounter = 0;
    }

    protected void doGet(HttpServletRequest req, HttpServletResponse res) throws IOException, ServletException, NullPointerException {

        res.setContentType("text/html");
        String searchQuery = req.getParameter("q");
        String nameQuery = req.getParameter("name");
        PrintWriter out = res.getWriter();
        out.println("<h1>Hello, World!</h1>");
        out.println("Your are visitor number: " + (++hitCounter));
        if(searchQuery != null){
            out.println("<p>Here are your results for " + searchQuery + "</p>");
        }
        if(searchQuery.equals("reset")){
            reset();
        }
        if(nameQuery != null){
            out.println("<p>Hello, " + nameQuery + "!</p>");
        }
    }
}
