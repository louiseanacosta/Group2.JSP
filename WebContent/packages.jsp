<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>Travel Experts - Packages</title>

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

// loads package name, package desc, Base Price, package start date, and package end date

// authored by Colin Lee-Chee and LiMing Hong
// 20 June 2019
function loadPackageList()
{
	//var selectPackage =$("#packageid");
	
	var url = "http://localhost:8080/Group2JSP/rest/package/getallpackages";
	$.get(url,function(json)
		{
		var table = document.createElement("table");
		var th = document.createElement("th");
		
		//info being displayed on page
		for(i=0; i<json.length; i++){
			/* var para = document.createElement("P"); //,"div class="col-12 col-md-6 col-lg-3","img src="images/team-1.jpg","div class="medical-team-wrap"
			var string = json[i].pkgName+" "
			+json[i].pkgDesc+" "
			+json[i].pkgBasePrice+" "
			+json[i].pkgStartDate+" "
			+json[i].pkgEndDate; */
			
			/* var node = document.createTextNode(string);
			para.appendChild(node);
			
			
			var element = document.getElementById("div1");
			element.appendChild(para);  */
			var tr = document.createElement("tr");
			
			var td = document.createElement("td");
			var td2 = document.createElement("td");
			var td3 = document.createElement("td");
			var td4 = document.createElement("td");
			var td5 = document.createElement("td");
			var td6 = document.createElement("td");
			
			var text = document.createTextNode(json[i].pkgName);
			var text2 = document.createTextNode(json[i].pkgDesc);
			var text3 = document.createTextNode(json[i].pkgBasePrice);
			var text4 = document.createTextNode(json[i].pkgStartDate);
			var text5 = document.createTextNode(json[i].pkgEndDate);
			var button = document.createElement("button");
			
			
			var buttontext = document.createTextNode("BOOK");
			button.appendChild(buttontext);
			
			td.appendChild(text);
			td2.appendChild(text2);
			td3.appendChild(text3);
			td4.appendChild(text4);
			td5.appendChild(text5);
			td6.appendChild(button);

			tr.appendChild(td);
			tr.appendChild(td2);
			tr.appendChild(td3);
			tr.appendChild(td4);
			tr.appendChild(td5);
			tr.appendChild(td6);
			
			table.appendChild(tr);
			
			
		}
		
		div1.appendChild(table); 
		},"json");
}
</script>
    
</head>

<style>

button{
 background-color: #008CBA; /* Green */
  border: none;
  color: white;
  padding: 15px 32px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 16px;
}
 
 
td{
	width:300px;
}

.center {
    margin-left: auto;
    margin-right: auto;
    width: 100%;
    text-align: center;
}

table {
    text-align: center;
    margin: auto;
    margin: auto;
    max-width: 100%;
    border-collapse: collapse;
    //border-spacing: 0; 
}

</style>
<body class="single-page blog-page">
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
                    <h1>Packages</h1>
                    <div class="breadcrumbs">
                        <ul class="d-flex flex-wrap align-items-center p-0 m-0">
                            <li><a href="#">Home</a></li>
                            <li>Packages</li>
                        </ul>
                    </div><!-- .breadcrumbs -->
                </div>
            </div>
        </div>

        <img class="header-img" src="images/contact-bg.png" alt="">
    </header><!-- .site-header -->

    <div class="container">
        <div class="row">
          
                <div class="the-news">
                            <div class="the-news-wrap">
                         <!--  -->
                                
                                 
                                
                       <div class="row">
                        <!--  -->
                        <div class="col-12 col-md-6 col-lg-4">
                            <div class="the-news-wrap">
                                <figure class="post-thumbnail">
                                    <a href="#"><img src="images/news-3.png" alt=""></a>
                                </figure>

                                <header class="entry-header">
                                    <h3>Caribbean New Year</h3>

                                    <div class="post-metas d-flex flex-wrap align-items-center">
                                        <div class="posted-date"><label>Start Date: </label><a href="#">July 11, 2019</a></div>

                                        <div class="posted-by"><label>End Date:</label><a href="#">Aug 21, 2019</a></div>
                                    </div>
                                </header>

                            </div>
                        </div>
                        <!--  -->
                                                <div class="col-12 col-md-6 col-lg-4">
                            <div class="the-news-wrap">
                                <figure class="post-thumbnail">
                                    <a href="#"><img src="images/news-2.png" alt=""></a>
                                </figure>

                                <header class="entry-header">
                                    <h3>Polynesian Paradise</h3>

                                    <div class="post-metas d-flex flex-wrap align-items-center">
                                        <div class="posted-date"><label>Start Date: </label><a href="#">Dec 12, 2019</a></div>

                                        <div class="posted-by"><label>End Date:</label><a href="#">Dec 20, 2019</a></div>

                                    </div>
                                </header>
                            </div>
                        </div>
                        <!--  -->
                        
                                    
                        <div class="col-12 col-md-6 col-lg-4">
                            <div class="the-news-wrap">
                                <figure class="post-thumbnail">
                                    <a href="#"><img src="images/news-1.png" alt=""></a>
                                </figure>	

                                <header class="entry-header">
                                    <h3>Asian Expedition</h3>

                                    <div class="post-metas d-flex flex-wrap align-items-center">
                                        <div class="posted-date"><label>Start Date: </label><a href="#">May 14, 2019</a></div>

                                        <div class="posted-by"><label>End Date: </label><a href="#">May 28, 2019</a></div>

                                    </div>
                                </header>
                            </div>
                        </div>
                        <!--  -->
                       
                                
                                <header class="entry-header">
                                   
                                     </header>
										
                                    		<script>$(document).ready(function(){loadPackageList();});
								  			</script>
								  
											<div id="div1" class="medical-team-wrap">
											</div>
									
                      <!--  -->
                      
                   
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