<%@ tag language="java" pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@ attribute name="title" required="true" rtexprvalue="true"
type="java.lang.String"%>
<%@ attribute name="content" fragment="true"%>
<%@ taglib prefix="mt" uri="http://mytags.vn" %>




<!DOCTYPE html>
<html lang="en-US" class="no-js">
<head>
<meta charset="utf-8">
<meta name="description" content="">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="keywords"
	content="booking, hotel, apartment, bed, chalet, holiday, hostel, hotel, motel, reservation, resort, rooms, adventure, coupon, tour, travel">
<meta name="author" content="themebeck">
<!--[if IE]><meta http-equiv='X-UA-Compatible' content='IE=edge,chrome=1'><![endif]-->
<title>Home | Hotel Booking</title>
<!--favicon icon-->
<link rel="icon" href="${pageContext.request.contextPath }/resources/user/images/favicon.png">
<!-- font awesome css -->
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/user/css/theme.fonts.css">
<!--bootstrap min css-->
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/user/css/bootstrap.min.css">
<!--jquery ui css-->
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/user/css/jquery-ui.min.css">
<!--plugin style css-->
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/user/css/plugin.style.css">
<!-- global style css -->
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/user/css/global.css">
<!-- style css -->
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/user/style.css">
<!--color css-->
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/user/css/color-1.css">
<!--responsive css-->
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/user/css/responsive.css">
</head>
<body>
	<div id="loading">
		<div id="preloader">
			<span></span><span></span>
		</div>
	</div>
	<!-- =======================================         ==Start Header section==      =======================================-->
	
	<header class="hotel-header transparent">
		<div class="container-fluid">
			<div class="row">
				<div class="col-12">
					<div id="menuzord" class="menuzord p-0">
						<a href="index.html" class="menuzord-brand custom-logo-link"><img
							src="${pageContext.request.contextPath }/resources/user/images/logo.png" class="custom-logo" alt="logo"></a>
						<ul class="menuzord-menu">
							<li class="active"><a href="${pageContext.request.contextPath }/home/index">Home</a>
							<ul class="dropdown">
									<li><a href="${pageContext.request.contextPath }/home2/index"">Home-2</a></li>
								</ul></li>
							<li><a href="#">Room</a>
							<ul class="dropdown">
									<li><a href="${pageContext.request.contextPath }/roomlist">Room List</a></li>
									<li><a href="${pageContext.request.contextPath }/roomdetails">Room Details</a></li>
								</ul></li>
							<li><a href="${pageContext.request.contextPath }/aboutus">About Us</a></li>
							<li><a href="${pageContext.request.contextPath }/spa">Spa</a></li>
							<li><a href="${pageContext.request.contextPath }/contact">Contact</a></li>
							<li><a href="${pageContext.request.contextPath }/login/index">Sign in/Sign up</a></li>
							
						</ul>
					</div>
					<!--/menuzord-->
				</div>
				<!--/col-->
			</div>
			<!--/row-->
		</div>
	</header>

			
			


		<jsp:invoke fragment="content"></jsp:invoke>

	
	
	

	
	<div class="hotel-footer dark">
		<div class="bigsocial-link">
			<ul class="clearfix">
				<li><a href="#" title="Facebook" target="_blank"><i
						class="fa fa-facebook"></i></a></li>
				<li><a href="#" title="Twitter" target="_blank"><i
						class="fa fa-twitter"></i></a></li>
				<li><a href="#" title="Google plus" target="_blank"><i
						class="fa fa-google-plus"></i></a></li>
				<li><a href="#" title="Vemio" target="_blank"><i
						class="fa fa-vimeo"></i></a></li>
				<li><a href="#" title="Behance" target="_blank"><i
						class="fa fa-behance"></i></a></li>
				<li><a href="#" title="Dribbble" target="_blank"><i
						class="fa fa-dribbble"></i></a></li>
			</ul>
		</div>
		<footer class="footer-widget">
			<div class="container">
				<div class="row">
					<div class="col-xl-6 offset-xl-3 col-lg-8 offset-lg-2">
						<img src="${pageContext.request.contextPath }/resources/user/images/logo.png" class="footer-logo" alt="footer-logo">
						<div class="contact-address clearfix pt-30">
							<p class="address">
								<i class="flaticon-placeholder"></i><span class="text-uppercase">ADDRESS:</span>28
								Green Tower, Street Name New York City, USA
							</p>
							<p class="phone">
								<i class="flaticon-phone-call"></i><span class="text-uppercase">Phone:</span>+84
								846 250 592
							</p>
							<p class="email">
								<i class="flaticon-mail"></i><span class="text-uppercase">Email:</span>contact@Laxurytrip.com
							</p>
							<p class="web">
								<i class="flaticon-internet"></i><span class="text-uppercase">WEbsite:</span><a
									href="#">demoLaxurytrip.com</a>
							</p>
						</div>
					</div>
				</div>
			</div>
		</footer>
		<section class="main-footer">
			<div class="container">
				<div class="row">
					<div class="col-lg-4 order-2 order-lg-1">
						<p class="copyright">
							Copyright <span class="update-year"></span>Laxury Trip. by <a
								href="http://bootstrapmb.com" target="_blank">ThemeBeck</a>
						</p>
					</div>
					<div class="col-lg-8 order-1 order-lg-2">
						<ul class="footer-menu display-inline text-right">
							<li><a href="#">Support</a></li>
							<li><a href="#">Privacy Policy</a></li>
							<li><a href="#">Contact Us</a></li>
							<li><a href="#">Help Center</a></li>
						</ul>
					</div>
				</div>
			</div>
		</section>
	</div>
	<!-- =======================================         ==End footer section==      =======================================-->
	<!-- =======================================         ==Start scroll top==      =======================================-->
	<div class="scroll-top not-visible">
		<i class="fa fa-angle-up"></i>
	</div>
	<!-- =======================================        ==End scroll top==      =======================================-->
	<!-- jQuary library -->
	<script src="${pageContext.request.contextPath }/resources/user/js/jquery-3.2.1.min.js"></script>
	<!--bootstrap js-->
	<script src="${pageContext.request.contextPath }/resources/user/js/popper.min.js"></script>
	<script src="${pageContext.request.contextPath }/resources/user/js/bootstrap.min.js"></script>
	<!--owl carousel js-->
	<script src="${pageContext.request.contextPath }/resources/user/js/owl.carousel.min.js"></script>
	<!--slick js-->
	<script src="${pageContext.request.contextPath }/resources/user/js/slick.js"></script>
	<!--jquery ui js-->
	<script src="${pageContext.request.contextPath }/resources/user/js/jquery-ui.min.js"></script>
	<!--all plugin js-->
	<script src="${pageContext.request.contextPath }/resources/user/js/plugin.js"></script>
	<!-- all jQuary activation code here and always it will be bottom of all script tag -->
	<script src="${pageContext.request.contextPath }/resources/user/js/main.js"></script>
</body>
</html>