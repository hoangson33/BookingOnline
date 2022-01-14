
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@ taglib prefix="mt" tagdir="/WEB-INF/tags" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    <!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<title>Edit Profile</title>
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<meta name="author" content="colorlib.com">
		<link rel="stylesheet" href="${pageContext.request.contextPath }/webapp/static/layout_update_profile_enterprise/fonts/material-design-iconic-font/css/material-design-iconic-font.css">

		<!-- STYLE CSS -->
		<link rel="stylesheet" href="${pageContext.request.contextPath }/webapp/static/layout_update_profile_enterprise/css/style.css">
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
	</head>
<body>


<c:forEach var="account" items="${accounts }" >
	
	  <div class="wrapper">
            <form action="">
            	<div id="wizard">
            		<!-- SECTION 1 -->
	                <h4></h4>
	                <section>
	                	<div class="form-header">
	                		<div class="avartar">
								<a href="#">
									<img id="school_img" class="rounded-circle" src="${pageContext.request.contextPath }/webapp/assets/uploads/${account.avatar}" >
								</a>
							</div>
							<div class="form-group">
								<div class="form-holder active">
									<input readonly="readonly" path="username" type="text" value="${account.username }" class="form-control"/>
								</div>
								<div class="form-holder">
									<input readonly="readonly" path="name" type="text" value="${account.name }" class="form-control"/>
								</div>
								<div class="form-holder">
									<input readonly="readonly" path="phone" type="text" value="${account.phone }" class="form-control"/>
								</div>
							</div>
	                	</div>
	                	<div class="form-holder">
							<input readonly="readonly" path="email" type="text" value="${account.email }" class="form-control"/>
						</div>
						<div class="form-holder">
							<input readonly="readonly" path="locationDetail" type="text" value="${account.locationDetail }" class="form-control"/>
						</div>
						
                        	<a href="${pageContext.request.contextPath }/enterprise/editAcc/${account.idAcc}" class="btn btn-info">Edit profile</a>
                         
	                </section>
	                
					
					<!-- SECTION 2 -->
	                <h4></h4>
	                <section>
                		<div class="grid">
                			<div class="row">
                				<a href="${pageContext.request.contextPath }/enterprise/addRoom" class="grid-item" style="background-image: url(${pageContext.request.contextPath }/webapp/static/layout_update_profile_enterprise/images/programming-bg.jpg);">
	                				<div class="inner">
	                					<img src="${pageContext.request.contextPath }/webapp/static/layout_update_profile_enterprise/images/business.png"" alt="">
	                					<span>ADD ROOM</span>
	                				</div>
	                			</a>
	                			<a href="#" class="grid-item" style="background-image: url('${pageContext.request.contextPath }/webapp/static/layout_update_profile_enterprise/images/research-bg.jpg');">
	                				<div class="inner">
	                					<img src="${pageContext.request.contextPath }/webapp/static/layout_update_profile_enterprise/images/research.png" alt="">
	                					<span>Research</span>
	                				</div>
	                				
	                			</a>
	                			<a href="#" class="grid-item" style="background-image: url('${pageContext.request.contextPath }/webapp/static/layout_update_profile_enterprise/images/teacher-bg.jpg');">
	                				<div class="inner">
	                					<img src="${pageContext.request.contextPath }/webapp/static/layout_update_profile_enterprise/images/teacher.png" alt="">
	                					<span>Teacher</span>
	                				</div>
	                				
	                			</a>
                			</div>
                			<div class="row">
                				<a href="#" class="grid-item" style="background-image: url('${pageContext.request.contextPath }/webapp/static/layout_update_profile_enterprise/images/tour-guide-bg.jpg');">
	                				<div class="inner">
	                					<img src="${pageContext.request.contextPath }/webapp/static/layout_update_profile_enterprise/images/tour-guide.png" alt="">
	                					<span>Tour Guide</span>
	                				</div>
	                			</a>
	                			<a href="#" class="grid-item" style="background-image: url('${pageContext.request.contextPath }/webapp/static/layout_update_profile_enterprise/images/business-bg.jpg');">
	                				<div class="inner">
	                					<img src="${pageContext.request.contextPath }/webapp/static/layout_update_profile_enterprise/images/business.png" alt="">
	                					<span>Business</span>
	                				</div>
	                			</a>
	                			<a href="#" class="grid-item" style="background-image: url('${pageContext.request.contextPath }/webapp/static/layout_update_profile_enterprise/images/artist-bg.jpg');">
	                				<div class="inner">
	                					<img src="${pageContext.request.contextPath }/webapp/static/layout_update_profile_enterprise/images/artist.png" alt="">
	                					<span>Artist</span>
	                				</div>
	                			</a>
                			</div>
                		</div>
	                </section>

	                
            	</div>
            </form>
		</div>





</c:forEach>	


		<script src="${pageContext.request.contextPath }/webapp/static/layout_update_profile_enterprise/js/jquery-3.3.1.min.js"></script>

		<!-- JQUERY STEP -->
		<script src="${pageContext.request.contextPath }/webapp/static/layout_update_profile_enterprise/js/jquery.steps.js"></script>

		<script src="${pageContext.request.contextPath }/webapp/static/layout_update_profile_enterprise/js/main.js"></script>

</body>
</html>