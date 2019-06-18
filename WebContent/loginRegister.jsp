<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%
	String msg = (String)session.getAttribute("message");
	
%>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>Travel Experts - LogIn/Register</title>

    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="css/bootstrap.min.css">

    <link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

    <!-- Swiper CSS -->
    <link rel="stylesheet" href="css/swiper.min.css">

    <!-- Styles -->
    <link rel="stylesheet" href="style.css">
 <script type="text/javascript" src="jquery.js"></script>
 <script type="text/javascript"> 

function showCountry()
{
	
	var Countryselect = document.getElementById("custCountry");
	var url = "http://localhost:8080/Group2JSP/rest/country/getallCountries";
	$.get(url,function(json)
		{
		
		for(i=0; i<json.length; i++){
			var option = document.createElement("option");
			option.text=json[i].name;
			option.value=json[i].code;
			Countryselect.add(option);
		}
		
	},"json");
}

function showProv(country)
{
	var Provselect = document.getElementById("custProv");
	
	var url = "http://localhost:8080/Group2JSP/rest/country/getProvState/"+country;
	
	$.get(url,function(json)
			{
		     Provselect.options.length=0;
			for(i=0; i<json.length; i++){
				var option = document.createElement("option");
				option.text=json[i].name;
				option.value=json[i].code;
				
				Provselect.add(option);
			}
			
		},"json");
		
}
 
</script>
<script>
	$(document).ready(function(){showCountry();});
	</script>
<script src="jquery.js"></script>
<script>
	function savecustomer()
	{
		console.log("In savecustomer()...")
		var url = 'http://localhost:8080/Group2JSP/rest/customer/insertcustomer';
		$.ajax({
			url:url,
			method:'put',
			contentType: "application/json",
			//dataType: "text",
			data: JSON.stringify({
		        "customerId": 0,
		        "agentId": parseInt(document.getElementById("agentId").value),
		        "custAddress": document.getElementById("custAddress").value,
		        "custBusPhone": document.getElementById("custBusPhone").value,
		        "custCity": document.getElementById("custCity").value,
		        "custCountry": document.getElementById("custCountry").value,
		        "custEmail":document.getElementById("custEmail").value,
		        "custFirstName": document.getElementById("custFirstName").value,
		        "custHomePhone":document.getElementById("custHomePhone").value,
		        "custLastName": document.getElementById("custLastName").value,
		        "custPassword": document.getElementById("newpassword").value,
		        "custPostal": document.getElementById("custPostal").value,
		        "custProv": document.getElementById("custProv").value,
		        "custUserId": document.getElementById("newuserid").value}),
		        success: function(data) {
		            alert('New agent was inserted.');
			    },
			    failure:  function(data) {
	            	alert('Agent creation failed.');
			    }  
		});
	}
	
</script>
</head>
<body class="single-page">
    <header class="site-header">
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
                                <li><a href="contact.jsp">Log In/</a></li>
                                

                                <li class="call-btn button gradient-bg mt-3 mt-md-0">
                                    <a class="d-flex justify-content-center align-items-center" href="loginRegister.jsp">LOGIN/REGISTER</a>
                                </li>
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

        <div class="container">
            <div class="row">
                <div class="col-12">
                
                    <h1>Log In/ <br> Register</h1>

                    <div class="breadcrumbs">
                        <ul class="d-flex flex-wrap align-items-center p-0 m-0">
                            <li><a href="#">Home</a></li>
                            <li>Contact</li>
                        </ul>
                    </div><!-- .breadcrumbs -->

                </div>
            </div>
        </div>

        <img class="header-img" src="images/contact-bg.png" alt="">
    </header><!-- .site-header -->

    <div class="contact-page-short-boxes">
        <div class="container">
            <div class="row">
                <div class="col-12 col-md-4">
                    <div class="contact-info h-100">
                    <form method="post" action="LoginVerifier">
                        <h2 class="d-flex align-items-center">Log In:</h2>

                        <ul class="p-0 m-0">		        
		        					        			
                            Username: <br>
                            <input type="text" name="userid" required/>
                            <br>
                            Password: <br>
                             <input type="text" name="password" required/>
                             <br>
                             
    <%
		if ((msg != null) && (!msg.equals("")))
		{
			out.print("<h2>" + msg + "</h2>");
			session.removeAttribute("message");
		}
	%>
                        </ul>
                        
                        <br>
                       <input type="submit" name="" value="Log In" class="button gradient-bg">
                      
                       </form>
                    </div>
                </div>

                <div class="col-12 col-md-4 mt-5 mt-lg-0">
                    <div class="opening-hours h-100">
                    <form method="post" action="">
                        <h2 class="d-flex align-items-center">Not yet a member? Register with us:</h2>
						
                        <ul class="p-0 m-0">
                        Frist Name:<br>
		        			<input type="text" name="custFirstName" id="custFirstName" required/>
		        			<br>
		        			Last Name:<br>
		        			<input type="text" name="custLastName" id="custLastName" required/>
		        			<br>
		        			Bussiness Phone:<br>
		        			<input type="text" name="custBusPhone" id="custBusPhone" required/>
		        			<br>
		        			Home Phone:<br>
		        			<input type="text" name="custHomePhone" id="custHomePhone" required/>
		        			<br>
		        			Country:<br>
		        			<select name='custCountry' id='custCountry' onchange='showProv(this.value)'>
		        			<option value=''>Select One...</option>
		        			</select>
		        			<br>
		        			Province:<br>
		        			<select name='custProv'  id='custProv'>
		        			<option value=''>Select One...</option>
		        			</select>
		        			<br>
		        			Address:<br>
		        			<input type="text" name="custAddress" id="custAddress" required/>
		        			<br>
		        			Postal Code:<br>
		        			<input type="text" name="custPostal" id="custPostal" required/>
		        			<br>
		        			City:<br>
		        			<input type="text" name="custCity" id="custCity" required/>
		        			<br>		        			
		        			Email:<br>
		        			<input type="text" name="custEmail" id="custEmail" required/>
		        			<br>
		        			agentId:<br>
		        			<input type="text" name="agentId" id="agentId"/>
		        			<br>
                            Username: <br>
                            <input type="text" name="newuserid" id="newuserid" required/>
                            <br>
                            Password: <br>
                             <input type="password" name="newpassword" id="newpassword" required/>
                        </ul>
                        <br>
                        <button type="button" name="" value="Register" class="button gradient-bg" onclick="savecustomer()">MY BUTTON</button>
                    </form>
                    </div>
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
Copyright &copy;<script>document.write(new Date().getFullYear());</script> 
                        </div><!-- .foot-about -->
                    </div><!-- .col -->

                    <div class="col-12 col-md-6 col-lg-4 mt-5 mt-md-0">
                        <div class="foot-contact">
                            <h2>Contact</h2>

                            <ul class="p-0 m-0">
                                <li><span>Address:</span>Mitlton Str. 26-27 London UK</li>
                                <li><span>Phone:</span>+53 345 7953 32453</li>
                                <li><span>Email:</span>yourmail@gmail.com</li>
                            </ul>
                        </div>
                    </div><!-- .col -->

                    <div class="col-12 col-md-6 col-lg-4 mt-5 mt-md-0">
                        <div class="foot-links">
                            <h2>Useful Links</h2>

                            <ul class="p-0 m-0">
                                <li><a href="index.jsp">Home</a></li>
                                <li><a href="contact.jsp">Contact</a></li>
                                <li><a href="packages.jsp">FAQ</a></li>
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