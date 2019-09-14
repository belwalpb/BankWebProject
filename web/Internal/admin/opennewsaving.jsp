<%-- 
    Document   : index
    Created on : 5 Sep, 2019, 4:16:55 PM
    Author     : Priyanshu
--%>

<%@include file="sessionvalidate.jsp" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!--Saving Account Opening -->

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
       <%@include file="header.html" %>
	<!-- Header section end -->


	<!-- Hero section -->
	<section class="hero-section">
		<div class="container">
                      <h3 style="margin-bottom: 4%">Personal Details:</h3>
			<div class="row">
                            <div class="col-md-2">
                            <div class="form-group">
                                <label for="fname"><h4>Title:</h4></label>      
                                <select class="form-control-lg">
                                    <option value="MR.">MR.</option>
                                    <option value="MRS.">MRS.</option>
                                </select>   
                            </div> </div>
                           <div class="col-md-5">
                            <div class="form-group">
                                  
                     <input type="text" placeholder="First Name" name="fname" class="form-control-lg">    
                            </div> </div>
                             <div class="col-md-5">
                            <div class="form-group">
                                     
                     <input type="text" placeholder="First Name" name="fname" class="form-control-lg"> 
                          </div></div>
                        </div></br>
                      
                     
                       <div class="row">
                          <div class="col-md-2"></div>
                          <div class="col-md-5">
                            <div class="form-group">           
                     <input type="text" placeholder="Father Name" name="fname" class="form-control-lg">    
                            </div> 
                          </div>
                           <div class="col-md-5">
                            <div class="form-group">           
                     <input type="text" placeholder="Mother Name" name="fname" class="form-control-lg">    
                            </div> 
                          </div>    
                       </div></br>
                      
                      <div class="row">
                          <div class="col-md-2"></div>
                          <div class="col-md-5">
                            <div class="form-group">  
                                <input type="text" name="dob" placeholder="DOB(DD-MM-YYYY)" class="form-control-lg">    
                            </div> 
                          </div>
                           <div class="col-md-5">
                            <div class="form-group">           
                    <label for="Gender">Gender:</label>
                  <select class="form-control" id="Gender">
                  <option value="male">Male</option>
                 <option value="female">Female</option>
                  <option value="other">Other</option>
                 
                   </select>    
                            </div> 
                          </div>    
                      </div></br>   
                    </div>
                   
            <div class="container">
                    <h3 style="margin-bottom: 4%">Document Details:</h3>  
               <div class="row">
                   <div class="col-lg-4 form-group">
                       <label for="aadharcard"><h5>Aadhar:</h5></label>
                       <input type="text" class="form-control" name="aadharcard">
                   </div> 
                    <div class="col-lg-4"> </div>
                   <div class="col-lg-4">
                       <label for="aadharimage"><h5>Upload Aadhar:</h5></label>
                       <input type="file" class="form-control" >
                   </div>    
                </div>
                    <div class="row">
                    <div class="col-lg-4 form-group">
                       <label for="pancard"><h5>Pan Card:</h5></label>
                       <input type="text" class="form-control" name="pancard">
                   </div> 
                    <div class="col-lg-4"> </div>
                   <div class="col-lg-4">
                       <label for="panimage"><h5>Upload Pan:</h5></label>
                       <input type="file" class="form-control" name="panimage" >
                   </div> 
                   </div>
               </div>           
                        
                        
                        
                        
                        
                    
                    
		
	</section>
	<!-- Hero section end -->


	

	<!-- Newsletter section -->
	 <%@include file="newsletter.html" %>
	<!-- Newsletter section end -->



	


	<!-- Footer section -->
        <%@include file="footer.html" %>
        <!-- Footer section end -->

	<!--====== Javascripts & Jquery ======-->
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/owl.carousel.js"></script>
	<script src="js/main.js"></script>
</body>
</html>

