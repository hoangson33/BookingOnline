
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
		
    <link href="https://fonts.googleapis.com/css?family=Roboto:300,400&display=swap" rel="stylesheet">

    <link rel="stylesheet" href="${pageContext.request.contextPath }/webapp/static/table_room_management/fonts/icomoon/style.css">

    <link rel="stylesheet" href="${pageContext.request.contextPath }/webapp/static/table_room_management/css/owl.carousel.min.css">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="${pageContext.request.contextPath }/webapp/static/table_room_management/css/bootstrap.min.css">
    
    <!-- Style -->
    <link rel="stylesheet" href="${pageContext.request.contextPath }/webapp/static/table_room_management/css/style.css">
		
		<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
				<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
	
		
<script>
function myFunction() {
  var elmnt = document.getElementById("myDIV");
  var x = elmnt.scrollLeft;
  var y = elmnt.scrollTop;
  document.getElementById ("demo").innerHTML = "Horizontally: " + x + "px<br>Vertically: " + y + "px";
}
</script>
<style type="text/css">

#myDIV {
  height: auto;
  width: auto;
  overflow: auto;
}

#content {
  height: auto;
  width: 2500px;
}

body {
    background-image: url("${pageContext.request.contextPath }/webapp/static/user/images/background-profile.jpg");
   height: 100%;
   background-position: center;
   background-repeat: no-repeat;
   background-size: cover;
}

ul{
	list-style-type: none !important;
}

</style>	
<body>



<div class="container rounded bg-white mt-5 mb-5 ">
    <div class="row ">
   			<ul class="nav nav-tabs">
			    <li class="active"><a href="${pageContext.request.contextPath }/home/welcome"><i class="fa fa-home fa-2x" style="color: #87CEFA;"></i> Home</a></li>
			    
	

			    <li class="active"><a href="${pageContext.request.contextPath }/enterprise/profile">Profile</a></li>
			</ul>
		<div id="myDIV" onscroll="myFunction()" class="col-md-12 " >
            <div id="content" class="p-3 py-5" >
			
			      <div class=" table-responsive">
			
			        <table class="table custom-table">
			          <thead>
			            <tr>
			              <th scope="col">Image</th>
			              <th scope="col">ID</th>
			              <th scope="col">Check in</th>
			              <th scope="col">Check out</th>
			              <th scope="col">Adult</th>
			              <th scope="col">Children</th>
			              <th scope="col">Highlights</th>
			              <th scope="col">Status</th>
			            </tr>
			          </thead>
			          <tbody>
			           <c:forEach var="allroom" items="${allrooms }">
			            <tr>
			              <td>
			                <ul class="persons">
			                  <li>
			                    <a href="#">
			                      <img src="${pageContext.request.contextPath }/webapp/assets/uploadRoom/${allroom.imgRoom}" alt="Person" class="img-fluid rounded">
			                    </a>
			                  </li>
			                  
			                </ul>
			              </td>
			              <td>${allroom.idRoom }</td>
			              <td>${allroom.checkIn }</td>
			              <c:if test="${allroom.checkOut < datenow}">
			              <td style="color: red;">${allroom.checkOut}<br>
			              <small>you need to update this room !!</small>
			              </td>
			              </c:if>
			              <c:if test="${allroom.checkOut > datenow}">
			              <td >${allroom.checkOut}</td>
			              </c:if>
			              <td>${allroom.guestAdult }</td>
			              <td>${allroom.guestChildren }</td>
			              <td>${allroom.highlightRoom }</td>
			              <c:if test="${allroom.status == true }">
			              <td><button type="button" class="btn btn-success">Available now</button></td>
			              </c:if>
			              <c:if test="${allroom.status != true }">
			              <td><button type="button" class="btn btn-warning">Not Available</button></td>
			              </c:if>
			              <td><a href="${pageContext.request.contextPath }/enterprise/edit-room?idRoom=${allroom.idRoom}"><i class="fa fa-edit"></i></a></td>
			            </tr>
			            
			           </c:forEach> 
			          </tbody>
			        </table>
			      </div>
			
			
			    </div>
			
			  </div>

	</div>
</div>
<p id="demo"></p>


    <script src="${pageContext.request.contextPath }/webapp/static/table_room_management/js/jquery-3.3.1.min.js"></script>
    <script src="${pageContext.request.contextPath }/webapp/static/table_room_management/js/popper.min.js"></script>
    <script src="${pageContext.request.contextPath }/webapp/static/table_room_management/js/bootstrap.min.js"></script>
    <script src="${pageContext.request.contextPath }/webapp/static/table_room_management/js/main.js"></script>

		<!-- JQUERY STEP -->
		<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>

		<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
</body>
</html>

