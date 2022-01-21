
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
		
		
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<script>
function myFunction1() {
  var elmnt = document.getElementById("myDIV1");
  var x = elmnt.scrollLeft;
  var y = elmnt.scrollTop;
  document.getElementById ("demo").innerHTML = "Horizontally: " + x + "px<br>Vertically: " + y + "px";
}

function myFunction2() {
	  var elmnt = document.getElementById("myDIV2");
	  var x = elmnt.scrollLeft;
	  var y = elmnt.scrollTop;
	  document.getElementById ("demo").innerHTML = "Horizontally: " + x + "px<br>Vertically: " + y + "px";
	}
	
function myFunction3() {
	  var elmnt = document.getElementById("myDIV3");
	  var x = elmnt.scrollLeft;
	  var y = elmnt.scrollTop;
	  document.getElementById ("demo").innerHTML = "Horizontally: " + x + "px<br>Vertically: " + y + "px";
	}
</script>
<style type="text/css">
.card {
    width: 444px
}

#myDIV1 {
  height: 800px;
  width: 950px;
  overflow: auto;
}

#myDIV2 {
  height: 800px;
  width: 950px;
  overflow: auto;
}

#myDIV3 {
  height: 800px;
  width: 950px;
  overflow: auto;
}

#content {
  height: 800px;
  width: 1000px;
}


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
<div class="container rounded bg-white mt-5 mb-5 " style="width: 5000px; height: 850px">
    <div class="row tab-content">
   			<ul class="nav nav-tabs">
			    <li class="active"><a href="${pageContext.request.contextPath }/home/welcome"><i class="fa fa-home fa-2x" style="color: #87CEFA;"></i> Home</a></li>
			    <c:if test="${invoiceCount != null }">
			    <li><a style="color: red;" data-toggle="tab" href="#myDIV1">Awaiting confirmation *${invoiceCount }</a></li>
			    </c:if>
			    <c:if test="${invoiceCount == null }">
			    <li><a data-toggle="tab" href="#myDIV1">Awaiting confirmation *${invoiceCount }</a></li>
			    </c:if>
			    <li><a data-toggle="tab" href="#myDIV2">Cancelled</a></li>
			    <li><a data-toggle="tab" href="#myDIV3">Confirmed</a></li>
			    
			</ul>
        <div class="col-md-3 border-right">
        	
            <div class="d-flex flex-column align-items-center text-center p-3 py-5"><img class="rounded-circle mt-5" width="150px" src="${pageContext.request.contextPath }/webapp/assets/uploads/${account.avatar}"><span class="font-weight-bold">${account.username }</span><span class="text-black-50">${account.email }</span><span> </span></div>
        </div>
      
        <div id="myDIV1" onscroll="myFunction1()" class="col-md-9 border-right tab-pane fade">
            <div id="content" class="p-3 py-5">
                <div class="d-flex justify-content-between align-items-center mb-3">
                    <h4 style="color: #87CEFA;" class="text-right">
                    <a style="text-decoration: none" href="${pageContext.request.contextPath }/enterprise/profile">Profile </a><i class="fa fa-arrow-right"></i> 
                    <a style="text-decoration: none" href="${pageContext.request.contextPath }/enterprise/invoice/${account.idAcc}">Invoice </a><i class="fa fa-arrow-right"></i>
                    Awaiting confirmation</h4>
                </div>
                <c:forEach var="invoice" items="${invoiceWaits }">
                <div  class="d-flex justify-content-center container mt-5">
                
				    <div class=" card p-3 bg-white"><a style="color: #87CEFA; text-decoration: none" href="${pageContext.request.contextPath }/enterprise/invoice-detail?idReservation=${invoice.idReservation}"><i class="fa fa-info-circle"></i> More detail...</a>
				        <div class="about-product text-center mt-2"><img src="${pageContext.request.contextPath }/webapp/assets/uploadRoom/${invoice.infoRoom.imgRoom}" width="300">
				            <div>
				                <h4>ID:${invoice.idReservation } | ${invoice.infoRoom.roomCategory } Room</h4>
				                <c:if test="${invoice.status  == false && invoice.statusCancel  == false}">
				                	<a class="btn btn-warning " type="button">Processing...</a>
				                </c:if>
				                <c:if test="${invoice.status  != false && invoice.statusCancel  == false}">
				                	<a class="btn btn-success " type="button">Confirmed</a>
				                </c:if>
				                <c:if test="${invoice.status  == false && invoice.statusCancel  == true}">
				                	<a class="btn btn-danger " type="button">Cancelled</a>
				                </c:if>
				                <h6 class="mt-0 text-black-50">${invoice.adult } Adult ${invoice.children } Children</h6>
				            </div>
				        </div>
				        <div class="stats mt-2">
				            <div class="d-flex justify-content-between p-price"><span>Price / Per night</span><span>$${invoice.infoRoom.price }</span></div>
				            <div class="d-flex justify-content-between p-price"><span>Discount from the hotel</span><span>%${invoice.infoRoom.salePrice }</span></div>
				        </div>
				        <div class="d-flex justify-content-between total font-weight-bold mt-4"><span>Total</span><span>$${invoice.infoRoom.total }</span></div>
				    </div>
				    
				</div>
				</c:forEach>
            </div>
        </div>
        
        
        
        <div id="myDIV2" onscroll="myFunction2()" class="col-md-9 border-right tab-pane fade">
            <div id="content" class="p-3 py-5">
                <div class="d-flex justify-content-between align-items-center mb-3">
                    <h4 style="color: #87CEFA;" class="text-right">
                    <a style="text-decoration: none" href="${pageContext.request.contextPath }/enterprise/profile">Profile </a><i class="fa fa-arrow-right"></i> 
                    <a style="text-decoration: none" href="${pageContext.request.contextPath }/enterprise/invoice/${account.idAcc}">Invoice </a><i class="fa fa-arrow-right"></i> 
                    Cancelled</h4>
                </div>
                <c:forEach var="invoice" items="${invoiceCancel }">
                <div  class="d-flex justify-content-center container mt-5">
                
				    <div class=" card p-3 bg-white"><a style="color: #87CEFA; text-decoration: none" href="${pageContext.request.contextPath }/enterprise/invoice-detail?idReservation=${invoice.idReservation}"><i class="fa fa-info-circle"></i> More detail...</a>
				        <div class="about-product text-center mt-2"><img src="${pageContext.request.contextPath }/webapp/assets/uploadRoom/${invoice.infoRoom.imgRoom}" width="300">
				            <div>
				                <h4>ID:${invoice.idReservation } | ${invoice.infoRoom.roomCategory } Room</h4>
				                <c:if test="${invoice.status  == false && invoice.statusCancel  == false}">
				                	<a class="btn btn-warning " type="button">Processing...</a>
				                </c:if>
				                <c:if test="${invoice.status  != false && invoice.statusCancel  == false}">
				                	<a class="btn btn-success " type="button">Confirmed</a>
				                </c:if>
				                <c:if test="${invoice.status  == false && invoice.statusCancel  == true}">
				                	<a class="btn btn-danger " type="button">Cancelled</a>
				                </c:if>
				                <h6 class="mt-0 text-black-50">${invoice.adult } Adult ${invoice.children } Children</h6>
				            </div>
				        </div>
				        <div class="stats mt-2">
				            <div class="d-flex justify-content-between p-price"><span>Price / Per night</span><span>$${invoice.infoRoom.price }</span></div>
				            <div class="d-flex justify-content-between p-price"><span>Discount from the hotel</span><span>%${invoice.infoRoom.salePrice }</span></div>
				        </div>
				        <div class="d-flex justify-content-between total font-weight-bold mt-4"><span>Total</span><span>$${invoice.infoRoom.total }</span></div>
				    </div>
				    
				</div>
				</c:forEach>
            </div>
        </div>
        
        
        <div id="myDIV3" onscroll="myFunction3()" class="col-md-9 border-right tab-pane fade">
            <div id="content" class="p-3 py-5">
                <div class="d-flex justify-content-between align-items-center mb-3">
                    <h4 style="color: #87CEFA;" class="text-right">
                    <a style="text-decoration: none" href="${pageContext.request.contextPath }/enterprise/profile">Profile </a><i class="fa fa-arrow-right"></i> 
                    <a style="text-decoration: none" href="${pageContext.request.contextPath }/enterprise/invoice/${account.idAcc}">Invoice </a><i class="fa fa-arrow-right"></i> 
                    Confirmed</h4>
                </div>
                <c:forEach var="invoice" items="${invoiceConfirm }">
                <div  class="d-flex justify-content-center container mt-5">
                
				    <div class=" card p-3 bg-white"><a style="color: #87CEFA; text-decoration: none" href="${pageContext.request.contextPath }/enterprise/invoice-detail?idReservation=${invoice.idReservation}"><i class="fa fa-info-circle"></i> More detail...</a>
				        <div class="about-product text-center mt-2"><img src="${pageContext.request.contextPath }/webapp/assets/uploadRoom/${invoice.infoRoom.imgRoom}" width="300">
				            <div>
				                <h4>ID:${invoice.idReservation } | ${invoice.infoRoom.roomCategory } Room</h4>
				                <c:if test="${invoice.status  == false && invoice.statusCancel  == false}">
				                	<a class="btn btn-warning " type="button">Processing...</a>
				                </c:if>
				                <c:if test="${invoice.status  != false && invoice.statusCancel  == false}">
				                	<a class="btn btn-success " type="button">Confirmed</a>
				                </c:if>
				                <c:if test="${invoice.status  == false && invoice.statusCancel  == true}">
				                	<a class="btn btn-danger " type="button">Cancelled</a>
				                </c:if>
				                <h6 class="mt-0 text-black-50">${invoice.adult } Adult ${invoice.children } Children</h6>
				            </div>
				        </div>
				        <div class="stats mt-2">
				            <div class="d-flex justify-content-between p-price"><span>Price / Per night</span><span>$${invoice.infoRoom.price }</span></div>
				            <div class="d-flex justify-content-between p-price"><span>Discount from the hotel</span><span>%${invoice.infoRoom.salePrice }</span></div>
				        </div>
				        <div class="d-flex justify-content-between total font-weight-bold mt-4"><span>Total</span><span>$${invoice.infoRoom.total }</span></div>
				    </div>
				    
				</div>
				</c:forEach>
            </div>
        </div>
      
        
    </div>
</div>


<p id="demo"></p>



		<!-- JQUERY STEP -->
		<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>

		<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
</c:forEach>
</body>
</html>

