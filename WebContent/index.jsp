<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <title>Travel Experts</title>

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
    <script src="js/custom.js"></script>
</head>
<body>
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

        <div class="swiper-container hero-slider">
            <div class="swiper-wrapper">
                <div class="swiper-slide hero-content-wrap" style="background-image: url('images/hero.jpg')">
                    <div class="hero-content-overlay position-absolute w-100 h-100">
                        <div class="container h-100">
                            <div class="row h-100">
                                <div class="col-12 col-lg-6 d-flex flex-column justify-content-center align-items-start">
                                    <header class="entry-header">
                                        <h1>Travel Experts</h1>
                                    </header><!-- .entry-header -->

                                    <div class="entry-content mt-4">
                                        <p><h4 style="color:#069">Don't miss a moment of this summer.</h4></p>
                                    </div><!-- .entry-content -->

                                    <footer class="entry-footer d-flex flex-wrap align-items-center mt-4">
                                        <a href="#" class="button gradient-bg">Read More</a>
                                    </footer><!-- .entry-footer -->
                                </div><!-- .col -->
                            </div><!-- .row -->
                        </div><!-- .container -->
                    </div><!-- .hero-content-overlay -->
                </div><!-- .hero-content-wrap -->

                <div class="swiper-slide hero-content-wrap" style="background-image: url('images/hero.jpg')">
                    <div class="hero-content-overlay position-absolute w-100 h-100">
                        <div class="container h-100">
                            <div class="row h-100">
                                <div class="col-12 col-lg-6 d-flex flex-column justify-content-center align-items-start">
                                    <header class="entry-header">
                                        <h1>The Best Services</h1>
                                    </header><!-- .entry-header -->

                                    <div class="entry-content mt-4">
                                        <p>"I was reading this book I picked up at a local bookstore from the friendliest man. Looking out over the city, seeing the mountains in the background, the sun shining. It was perfect, a truly perfect moment"</p>
                                    </div><!-- .entry-content -->

                                    <footer class="entry-footer d-flex flex-wrap align-items-center mt-4">
                                        <a href="#" class="button gradient-bg">Read More</a>
                                    </footer><!-- .entry-footer -->
                                </div><!-- .col -->
                            </div><!-- .row -->
                        </div><!-- .container -->
                    </div><!-- .hero-content-overlay -->
                </div><!-- .hero-content-wrap -->

                <div class="swiper-slide hero-content-wrap" style="background-image: url('images/hero.jpg')">
                    <div class="hero-content-overlay position-absolute w-100 h-100">
                        <div class="container h-100">
                            <div class="row h-100">
                                <div class="col-12 col-lg-6 d-flex flex-column justify-content-center align-items-start">
                                    <header class="entry-header">
                                        <h1>Package Deals</h1>
                                    </header><!-- .entry-header -->

                                    <div class="entry-content mt-4">
                                        <p>"Life can get busy. The mountains have a way of really grounding you. It really makes you realize how small you are and how beautiful and big our world is.  It's quite inspiring."</p>
                                    </div><!-- .entry-content -->

                                    <footer class="entry-footer d-flex flex-wrap align-items-center mt-4">
                                        <a href="#" class="button gradient-bg">Read More</a>
                                    </footer><!-- .entry-footer -->
                                </div><!-- .col -->
                            </div><!-- .row -->
                        </div><!-- .container -->
                    </div><!-- .hero-content-overlay -->
                </div><!-- .hero-content-wrap -->
            </div><!-- .swiper-wrapper -->

            <div class="pagination-wrap position-absolute w-100">
                <div class="swiper-pagination d-flex flex-row flex-md-column"></div>
            </div><!-- .pagination-wrap -->
        </div><!-- .hero-slider -->
    </header><!-- .site-header -->

    <div class="homepage-boxes">
        <div class="container">
            <div class="row">
                <div class="col-12 col-md-6 col-lg-4">
                    <div class="opening-hours">
                        <h2 class="d-flex align-items-center">Opening Hours</h2>

                        <ul class="p-0 m-0">
                            <li>Monday - Thursday <span>8.00 - 19.00</span></li>
                            <li>Friday <span>8.00 - 18.30</span></li>
                            <li>Saturday <span>9.30 - 17.00</span></li>
                            <li>Sunday <span>9.30 - 15.00</span></li>
                        </ul>
                    </div>
                </div>

                <div class="col-12 col-md-6 col-lg-3 mt-5 mt-md-0">
                    <div class="emergency-box">
                        <h2 class="d-flex align-items-center">Contact Us</h2>

                        <div class="call-btn button gradient-bg">
                            <a class="d-flex justify-content-center align-items-center" href="#"><img src="images/emergency-call.png"> +(403) 111-1111</a>
                        </div>

                        <p>Lorem ipsum dolor sit amet, cons ectetur adipiscing elit. Donec males uada lorem maximus mauris sceler isque, at rutrum nulla.</p>
                    </div>
                </div>

                <div class="col-12 col-md-6 col-lg-5 mt-5 mt-lg-0">
                    <div class="appointment-box">
                        <h2 class="d-flex align-items-center">Make an Appointment</h2>

                        <form class="d-flex flex-wrap justify-content-between">
                            <select class="select-department">
                                <option value="value1">Select Department</option>
                                <option value="value2">Select Department 1</option>
                                <option value="value3">Select Department 2</option>
                            </select>

                            <select class="select-doctor">
                                <option>Select Agent</option>
                                <option>Select Agent 1</option>
                                <option>Select Agent 2</option>
                            </select>

                            <input type="text" placeholder="Name">

                            <input type="number" placeholder="Phone No">

                            <input class="button gradient-bg" type="submit" value="Book Appointment">
                        </form>
                    </div>

                </div>
            </div>
        </div>
    </div>

    <div class="the-news">
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <h2>Featured Packages</h2>

                    <div class="row">
                        <div class="col-12 col-md-6 col-lg-4">
                            <div class="the-news-wrap">
                                <figure class="post-thumbnail">
                                    <a href="#"><img src="images/news-1.png" alt=""></a>
                                </figure>

                                <header class="entry-header">
                                    <h3>Package 1</h3>

                                    <div class="post-metas d-flex flex-wrap align-items-center">
                                        <div class="posted-date"><label>Start Date: </label><a href="#">April 12, 2018</a></div>

                                        <div class="posted-by"><label>End Date: </label><a href="#">April 12, 2018</a></div>

                                    </div>
                                </header>

                                <div class="entry-content">
                                    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec malesuada lorem maximus mauris scelerisque, at rutrum nulla dictum. Ut ac ligula sapien. Suspendisse cursus faucibus finibus. </p>
                                </div>
                            </div>
                        </div>

                        <div class="col-12 col-md-6 col-lg-4">
                            <div class="the-news-wrap">
                                <figure class="post-thumbnail">
                                    <a href="#"><img src="images/news-2.png" alt=""></a>
                                </figure>

                                <header class="entry-header">
                                    <h3>Package 2</h3>

                                    <div class="post-metas d-flex flex-wrap align-items-center">
                                        <div class="posted-date"><label>Start Date: </label><a href="#">April 12, 2018</a></div>

                                        <div class="posted-by"><label>End Date:</label><a href="#">April 12, 2018</a></div>

                                    </div>
                                </header>

                                <div class="entry-content">
                                    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec malesuada lorem maximus mauris scelerisque, at rutrum nulla dictum. Ut ac ligula sapien. Suspendisse cursus faucibus finibus. </p>
                                </div>
                            </div>
                        </div>

                        <div class="col-12 col-md-6 col-lg-4">
                            <div class="the-news-wrap">
                                <figure class="post-thumbnail">
                                    <a href="#"><img src="images/news-3.png" alt=""></a>
                                </figure>

                                <header class="entry-header">
                                    <h3>Package 3</h3>

                                    <div class="post-metas d-flex flex-wrap align-items-center">
                                        <div class="posted-date"><label>Start Date: </label><a href="#">April 12, 2018</a></div>

                                        <div class="posted-by"><label>End Date:</label><a href="#">April 12, 2018</a></div>
                                    </div>
                                </header>

                                <div class="entry-content">
                                    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec malesuada lorem maximus mauris scelerisque, at rutrum nulla dictum. Ut ac ligula sapien. Suspendisse cursus faucibus finibus. </p>
                                </div>
                            </div>
                        </div>
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


                            <p class="copyright"><!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved 
