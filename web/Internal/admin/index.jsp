<%-- 
    Document   : index
    Created on : 5 Sep, 2019, 4:16:55 PM
    Author     : Priyanshu
--%>

<%  String USERNAME=(String)session.getAttribute( "USERNAME" );
     //Session Validating if no username is found in session then will redirect to login 
   if(USERNAME==null)
   {
   response.sendRedirect("../../banklogin.jsp");
   }
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!--Homepage for Admin -->

<!DOCTYPE html>
<html lang="en">
<head>
    <title>Welcome <%=session.getAttribute("FULLNAME") %></title>
	<meta charset="UTF-8">
	<meta name="description" content="Cryptocurrency Landing Page Template">
	<meta name="keywords" content="cryptocurrency, unica, creative, html">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<!-- Favicon -->
	<link href="img/favicon.ico" rel="shortcut icon"/>

	<!-- Google Fonts -->
	<link href="https://fonts.googleapis.com/css?family=Lato" rel="stylesheet">

	<!-- Stylesheets -->
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
	<link rel="stylesheet" href="css/font-awesome.min.css"/>
	<link rel="stylesheet" href="css/themify-icons.css"/>
	<link rel="stylesheet" href="css/animate.css"/>
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/assets/owl.carousel.css"/>
	<link rel="stylesheet" href="css/style.css"/>


	
	

