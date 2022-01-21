
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
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
		<!-- STYLE CSS -->
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

ul{
	list-style-type: none !important;
}
	</style>
	</head>
	
<body>

<c:forEach var="account" items="${accounts }" >
<div class="container rounded bg-white mt-5 mb-5">
    <div class="row">
        	<ul>
        	<li><a style="text-decoration: none" href="${pageContext.request.contextPath }/home/welcomeCustomer"><i class="fa fa-home fa-2x" style="color: #87CEFA;"></i>Home</a> </li>
        	</ul>
        <div class="col-md-3 border-right">
        	
            <div class="d-flex flex-column align-items-center text-center p-3 py-5"><img class="rounded-circle mt-5" width="150px" src="${pageContext.request.contextPath }/webapp/assets/uploads/${account.avatar}"><span class="font-weight-bold">${account.username }</span><span class="text-black-50">${account.email }</span><span> </span></div>
        </div>
        <div class="col-md-5 border-right">
            <div class="p-3 py-5">
                <div class="d-flex justify-content-between align-items-center mb-3">
                    <h4 style="color: #87CEFA;" class="text-right">Profile Settings</h4>
                </div>
                <div class="row mt-2">
                    <div class="col-md-6"><label class="labels">Name</label><input readonly="readonly" type="text" class="form-control" placeholder="first name" value="${account.name }"></div>
                    <div class="col-md-6"><label class="labels">Username</label><input readonly="readonly" type="text" class="form-control" value="${account.username }" placeholder="surname"></div>
                </div>
                <div class="row mt-3">
                    <div class="col-md-12"><label class="labels">Phone Number</label><input readonly="readonly" type="number" class="form-control" placeholder="enter phone number" value="${account.phone }"></div>
                    <div class="col-md-12"><label class="labels">Email</label><input readonly="readonly" type="email" class="form-control" placeholder="enter email" value="${account.email }"></div>
                    <div class="col-md-12"><label class="labels">Location</label><input readonly="readonly" type="text" class="form-control" placeholder="enter location" value="${account.location }"></div>
                    <div class="col-md-12"><label class="labels">Location Detail</label><input readonly="readonly" type="text" class="form-control" placeholder="enter location detail" value="${account.locationDetail }"></div>
                    
                </div>
                <div class="row mt-3">
                    <div class="col-md-6"><label class="labels">Status</label><input type="button" class="form-control btn btn-info" value="Active"></div>
                    <div class="col-md-6"><label class="labels">State/Region</label><input type="text" class="form-control" value="" placeholder="state"></div>
                </div>
                <div class="mt-5 text-center"><a href="${pageContext.request.contextPath }/enterprise/editAcc/${account.idAcc}" class="btn btn-primary profile-button" type="button">Edit Profile</a></div>
            </div>
        </div>
        <div class="col-md-4">
            <div class="p-3 py-5">
                <div class="d-flex justify-content-between align-items-center experience"><a style="text-decoration: none" href="${pageContext.request.contextPath }/enterprise/changepass"><span class="border px-3 p-1 add-experience"><i class="fa fa-key"></i>&nbsp;ChangePass</span></a></div><br>
                <!--<c:if test="${invoiceCount > 0 }">
                <div class="d-flex justify-content-between align-items-center experience"><a style="text-decoration: none; color: red;" href="${pageContext.request.contextPath }/enterprise/invoice/${account.idAcc}"><span class="border px-3 p-1 add-experience"><i class="fa fa-file"></i>&nbsp;Invoice&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;*${invoiceCount }</span></a></div><br>
                </c:if>
                <c:if test="${invoiceCount == 0 }">
                <div class="d-flex justify-content-between align-items-center experience"><a style="text-decoration: none;" href="${pageContext.request.contextPath }/enterprise/invoice/${account.idAcc}"><span class="border px-3 p-1 add-experience"><i class="fa fa-file"></i>&nbsp;Invoice&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;*${invoiceCount }</span></a></div><br>
                </c:if>-->
               
               <div class="d-flex justify-content-between align-items-center experience">
               <a style="text-decoration: none" href="${pageContext.request.contextPath }/enterprise/room-management"><span class="border px-3 p-1 add-experience"><i class="fa fa-bars"></i>&nbsp;Room management</span></a></div><br>
                
                <div class="col-md-12"><label class="labels">Experience in Designing</label><input type="text" class="form-control" placeholder="experience" value=""></div> <br>
                
                <div class="col-md-12"><label class="labels">Additional Details</label><input type="text" class="form-control" placeholder="additional details" value=""></div>
            </div>
        </div>
    </div>
</div>




		<!-- JQUERY STEP -->
		<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>

		<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
</c:forEach>
</body>
</html>