<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. --></p>
                        </div><!-- .foot-about -->
                    </div><!-- .col -->

                    <div class="col-12 col-md-6 col-lg-4 mt-5 mt-md-0">
                        <div class="foot-contact">
                            <h2>Contact</h2>

                            <ul class="p-0 m-0">
                                <li><span>Address:</span>Address**</li>
                                <li><span>Phone:</span>(403) 111-1111</li>
                                <li><span>Email:</span>yourmail@gmail.com</li>
                            </ul>
                        </div>
                    </div><!-- .col -->

                    <div class="col-12 col-md-6 col-lg-4 mt-5 mt-md-0">
                        <div class="foot-links">
                            <h2>Useful Links</h2>

                            <ul class="p-0 m-0">
                                <li><a href="index.jsp">Home</a></li>
                                <li><a href="#">Departments</a></li>
                                <li><a href="contact.jsp">Contact</a></li>
                                <li><a href="packages.jsp">Packages</a></li>
                            </ul>
                        </div><!-- .foot-links -->
                    </div><!-- .col -->
                </div><!-- .row -->
            </div><!-- .container -->
        </div><!-- .footer-widgets -->
    </footer><!-- .site-footer -->

    <script type="text/javascript" src="js/jquery.js"></script>
    <script type="text/javascript" src="js/jquery.collapsible.min.js"></script>
    <script type="text/javascript" src="js/swiper.min.js"></script>
    <script type="text/javascript" src="js/jquery.countdown.min.js"></script>
    <script type="text/javascript" src="js/circle-progress.min.js"></script>
    <script type="text/javascript" src="js/jquery.countTo.min.js"></script>
    <script type="text/javascript" src="js/jquery.barfiller.js"></script>
    <script type="text/javascript" src="js/custom.js"></script>
</body>
</html>