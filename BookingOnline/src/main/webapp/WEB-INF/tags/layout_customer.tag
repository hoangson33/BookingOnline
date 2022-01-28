<%@ tag language="java" pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@ taglib prefix="s" uri="http://www.springframework.org/security/tags" %>
<%@ attribute name="title" required="true" rtexprvalue="true"
type="java.lang.String"%>
<%@ attribute name="content" fragment="true"%>
<%@ taglib prefix="mt" uri="http://mytags.vn" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


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
<link rel="icon" href="${pageContext.request.contextPath }/webapp/static/user/images/favicon.png">
<!-- font awesome css -->
<link rel="stylesheet" href="${pageContext.request.contextPath }/webapp/static/user/css/theme.fonts.css">
<!--bootstrap min css-->
<link rel="stylesheet" href="${pageContext.request.contextPath }/webapp/static/user/css/bootstrap.min.css">
<!--jquery ui css-->
<link rel="stylesheet" href="${pageContext.request.contextPath }/webapp/static/user/css/jquery-ui.min.css">
<!--plugin style css-->
<link rel="stylesheet" href="${pageContext.request.contextPath }/webapp/static/user/css/plugin.style.css">
<!-- global style css -->
<link rel="stylesheet" href="${pageContext.request.contextPath }/webapp/static/user/css/global.css">
<!-- style css -->
<link rel="stylesheet" href="${pageContext.request.contextPath }/webapp/static/user/style.css">
<!--color css-->
<link rel="stylesheet" href="${pageContext.request.contextPath }/webapp/static/user/css/color-1.css">
<!--responsive css-->
<link rel="stylesheet" href="${pageContext.request.contextPath }/webapp/static/user/css/responsive.css">

<link rel="stylesheet" href="${pageContext.request.contextPath }/webapp/enterprise/css.css">







<style>
.avatar {
  font-size: 1rem;
  display: inline-flex;
  width: 48px;
  height: 48px;
  color: #fff;
  border-radius: 50%;
  background-color: #adb5bd;
  align-items: center;
  justify-content: center;
}

.avatar img {
  width: 100%;
  border-radius: 50%;
}

.avatar-sm {
  font-size: .875rem;
  width: 36px;
  height: 36px;
}
</style>
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
							src="${pageContext.request.contextPath }/webapp/static/user/images/logo.png" class="custom-logo" alt="logo"></a>
						<ul  class="menuzord-menu">
						<c:if test="${pageContext.request.userPrincipal.name == null }">
							<li  class="active"><a href="${pageContext.request.contextPath }/home/index">Home</a>
							<ul class="dropdown">
									<li><a  href="${pageContext.request.contextPath }/home2/index"">Home-2</a></li>
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
							</c:if>
							
							
							<c:if test="${pageContext.request.userPrincipal.name != null }">
									<li  class="active"><a href="${pageContext.request.contextPath }/home/welcomeCustomer">Home</a>
							<ul class="dropdown">
									<li><a  href="${pageContext.request.contextPath }/home2/welcome">Home-2</a></li>
								</ul></li>
							<li><a href="#">Room</a>
							<ul class="dropdown">
									<li><a href="${pageContext.request.contextPath }/roomlist/welcome">Room List</a></li>
									<li><a href="${pageContext.request.contextPath }/roomdetails/welcome">Room Details</a></li>
								</ul></li>
							<li><a href="${pageContext.request.contextPath }/aboutus/welcome">About Us</a></li>
								<li><a href="${pageContext.request.contextPath }/spa/welcome">Spa</a></li>
							<li><a href="${pageContext.request.contextPath }/contact/welcomeCustomer">Contact</a></li>	
							</c:if>
							

					
						<s:authorize access="hasRole('ROLE_CUSTOMER')">
							<li><span class="avatar avatar-sm rounded-circle">
							<c:forEach var="account" items="${accounts }" >
				                  <img alt="Image placeholder" src="${pageContext.request.contextPath }/webapp/assets/uploads/${account.avatar}">
				                </c:forEach></span>	
				                
				                
				                
				                
				                	<li><a href="#">${pageContext.request.userPrincipal.name }</a>
							<ul class="dropdown">
									<li><a href="${pageContext.request.contextPath }/customer">Profile's customer</a></li>
							<li><a href="${pageContext.request.contextPath }/login/logout">Logout</a></li>
								</ul></li>
							</s:authorize>
						
						
						
							<s:authorize access="hasRole('ROLE_ENTERPRISE')">
							
							
							
							<li><span class="avatar avatar-sm rounded-circle">
							
				                 	<c:forEach var="account" items="${accounts }" >
				                  <img alt="Image placeholder" src="${pageContext.request.contextPath }/webapp/assets/uploads/${account.avatar}">
				                </c:forEach>				                
				                </span><a href="#"> ${pageContext.request.userPrincipal.name }</a>
							<ul class="dropdown">
							<li><a href="${pageContext.request.contextPath }/enterprise/addRoom?name=${pageContext.request.userPrincipal.name }">Add room</a></li>
							<li><a href="${pageContext.request.contextPath }/enterprise/profile">Profile's enterprise</a></li>
							<li><a href="${pageContext.request.contextPath }/enterprise/room-list">Room list</a></li>
							<li><a href="${pageContext.request.contextPath }/login/logout">Logout</a></li>
							</ul>
							</s:authorize>
							
							
							<s:authorize access="hasRole('ROLE_SUPERADMIN')">
							<li><span class="avatar avatar-sm rounded-circle">
							
				                 	<c:forEach var="account" items="${accounts }" >
				                  <img alt="Image placeholder" src="${pageContext.request.contextPath }/webapp/assets/uploads/${account.avatar}">
				                </c:forEach>				                
				                </span>
				                
							
							<li><a href="#">${pageContext.request.userPrincipal.name }</a>
							<ul class="dropdown">
							<li><a href="${pageContext.request.contextPath }/admin/index">Dashboard</a></li>
							
							<li><a href="${pageContext.request.contextPath }/login/logout">Logout</a></li>
								</ul></li>
							</s:authorize>
							
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
		
		<footer class="footer-widget">
			<div class="container">
				<div class="row">
					<div class="col-xl-6 offset-xl-3 col-lg-8 offset-lg-2">
						<img src="${pageContext.request.contextPath }/webapp/static/user/images/logo.png" class="footer-logo" alt="footer-logo">
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
	<script src="${pageContext.request.contextPath }/webapp/static/user/js/jquery-3.2.1.min.js"></script>
	<!--bootstrap js-->
	<script src="${pageContext.request.contextPath }/webapp/static/user/js/popper.min.js"></script>
	<script src="${pageContext.request.contextPath }/webapp/static/user/js/bootstrap.min.js"></script>
	<!--owl carousel js-->
	<script src="${pageContext.request.contextPath }/webapp/static/user/js/owl.carousel.min.js"></script>
	<!--slick js-->
	<script src="${pageContext.request.contextPath }/webapp/static/user/js/slick.js"></script>
	<!--jquery ui js-->
	<script src="${pageContext.request.contextPath }/webapp/static/user/js/jquery-ui.min.js"></script>
	<!--all plugin js-->
	<script src="${pageContext.request.contextPath }/webapp/static/user/js/plugin.js"></script>
	<!-- all jQuary activation code here and always it will be bottom of all script tag -->
	<script src="${pageContext.request.contextPath }/webapp/static/user/js/main.js"></script>
</body>
</html>