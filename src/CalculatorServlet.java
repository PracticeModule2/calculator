import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name = "CalculatorServlet", urlPatterns = "/calculator")
public class CalculatorServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        float first = Integer.parseInt(request.getParameter("first"));
        float second = Integer.parseInt(request.getParameter("second"));
        char operator = request.getParameter("operator").charAt(0);
        PrintWriter pw = response.getWriter();
        pw.println("<html>");
        try {
            float result = Calculator.calculate(first, second, operator);
            pw.println("<b>Result:</b> "+first + " " + operator + " " + second + " = " + result);
        } catch (Exception e) {
            pw.println("Error: "+ e.getMessage());
        }
        pw.println("</html>");
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
