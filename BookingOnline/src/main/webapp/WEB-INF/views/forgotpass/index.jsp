<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
  <%@ taglib prefix="s" uri="http://www.springframework.org/tags/form" %>
<!doctype html>
<html lang="en">
  <head>
  	<title>Login</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

	<link href="https://fonts.googleapis.com/css?family=Lato:300,400,700&display=swap" rel="stylesheet">

	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
	
	<link rel="stylesheet" href="${pageContext.request.contextPath }/webapp/static/layout_login/css/style.css">
 	 <link href="${pageContext.request.contextPath }/webapp/validation/style.css" rel="stylesheet">
	</head>
	<body class="img js-fullheight" style="background-image: url(${pageContext.request.contextPath }/webapp/static/layout_login/images/bg.jpg);">
	<section class="ftco-section">
		<div class="container">
			<div class="row justify-content-center">
				<div class="col-md-6 text-center mb-5">
					<h2 class="heading-section"> ForgotPassword#</h2>
				</div>
			</div>
			<div class="row justify-content-center">
				<div class="col-md-6 col-lg-4">
					<div class="login-wrap p-0">
		      	<a class="mb-4 text-center" href="#"><h3>Forgot Password </h3></a>
		      	<form method="post" action="${pageContext.request.contextPath }/forgotpass/sendotp" class="signin-form">
		      		<div class="form-group">
		      			<input type="email" class="form-control" name="email" placeholder="Username" required>
		      		</div>
	           	${successfully}
	            <div class="form-group">
	            	<input type="submit" class="form-control btn btn-primary submit px-3" value="Sign In">
	            </div>
	            <div class="form-group d-md-flex">
	            	<div class="w-50">
		            	<label class="checkbox-wrap checkbox-primary">
									 
									</label>
								</div>
								<div class="w-50 text-md-right">
								<a href="${pageContext.request.contextPath }/login/index"  style="color: #fff">Back to login page !</a>
								</div>
	            </div>
	          </form>
	         
		      </div>
				</div>
			</div>
		</div>
	</section>

	<script src="${pageContext.request.contextPath }/webapp/static/layout_login/js/jquery.min.js"></script>
  <script src="${pageContext.request.contextPath }/webapp/static/layout_login/js/popper.js"></script>
  <script src="${pageContext.request.contextPath }/webapp/static/layout_login/js/bootstrap.min.js"></script>
  <script src="${pageContext.request.contextPath }/webapp/static/layout_login/js/main.js"></script>

	</body>
</html>

