
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.sql.*" %>
<%
	String loggedin = (String)session.getAttribute("loggedin");
	String userid = (String)session.getAttribute("userid");
	if ((loggedin == null) || loggedin.equals("False"))//can't use == as String is object and equals() compares 2 String object
	{
		session.setAttribute("message","You need to sign on First");
		response.sendRedirect("loginRegister.jsp");
	}
	
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
 <%
		if ((userid != null) && (!userid.equals("")))
		{
			out.print("<h3 class='d-flex align-items-center'> Hello " + userid + ", welcome to your travel profile </h3>");
			session.removeAttribute("message");
		}
 
%>
  <div class="col-12 col-md-4 mt-5 mt-lg-0">
     <div class="opening-hours h-100">
        <form action="Logout" method="post">
             <input type="submit" value="Logout" class="button gradient-bg">
        </form>
      </div>
  </div>                      

</body>
</html>