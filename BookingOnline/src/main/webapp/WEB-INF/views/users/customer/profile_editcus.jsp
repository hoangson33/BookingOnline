
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@ taglib prefix="mt" tagdir="/WEB-INF/tags" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    <%@ taglib prefix="s" uri="http://www.springframework.org/tags/form"%>
    
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
	 	 <link href="${pageContext.request.contextPath }/webapp/validation/style.css" rel="stylesheet">
	<script>
function validateForm() {
  let name = document.forms["myForm"]["name"].value;
  let username = document.forms["myForm"]["username"].value;
  let phone = document.forms["myForm"]["phone"].value;
  let email = document.forms["myForm"]["email"].value;
  let location = document.forms["myForm"]["location"].value;
  if (username == "") {
    alert(" Username must be filled out");
    return false;
  }else
  if (name == "") {
	    alert("Full Name must be filled out");
	    return false;
	  }
  else
	  if (phone == "") {
		    alert("Phone must be filled out");
		    return false;
		  }	 
	  else
		  if (email == "") {
			    alert("Email must be filled out");
			    return false;
			  }
		  else
			  if (location == "") {
				    alert("Location must be filled out");
				    return false;
				  }
  
}
</script>
	</head>
<body>



<s:form name="myForm" onsubmit="return validateForm()"  method="post" modelAttribute="account" enctype="multipart/form-data"
			action="${pageContext.request.contextPath }/customer/editCus">       

<div class="wrapper">
            <form action="">
            	<div id="wizard">
            		<!-- SECTION 1 -->
	                <h4></h4>
	                <section>
	                	<div class="form-header">
	                		<div class="avartar">
								<a href="#">
									<img id="school_img" class="rounded-circle" src="${pageContext.request.contextPath }/webapp/assets/uploads/${avatar}" >
								</a>
								<div class="avartar-picker">
									<input type="file" name="file" id="file-1" class="inputfile"  onchange="show(this)" />
									<label for="file-1">
										<i class="zmdi zmdi-camera"></i>
										<span>Choose Picture</span>
									</label>
								</div>
							</div>
							<div class="form-group">
								<div class="form-holder active">
									<s:input name="username" path="username" type="text" placeholder="Username" class="form-control" />
							<s:errors path="username" cssClass="format"></s:errors>
								</div>
								<div class="form-holder">
									<s:input path="name" name="name"  type="text" placeholder="Fullname's enterprise" class="form-control" />
										<s:errors path="name" cssClass="format"></s:errors>
								</div>
								<div class="form-holder">
									<s:input path="phone" name="phone" type="number" placeholder="Phone" class="form-control"  />
								</div>
							</div>
	                	</div>
	                	<div class="form-holder">
							<s:input path="email" type="text" name="email" placeholder="Email" class="form-control"/>
								<s:errors path="email" cssClass="format"></s:errors>
						</div>
						<div class="form-holder">
							<s:input path="location" name="location" type="text" placeholder="Address" class="form-control"/>
							<s:errors path="location" cssClass="format"></s:errors>
						</div>
						<div class=" btn btn-ctl-bt waves-effect waves-light m-r-10" >
                        	<span>&nbsp;</span>
                            <input type="submit" value="Submit" class="btn btn-primary " id="submit" name="submit" />
                            <a class="btn btn-primary " href="${pageContext.request.contextPath }/customer">Cancel</a>
                            <s:hidden path="idAcc"/>
                            <s:hidden path="idRole"/>
						</div>
	                </section>
	                
					
					<!-- SECTION 2 -->
	                <h4></h4>
	                <section>
                		<div class="grid">
                			<div class="row">
                				<a href="#" class="grid-item" style="background-image: url(${pageContext.request.contextPath }/webapp/static/layout_update_profile_enterprise/images/programming-bg.jpg);">
	                				<div class="inner">
	                					<img src="${pageContext.request.contextPath }/webapp/static/layout_update_profile_enterprise/images/programming.png" alt="">
	                					<span>Programming</span>
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


















	
</s:form>






























		<script src="${pageContext.request.contextPath }/webapp/static/layout_update_profile_enterprise/js/jquery-3.3.1.min.js"></script>

		<!-- JQUERY STEP -->
		<script src="${pageContext.request.contextPath }/webapp/static/layout_update_profile_enterprise/js/jquery.steps.js"></script>

		<script src="${pageContext.request.contextPath }/webapp/static/layout_update_profile_enterprise/js/main.js"></script>


<script type="text/javascript">

    function show(input) {
        if (input.files && input.files[0]) {
            var filerdr = new FileReader();
            filerdr.onload = function (e) {
                $('#school_img').attr('src', e.target.result);
            }
            filerdr.readAsDataURL(input.files[0]);
        }
    }
</script>
</body>
</html>


