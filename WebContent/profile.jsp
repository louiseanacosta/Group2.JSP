
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.sql.*" %>
<%
/*
* Author: Liming
* Purpose: 
*/
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
    <title>Travel Experts - Profile</title>

    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="css/bootstrap.min.css">

    <!-- Swiper CSS -->
    <link rel="stylesheet" href="css/swiper.min.css">

    <link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

    <!-- Styles -->
    <link rel="stylesheet" href="style.css">
 <script
  src="https://code.jquery.com/jquery-3.4.1.min.js"
  integrity="sha256-CSXorXvZcTkaix6Yvo6HppcZGetbYMGWSFlBw8HfCJo="
  crossorigin="anonymous">
</script>

 <script type="text/javascript" src="jquery.js"></script>
<script type="text/javascript"> 


function showcust(userid)
{	
	
	var url = "http://localhost:8080/Group2JSP/rest/customer/getuser/"+userid;
	$.get(url,function(json){
	var custFirstName = json.custFirstName;
	var custLastName=json.custLastName;
	var custBusPhone =json.custBusPhone;
	var custHomePhone=json.custHomePhone;
	var custCountry=json.custCountry;
	var custProv=json.custProv;
	var custAddress=json.custAddress;
	var custPostal=json.custPostal;
	var custCity=json.custCity;
	var custEmail=json.custEmail;
	
	
	
	
	
	document.getElementById("custFirstName").value = custFirstName;
	document.getElementById("custLastName").value= custLastName;
	document.getElementById("custBusPhone").value= custBusPhone;
	document.getElementById("custHomePhone").value= custHomePhone;
	//need to fix the country and Prov select 
	document.getElementById("custCountry").value= custCountry;
	document.getElementById("custProv").value= custProv;
	document.getElementById("custAddress").value= custAddress;
	document.getElementById("custPostal").value= custPostal;
	document.getElementById("custLastName").value= custLastName;
	document.getElementById("custCity").value= custCity;
	document.getElementById("custEmail").value= custEmail;
		
	},"json");
}
	
</script>



</head>
 <%
 /*
 * Author: Liming
 * Purpose: 
 */
 
 		if ((userid != null) && (!userid.equals("")))
		{
			out.print("<h3 class='d-flex align-items-center'> Hello " + userid + ", welcome to your travel profile </h3>");
			
			
			session.removeAttribute("message");
			
		}
  
%>

<style>
.borderstyle{
 	position: relative;
    padding: 300px;
    border-radius: 20px;
    border: 2px solid #dde4ea;
    border-color: #18a3eb;
}

label{
display:inline-block;
width:200px;
margin-right:30px;
text-align:right;
}

