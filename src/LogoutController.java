

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


@WebServlet("/Logout")
public class LogoutController extends HttpServlet {
   private static final long serialVersionUID = 1L;

   protected void doPost(HttpServletRequest request,
         HttpServletResponse response) throws ServletException, IOException {
      // TODO Auto-generated method stub
      response.setContentType("text/html");
      PrintWriter out = response.getWriter();
      //out.println("<h1>Thank you for using travel experts! Your account is logout.</h1>");
      response.sendRedirect("index.jsp");
      HttpSession session = request.getSession(false);
      // session.setAttribute("user", null);
      session.removeAttribute("loggedin");
      session.getMaxInactiveInterval();
   }
}