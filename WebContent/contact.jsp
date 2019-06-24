<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>Travel Experts - Contact</title>

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
    
    <script
  src="https://code.jquery.com/jquery-3.4.1.min.js"
  integrity="sha256-CSXorXvZcTkaix6Yvo6HppcZGetbYMGWSFlBw8HfCJo="
  crossorigin="anonymous">
    
</script>
 <script type="text/javascript" src="jquery.js"></script>
<script type="text/javascript">

// loads first name, Last name, Email, phone number, and position
function loadagentsList()
{
	//var agentselect =$("#agentid");
	
	var url = "http://localhost:8080/Group2JSP/rest/agents/getallagents";
	$.get(url,function(json)
		{
		//info being displayed on page
		for(i=0; i<json.length; i++){
			var para = document.createElement("P"); //,"div class="col-12 col-md-6 col-lg-3","img src="images/team-1.jpg","div class="medical-team-wrap"
			var DOM_a = document.createElement("a");
			var string = json[i].agentId+" "
			+json[i].agtFirstName+" "
			+json[i].agtLastName+" "
			+json[i].agtEmail+" "
			+json[i].agtBusPhone+" "
			+json[i].agtPosition;
			var node = document.createTextNode(string);
			
			var img = document.createElement('img');
			    img.src = "images/team-1.jpg";
			       
			    DOM_a.appendChild(img);
			    para.appendChild(node);
			
			
			var element = document.getElementById("div1");
			element.appendChild(para);
			element.appendChild(DOM_a);
		}
		
		},"json");
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
                                <li><a href="contact.jsp">Contact</a></li>
                                

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
                    <h1>Contact</h1>

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
                    
                 <!-- add agency contacts in here if you have time -- hard coded right now -->
                    
                        <h2 class="d-flex align-items-center">Calgary Office</h2>

                        <ul class="p-0 m-0">
                            <li><span>Address:</span>115 8th Ave SW Calgary AB</li>
                            <li><span>Phone:</span>4032719873</li>
                            <li><span>Fax:</span>4032719872</li>
                            <li><span>Postal Code:</span>T2P1N3</li>
                        </ul>
                    </div>
                </div>

                <div class="col-12 col-md-4">
                    <div class="contact-info h-100">
                    
                 <!-- add agency contacts in here if you have time -- hard coded right now -->
                    
                        <h2 class="d-flex align-items-center">Okotoks office</h2>

                        <ul class="p-0 m-0">
                            <li><span>Address:</span>110 Main Street Okotoks AB</li>
                            <li><span>Phone:</span>4035632381</li>
                            <li><span>Fax:</span>4035632382</li>
                             <li><span>Postal Code:</span>T7R3J5</li>
                        </ul>
                    </div>
                </div>

                <!-- <div class="col-12 col-md-4 mt-5 mt-lg-0">
                    <div class="emergency-box h-100">
                        <h2 class="d-flex align-items-center">Head Office</h2>

                        <div class="call-btn text-center">
                            <a class="d-flex justify-content-center align-items-center button gradient-bg" href="#"><img src="images/emergency-call.png"> +34 586 778 8892</a>
                        </div>

                        <p>Lorem ipsum dolor sit amet, cons ectetur adipiscing elit. Donec males uada lorem maximus mauris sceler isque, at rutrum nulla.</p>
                    </div>
                </div> -->
            </div>
        </div>
    </div>

    <div class="contact-form">
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <h2>Get in Touch</h2>
                </div>

                <div class="col-12  col-md-4">
                    <input type="text" placeholder="Name">
                </div><!-- col-4 -->

                <div class="col-12 col-md-4">
                    <input type="email" placeholder="E-mail">
                </div><!-- col-6 -->

                <div class="col-12 col-md-4">
                    <input type="text" placeholder="Subject">
                </div>

                <div class="col-12">
                    <textarea name="name" rows="12" cols="80" placeholder="Message"></textarea>
                </div>

                <div class="col-12">
                    <input type="submit" name="" value="Send Message" class="button gradient-bg">
                </div>
            </div><!-- end of row -->
        </div>
    </div><!--end of  contact-form -->
    
<!-- displaying agent details 
  -- calls the function from top of page to loop through each agent in 
  -- DB and display their details 
 -->
 
   	
	
    <div class="medical-team">
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <h2>Agents</h2>
                </div>
               
    <!-- Display all agent details  -->
	<script>
		$(document).ready(function(){loadagentsList();});
	</script>
	<div class="col-12 col-md-6 col-lg-3">
	<div id="div1" class="medical-team-wrap"></div>
	
	</div>
                <!-- <div class="col-12 col-md-6 col-lg-3">
                    <div class="medical-team-wrap">
                        <img src="images/team-1.jpg" alt="">

                        <h4>Agent 1</h4>
                        <h5>Detail</h5>
                    </div>
                </div>

                <div class="col-12 col-md-6 col-lg-3 mt-5 mt-md-0">
                    <div class="medical-team-wrap">
                        <img src="images/team-2.jpg" alt="">

                        <h4>Agent 1</h4>
                        <h5>Detail</h5>
                    </div>
                </div>

                <div class="col-12 col-md-6 col-lg-3 mt-5 mt-lg-0">
                    <div class="medical-team-wrap">
                        <img src="images/team-3.jpg" alt="">

                        <h4>Agent 1</h4>
                        <h5>Detail</h5>
                    </div>
                </div>

                <div class="col-12 col-md-6 col-lg-3 mt-5 mt-lg-0">
                    <div class="medical-team-wrap">
                        <img src="images/team-4.jpg" alt="">

                        <h4>Agent 1</h4>
                        <h5>Detail</h5>
                    </div>
                </div> -->
            </div>
        </div>
    </div>

    <div class="container">
        <div class="row">
            <div class="col-12">
                <div class="contact-page-map">
                    <iframe id="gmap_canvas" src="https://maps.google.com/maps?q=university of san francisco&t=&z=15&ie=UTF8&iwloc=&output=embed" frameborder="0" scrolling="no" marginheight="0" marginwidth="0"></iframe>
                </div><!-- map -->
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
                    
                        <!--  <div class="foot-contact">
                            <h2>Contact</h2>

                            <ul class="p-0 m-0">
                                <li><span>Addtress:</span>Mitlton Str. 26-27 London UK</li>
                                <li><span>Phone:</span>+53 345 7953 32453</li>
                                <li><span>Email:</span>yourmail@gmail.com</li>
                            </ul>
                        </div> -->
                        
                    </div><!-- .col -->

                    <div class="col-12 col-md-6 col-lg-4 mt-5 mt-md-0">
                        <div class="foot-links">
                            <h2>Usefull Links</h2>

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