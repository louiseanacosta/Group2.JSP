

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class LoginVerifier
 */
@WebServlet("/LoginVerifier")
public class LoginVerifier extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoginVerifier() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		String userid = request.getParameter("userid");
		String password = request.getParameter("password");
		if (verifyLogin(userid, password))
		{
			session.setAttribute("loggedin", "True");
			response.sendRedirect("index.jsp");
		}
		else
		{
			session.setAttribute("message", "User ID or Password is incorrect");
			response.sendRedirect("loginRegister.jsp");
		}
	}

	private boolean verifyLogin(String usr, String pwd) {
		// check userid and password against agents table
		try {
			Class.forName("org.mariadb.jdbc.Driver");
			Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/travelexperts", "root", "");
			String sql = "select CustPassword from customers where CustUserId=?";
			PreparedStatement stmt = conn.prepareStatement(sql);
			stmt.setString(1, usr);
			ResultSet rs = stmt.executeQuery();
			if (rs.next())
			{
				if (rs.getString(1).equals(pwd))
				{
					conn.close();
					return true;
				}
				else
				{
					conn.close();
					return false;
				}
			}
			else
			{
				conn.close();
				return false;
			}
		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return false;
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
