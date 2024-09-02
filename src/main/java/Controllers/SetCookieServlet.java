package Controllers;



import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.annotation.WebServlet;

// @WebServlet("/setCookie")
public class SetCookieServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Create a cookie
        Cookie userCookie = new Cookie("username", "JohnDoe");
        
        // Set the cookie to expire in 24 hours
        userCookie.setMaxAge(24 * 60 * 60);
        
        // Add the cookie to the response
        response.addCookie(userCookie);
        
        PrintWriter out = response.getWriter();       
        out.println("here");
        
        System.out.println("heree");

        // Redirect to the JSP page
        //response.sendRedirect("viewInfo.jsp");
        
        RequestDispatcher rd = request.getRequestDispatcher("setSessionServlet");
        rd.forward(request, response);
        
   
    }
}
