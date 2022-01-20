
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
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
		<!-- STYLE CSS -->
			 <link href="${pageContext.request.contextPath }/webapp/validation/style.css" rel="stylesheet">
		<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-alpha1/dist/css/bootstrap.min.css">
<style type="text/css">
body {
    background-image: url("${pageContext.request.contextPath }/webapp/static/user/images/background-profile.jpg");
   height: 100%;
   background-position: center;
   background-repeat: no-repeat;
   background-size: cover;
}

.form-control:focus {
    box-shadow: none;
    border-color: #BA68C8
}

.profile-button {
    background: #87CEFA;
    box-shadow: none;
    border: none
}

.profile-button:hover {
    background: green;
}

.profile-button:focus {
    background: green;
    box-shadow: none
}

.profile-button:active {
    background: green;
    box-shadow: none
}

.back:hover {
    color: #682773;
    cursor: pointer
}

.labels {
    font-size: 11px
}

.add-experience:hover {
    background: #BA68C8;
    color: #fff;
    cursor: pointer;
    border: solid 1px #BA68C8
}



.avartar-picker {
  padding-left: 15px;
  margin-top: 20px; }
  .avartar-picker .inputfile {
    display: none; }
  .avartar-picker label {
    display: block;
    cursor: pointer;
    display: inline-block;
    color: #87CEFA;
    font-size: 12px;
    text-transform: uppercase;
    font-weight: 800; }
    .avartar-picker label:hover {
      color: #666; }
    .avartar-picker label i {
      margin-right: 3px; }
      
      ul{
	list-style-type: none !important;
}
	</style>
	</head>
		<script>
function validateForm() {
  let phone = document.forms["myForm"]["phone"].value;
	  if (phone == "") {
		    alert("Phone must be filled out");
		    return false;
		  }

  
}
</script>
<body>

<s:form name="myForm" onsubmit="return validateForm()" method="post" modelAttribute="account" enctype="multipart/form-data"
			action="${pageContext.request.contextPath }/customer/editCus"> 
<div class="container rounded bg-white mt-5 mb-5">
    <div class="row">
    		<ul>
        	<li><a style="text-decoration: none" href="${pageContext.request.contextPath }/home/welcomeCustomer"><i class="fa fa-home fa-2x" style="color: #87CEFA;"></i>Home</a> </li>
        	</ul>
        <div class="col-md-3 border-right">
            <div class="d-flex flex-column align-items-center text-center p-3 py-5"><img id="school_img" class="rounded-circle mt-5" width="150px" src="${pageContext.request.contextPath }/webapp/assets/uploads/${account.avatar}">
            <div class="avartar-picker">
									<input type="file" name="file" id="file-1" class="inputfile"  onchange="show(this)" />
									<label for="file-1">
										<i class="zmdi zmdi-camera"></i>
										<span>Choose Picture</span>
									</label>
								</div>
            </div>
        </div>
        <div class="col-md-5 border-right">
            <div class="p-3 py-5">
                <div class="d-flex justify-content-between align-items-center mb-3">
                    <h4 style="color: #87CEFA;" class="text-right">Profile Customer</h4>
                </div>
                <div class="row mt-2">
                    <div class="col-md-6"><label class="labels">Name</label><s:input path="name" type="text" class="form-control" placeholder="first name" value="${account.name }"/>
                    <s:errors path="name" cssClass="format"></s:errors>
                    </div>
                    <div class="col-md-6"><label class="labels">Username</label><s:input path="username" type="text" class="form-control" value="${account.username }" readonly="true"/></div>
                </div>
                <div class="row mt-3">
                    <div class="col-md-12"><label class="labels">Phone Number</label><s:input   pattern="(\+84|0)\d{9,10}" path="phone" type="text" class="form-control" placeholder="enter phone number" value="${account.phone }"/>
                    <p style="color: red;">${error}</p>
              
                    </div>
                    <div class="col-md-12"><label class="labels">Email</label><s:input path="email" type="email" class="form-control" placeholder="enter email" value="${account.email }"/>
                    <s:errors path="email" cssClass="format"></s:errors>
                       	   <p style="color: red;">${erroremail}</p>
                              <p style="color: red;">${errorsemail}</p>
                    </div>
                    <div class="col-md-12"><label class="labels">Location</label><s:input path="location" type="text" class="form-control" placeholder="enter location" value="${account.location }"/>
                    <s:errors path="location" cssClass="format"></s:errors>
                    </div>
                    <div class="col-md-12"><label class="labels">Location Detail</label><s:input path="locationDetail" type="text" class="form-control" placeholder="enter location detail" value="${account.locationDetail }"/>
                    <s:errors path="locationDetail" cssClass="format"></s:errors>
                    </div>
                    <s:input path="password" type="hidden" class="form-control" placeholder="enter location detail" value="${account.password }"/>
                </div>
                <div class="row mt-3">
                    <div class="col-md-6"><label class="labels">Status</label><input type="button" class="form-control btn btn-info" value="Active"></div>
                    <div class="col-md-6"><label class="labels">State/Region</label><input type="text" class="form-control" value="" placeholder="state"></div>
                </div>
                <div class="mt-5 text-center">
                
                <span>&nbsp;</span>
                <input class="btn btn-primary profile-button" type="submit" value="Save Profile">
                <s:hidden path="idAcc"/>
                <s:hidden path="idRole"/>
                <a href="${pageContext.request.contextPath }/customer/" class="btn btn-primary profile-button" type="button" >Cancel</a>
                </div>
            </div>
        </div>
        <div class="col-md-4">
            <div class="p-3 py-5">
                <div class="d-flex justify-content-between align-items-center experience"><span>Edit Experience</span><span class="border px-3 p-1 add-experience"><i class="fa fa-plus"></i>&nbsp;Experience</span></div><br>
                <div class="col-md-12"><label class="labels">Experience in Designing</label><input type="text" class="form-control" placeholder="experience" value=""></div> <br>
                <div class="col-md-12"><label class="labels">Additional Details</label><input type="text" class="form-control" placeholder="additional details" value=""></div>
            </div>
        </div>
    </div>
</div>
</div>
</div>



		<!-- JQUERY STEP -->
		<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>

		<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
</s:form>

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