fieldset{
border:none;
width:500px;
margin:0px auto;
}
</style>
             
                    
<body class="single-page blog-page">
    <header>
        <div class="nav-bar">
            <div class="container">
                <div class="row">
                    <div class="col-12 d-flex flex-wrap justify-content-between align-items-center">
                        <div class="site-branding d-flex align-items-center">
                            <a class="d-block" href="index.jsp" rel="home"><img class="d-block" src="images/logo.png" alt="logo"></a>
                        </div><!-- .site-branding -->

                        <nav class="site-navigation d-flex justify-content-end align-items-center">
                            <ul class="d-flex flex-column flex-lg-row justify-content-lg-end align-items-center">
                                <li class="current-menu-item"><a href="index.jsp">Home</a></li>
                                <li><a href="packages.jsp">Packages</a></li>
                                <li><a href="contact.jsp">Contact</a></li>
                                <li><a href="profile.jsp">Account</a></li>
                                <form action="Logout" method="post">
									<input action="Logout" method="post" type="submit" value="Logout" class="button gradient-bg">
  							    </form>
                                

                            </ul>
                        </nav><!-- .site-navigation -->

                        <div class="hamburger-menu d-lg-none">
                            <span></span>
                            <span></span>
                            <span></span>
                            <span></span>
                        </div><!-- .hamburger-menu -->
                    </div><!-- .col -->
                </div><!-- .row -->
            </div><!-- .container -->
        </div><!-- .nav-bar -->

    </header><!-- .site-header -->
	<div style = "padding:100px">
	</div>
    <div class="container">
        <div class="row">
            <div class="col-12 col-lg-8">
                <div class="the-news">
                    <div class="row">
                        <div class="col-12 col-md-6">
                            <div class="the-news-wrap">
                                    <img src="images/team-1.jpg" alt="">

                                <div class="entry-content">
                               		<button type="button" name="" value="Register" class="button gradient-bg"">Change Photo</button>
                               	</div>

                         
                            </div>
                        </div>

                        <div class="col-12 col-md-6">
                            <div class="the-news-wrap">
			                   <div class="col-12 col-md-4 mt-5 mt-lg-0">
			                    <form method="post" action="" style="width:300px">
			                        <h2 class="d-flex align-items-center">My Profile</h2>
	
	<script type="text/javascript">
	var user = "<%=userid%>";
	$(document).ready(function(){showcust(user);});
	
	</script>								
			                        <ul class="p-0 m-0">
			                        <fieldset>
			                        	<label>First Name:</label><input type="text" name="custFirstName" id="custFirstName" pattern="/^[a-z ,.'-]+$/i" title="invalid name"/>
					        			<label>Last Name:</label><input type="text" name="custLastName" id="custLastName" pattern="/^[a-z ,.'-]+$/i" title="invalid name"/>
					        			<br>
					        			<label>Business Phone:</label><input type="text" name="custBusPhone" id="custBusPhone" pattern="^\D?(\d{3})\D?\D?(\d{3})\D?(\d{4})$" title="(403)xxx-xxxx or 403xxxxxxx"/>
					        			<br>
					        			<label>Home Phone:</label><input type="text" name="custHomePhone" id="custHomePhone" pattern="^\D?(\d{3})\D?\D?(\d{3})\D?(\d{4})$" title="(403)xxx-xxxx or 403xxxxxxx"/>
					        			<br>
					        			<label>Country:</label><select name='custCountry' id='custCountry' onchange='showProv(this.value)'>
					        			<option value=''>Select One...</option>
					        			</select>
					        			<br>
					        			<label>Province:</label>
					        			<select name='custProv'  id='custProv'>
					        			<option value=''>Select One...</option>
					        			</select>
					        			<br>
					        			<label>Address:</label>
					        			<input type="text" name="custAddress" id="custAddress" pattern="[A-Za-z0-9'\.\-\s\,].{1,50}" title="Invalid address"/>
					        			<br>
					        			<label>Postal Code:</label>
					        			<input type="text" name="custPostal" id="custPostal" patter="[A-Za-z]\d[A-Za-z] ?\d[A-Za-z]\d" title="Invalid postal code" />
					        			<br>
					        			<label>City:</label>
					        			<input type="text" name="custCity" id="custCity" pattern="[a-zA-Z].{1.20}" title="Invalid city name"/>
					        			<br>		        			
					        			<label>Email:</label>
					        			<input type="text" name="custEmail" id="custEmail" pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,}$"  title="Please enter an valid email"/>
					        			<br>
					        			<br>
					        			<div style="padding-left:100px">
					        			<button type="button" name="" value="Register" class="button gradient-bg" onclick="savecustomer()">Save Changes</button>
					        			</div>
					        		
					        		</ul>
					        		</fieldset>
			                        <br>
			                        
			                    </form>
			                </div>

                            </div>
                        </div>

                    </div>
                </div>
            </div>

            <div class="col-12 col-lg-4">
                <div class="sidebar">

                </div>
            </div>
        </div>
    </div>

    <footer class="site-footer">
        <div class="footer-widgets">
            <div class="container">
                <div class="row">
                    <div class="col-12 col-md-6 col-lg-4">
                        <div class="foot-about">
                            <h2><a href="#"><img src="images/logo.png" alt=""></a></h2>


                            <p class="copyright">
Copyright &copy;<script>document.write(new Date().getFullYear());</script></a></p>
                        </div><!-- .foot-about -->
                    </div><!-- .col -->

                    <div class="col-12 col-md-6 col-lg-4 mt-5 mt-md-0">
                        <div class="foot-contact">
                            <h2>Contact</h2>

                            <ul class="p-0 m-0">
                                <li><span>Addtress:</span>Mitlton Str. 26-27 London UK</li>
                                <li><span>Phone:</span>+53 345 7953 32453</li>
                                <li><span>Email:</span>yourmail@gmail.com</li>
                            </ul>
                        </div>
                    </div><!-- .col -->

                    <div class="col-12 col-md-6 col-lg-4 mt-5 mt-md-0">
                        <div class="foot-links">
                            <h2>Useful Links</h2>

                            <ul class="p-0 m-0">
                                <li><a href="#">Home</a></li>
                                <li><a href="#">About us</a></li>
                                <li><a href="#">Departments</a></li>
                                <li><a href="#">Contact</a></li>
                                <li><a href="#">FAQ</a></li>
                                <li><a href="#">Testimonials</a></li>
                            </ul>
                        </div><!-- .foot-links -->
                    </div><!-- .col -->
                </div><!-- .row -->
            </div><!-- .container -->
        </div><!-- .footer-widgets -->
    </footer><!-- .site-footer -->

    <script type='text/javascript' src='js/jquery.js'></script>
    <script type='text/javascript' src='js/jquery.collapsible.min.js'></script>
    <script type='text/javascript' src='js/swiper.min.js'></script>
    <script type='text/javascript' src='js/jquery.countdown.min.js'></script>
    <script type='text/javascript' src='js/circle-progress.min.js'></script>
    <script type='text/javascript' src='js/jquery.countTo.min.js'></script>
    <script type='text/javascript' src='js/jquery.barfiller.js'></script>
    <script type='text/javascript' src='js/custom.js'></script>
</body>
</html>