</head>
<body>
	<!-- Page Preloder -->
	<div id="preloder">
		<div class="loader"></div>
	</div>

	<!-- Header section -->
	<header class="header-section clearfix">
		<div class="container-fluid">
			<a href="index.html" class="site-logo">
				<img src="img/logo.png" alt="">
			</a>
			<div class="responsive-bar"><i class="fa fa-bars"></i></div>
			
			<a href="logout.jsp" class="site-btn">Logout</a>
			<nav class="main-menu">
				<ul class="menu-list">
					
					
					<li><a href="features.html">Features</a></li>
					<li><a href="about.html">About</a></li>
                                        <li><a href="offers.html">Offers</a></li>
                                        <li><a href="contact.html">Contact Us</a></li>
					
					
				</ul>
			</nav>
		</div>
	</header>
	<!-- Header section end -->


	<!-- Hero section -->
	<section class="hero-section">
		<div class="container">
			<div class="row">
				<div class="col-lg-4 hero-text" id="defaultview">
                                    <h3>Saving Account-<br></h3><br>
                                    <h4> <a href="opennewsaving.jsp">Open New Saving Account</a> </h4>
                                    <h4><a href="viewaccount">View  Account</a> </h4>
                                     <h4><a href="addmoneysaving">Add Money</a> </h4>
                                    <h4><a href="withdrawmoneysaving">Withdraw Money</a> </h4>
                                     <h4><a href="onlinebankingregistration">Register For Internet Banking</a> </h4>	
				</div>
                            <div class="col-lg-4 hero-text" id="defaultview">
                                 <h3>Current Account-<br></h3><br>
                                <h4> <a href="opennewcurrent">Open New Current Account</a> </h4>
                                    <h4><a href="viewcurrentaccount">View  Account</a> </h4>
                                    <h4><a href="addmoneycurrent">Add Money</a> </h4>
                                    <h4><a href="withdrawmoneycurrent">Withdraw Money</a> </h4>  
                                </div>
                             <div class="col-lg-4 hero-text" id="defaultview">
                                    <h3>Loan Accounts-<br></h3><br>
                                    <h4> <a href="opennewloan">New Loan Account</a> </h4>
                                    <h4><a href="viewloanaccount">View  Account</a> </h4>
                                     <h4><a href="depositeinstallment">Deposite Installment</a> </h4>
                                    <h4><a href="withdrawmoneyloan">Disburse Amount</a> </h4>	
				</div>
			</div>
                    <div class="row">
                       
                        <div class="col-lg-4 hero-text" id="defaultview">
                                    <h3>Debit Card-<br></h3><br>
                                    <h4> <a href="newdebitcardsaving">New Debit Card- Saving A/C</a> </h4>
                                    <h4><a href="newdebitcardcurrent">New Debit Card-Current A/C</a> </h4>
                                     <h4><a href="newaddonsaving"> Add-On Card-Saving A/C</a> </h4>
                                    <h4><a href="newaddoncurrent">Add-On Card-Current A/C</a> </h4>
                                    <h4><a href="hotlistdebitcard"> Hotlist Debit Card</a> </h4>   
				</div>
                        <div class="col-lg-4 hero-text" id="defaultview">
                                    <h3>Credit Card-<br></h3><br>
                                    <h4> <a href="newcreditcard">New Credit Card</a> </h4>
                                    <h4> <a href="changecreditcardlimit">Update Limit</a> </h4>
                                     <h4><a href="viewcreditcardstatement"> View Statement</a> </h4>
                                    <h4><a href="addnewtranscreditcard">Add New Transaction</a> </h4>
                                    <h4><a href="hotlistcreditcard"> Hotlist Credit Card</a> </h4>   
				</div>
                        <div class="col-lg-4 hero-text" id="defaultview">
                                    <h3>Others-<br></h3><br>
                                    <h4> <a href="updatekyc">Update KYC</a> </h4>
                                    <h4> <a href="chequebookrequest">Cheque Book Request</a> </h4>
                                     <h4><a href="updatemobilenumber">Update Mobile Number/Email</a> </h4>
                                    <h4><a href="generatestatement">Generate Statement</a> </h4>
                                    <h4><a href="resetinternetbankingpassword">Reset Internet Banking Password</a></h4> 
                                     <h4> <a href="restrictuser">Restrict User For Logging In</a> </h4>
                                    
				</div>
                        
                    </div>
                   
                        
                        
                        
                        
                        
                        
                    
                    
		</div>
	</section>
	<!-- Hero section end -->


	

	<!-- Newsletter section -->
	<section class="newsletter-section gradient-bg">
		<div class="container text-white">
			<div class="row">
				<div class="col-lg-7 newsletter-text">
					<h2>Subscribe to our Newsletter</h2>
					<p>Sign up for our weekly industry updates, insider perspectives and in-depth market analysis.</p>
				</div>
				<div class="col-lg-5 col-md-8 offset-lg-0 offset-md-2">
					<form class="newsletter-form">
						<input type="text" placeholder="Enter your email">
						<button>Get Started</button>
					</form>
				</div>
			</div>
		</div>
	</section>
	<!-- Newsletter section end -->



	


	<!-- Footer section -->
	<footer class="footer-section">
		<div class="container">
			<div class="row spad">
				<div class="col-md-6 col-lg-3 footer-widget">
					<img src="img/logo.png" class="mb-4" alt="">
					<p>Our aim is to provide you the best quality infrastructure so that your business can grow faster than you.</p>
					<span>
                                    Copyright &2019 All rights reserved 

				</div>
				<div class="col-md-6 col-lg-2 offset-lg-1 footer-widget">
					<h5 class="widget-title">Resources</h5>
					<ul>
							<li><a href="#">Demo</a></li>
						<li><a href="#">How to Start</a></li>
						
						<li><a href="#">Blog News</a></li>
					
						
					</ul>
				</div>
				<div class="col-md-6 col-lg-2 offset-lg-1 footer-widget">
					<h5 class="widget-title">Quick Links</h5>
					<ul>
						<li><a href="#">About</a></li>
						<li><a href="#">Features</a></li>
						<li><a href="contact.html">Contact Us</a></li>
						<li><a href="#">Exchange Markets</a></li>
				
					</ul>
				</div>
				<div class="col-md-6 col-lg-3 footer-widget pl-lg-5 pl-3">
					<h5 class="widget-title">Follow Us</h5>
					<div class="social">
						<a href="" class="facebook"><i class="fa fa-facebook"></i></a>
						<a href="" class="google"><i class="fa fa-google-plus"></i></a>
						<a href="" class="instagram"><i class="fa fa-instagram"></i></a>
						<a href="" class="twitter"><i class="fa fa-twitter"></i></a>
					</div>
				</div>
			</div>
			<div class="footer-bottom">
				<div class="row">
					<div class="col-lg-4 store-links text-center text-lg-left pb-3 pb-lg-0">
						<a href=""><img src="img/appstore.png" alt="" class="mr-2"></a>
						<a href=""><img src="img/playstore.png" alt=""></a>
					</div>
					<div class="col-lg-8 text-center text-lg-right">
						<ul class="footer-nav">
							<li><a href="">DPA</a></li>
							<li><a href="">Terms of Use</a></li>
							<li><a href="">Privacy Policy </a></li>
							<li><a href="">support@crypto.com</a></li>
							<li><a href="">(+91) 987654321</a></li>
						</ul>
					</div>
				</div>
			</div>
		</div>
	</footer>


	<!--====== Javascripts & Jquery ======-->
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/owl.carousel.js"></script>
	<script src="js/main.js"></script>
</body>
</html>

