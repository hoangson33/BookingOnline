
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
		<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-alpha1/dist/css/bootstrap.min.css">
		
		    
<script>
function myFunction() {
  var elmnt = document.getElementById("myDIV");
  var x = elmnt.scrollLeft;
  var y = elmnt.scrollTop;
  document.getElementById ("demo").innerHTML = "Horizontally: " + x + "px<br>Vertically: " + y + "px";
}
</script>
<style type="text/css">
.fs-12 {
    font-size: 12px
}

.fs-15 {
    font-size: 15px
}

.name {
    margin-bottom: -2px
}

.product-details {
    margin-top: 13px
}



#myDIV {
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





body {
    background-color: #B3E5FC;
    border-radius: 12px
}

.modal-header {
    border-bottom: none
}

.modal-title {
    font-size: 25px;
    font-weight: 700;
    color: #1A237E
}

.modal-body {
    font-style: italic;
    font-size: 15px;
    font-weight: 500;
    color: #1A237E
}

.checkbox-form {
    background: #FFEBEE;
    color: #D32F2F;
    margin-top: 10px;
    cursor: pointer;
    border-radius: 1px
}

.learn {
    text-decoration: none;
    color: #fff
}

.add-list {
    height: 45px;
    line-height: 27px;
    background-color: #D32F2F;
    color: #fff !important
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
        <div id="myDIV" onscroll="myFunction()" class="col-md-9 border-right">
            <div id="content" class="p-3 py-5">
                <div class="d-flex justify-content-between align-items-center mb-3">
                
                    <h4 style="color: #87CEFA;" class="text-right"><a style="text-decoration: none" href="${pageContext.request.contextPath }/customer/invoice/${account.idAcc}">Invoice </a><i class="fa fa-arrow-right"></i> Detail invoice</h4>
                </div>
               <c:forEach var="invoice" items="${invoices }">
                <div class="container mt-5 mb-5">
				    <div class="d-flex justify-content-center row">
				        <div class="col-md-10">
				            <div class="receipt bg-white p-3 rounded"><img src="${pageContext.request.contextPath }/webapp/static/user/images/favicon.png" width="120">
				               <c:if test="${invoice.status == false}">
				                <h4 class="mt-2 mb-3">Your order is processing!</h4>
				                <h6 class="name">Hello ${account.name },</h6><span class="fs-12 text-black-50">your order has been received and the hotel will contact you as soon as possible</span>
				               </c:if> 
				               <c:if test="${invoice.status != false}">
				                <h4 class="mt-2 mb-3">Your order is confirmed!</h4>
				                <h6 class="name">Hello ${account.name },</h6><span class="fs-12 text-black-50">your order has been confirmed and the hotel will greet you on : ${invoice.checkIn }</span>
				               </c:if> 
				                
				                <hr>
				                <div class="d-flex flex-row justify-content-between align-items-center order-details">
				                    <div><span class="d-block fs-12">Order date</span><span class="font-weight-bold">${invoice.created }</span></div>
				                    <div><span class="d-block fs-12">Order ID</span><span class="font-weight-bold">${invoice.idReservation }</span></div>
				                    <div><span class="d-block fs-12">Payment method</span><span class="font-weight-bold">Cash </span><i class="fa fa-money text-success"></i></div>
				                </div>
				                <hr>
				                <div class="d-flex justify-content-between align-items-center product-details">
				                    <div class="d-flex flex-row product-name-image"><img class="rounded" src="${pageContext.request.contextPath }/webapp/assets/uploadRoom/${invoice.infoRoom.imgRoom}" width="80">
				                        
				                        <div class="d-flex flex-column justify-content-between ml-2">
				                            <div><span class="d-block font-weight-bold p-name">${invoice.infoRoom.account.name } Hotel</span><span class="fs-12">${invoice.infoRoom.roomCategory } room</span> | <span class="fs-12 text-success">${invoice.infoRoom.account.locationDetail },${invoice.infoRoom.account.location }</span></div><span class="fs-12 text-success">${invoice.infoRoom.guestAdult } Adult ${invoice.infoRoom.guestChildren } Children | Checkin : ${invoice.infoRoom.checkIn } / Checkout: ${invoice.infoRoom.checkOut }</span>
				                        </div>
				                    </div>
				                    <div class="product-price">
				                        <h5>$${invoice.infoRoom.price }</h5>
				                    </div>
				                </div>
				                <div class="mt-5 amount row">
				                    <div class="col-md-6 border-right">
				                    	<div class="billing">
				                            <div class="d-flex justify-content-between"><span class="font-weight-bold">From: <i style="color: #87CEFA;" class="fa fa-calendar"></i> ${invoice.checkIn }</span><span class="font-weight-bold ">To: <i style="color: #87CEFA;" class="fa fa-calendar"></i> ${invoice.checkOut }</span></div>
				                            
				                            <div class="d-flex justify-content-between mt-2"><span>Number of people :</span><span class="font-weight-bold">${invoice.adult } Adult ${invoice.children } Children</span></div>
				                            <div class="d-flex justify-content-between mt-2"><span>Email :</span><span class="font-weight-bold">${invoice.email }</span></div>
				                            <div class="d-flex justify-content-between mt-2"><span>Phone : </span><span class="font-weight-bold ">${invoice.phone }</span></div>
				                        </div>
				                    </div>
				                    <div class="col-md-6">
				                        <div class="billing">
				                            <div class="d-flex justify-content-between"><span>Subtotal</span><span class="font-weight-bold">$${invoice.infoRoom.price }</span></div>
				             
				                            <div class="d-flex justify-content-between mt-2"><span class="text-success">Discount</span><span class="font-weight-bold text-success">%${invoice.infoRoom.salePrice }</span></div>
				                            <hr>
				                            <div class="d-flex justify-content-between mt-1"><span class="font-weight-bold">Total</span><span class="font-weight-bold text-success">$${invoice.infoRoom.total }</span></div>
				                        </div>
				                    </div>
				                    <hr>
				                </div><span class="d-block">You are expected to arrive on</span><span class="font-weight-bold text-success">${invoice.checkIn }</span><span style="color: red;" class="d-block mt-3  fs-15">*You pay after check in!</span>
				                <hr>
				                <div class="d-flex justify-content-between align-items-center footer">
				                    <div class="thanks"><span class="d-block font-weight-bold">Thanks for booking</span><span>Booking Hotel team</span></div>
				                    <div class="d-flex flex-column justify-content-end align-items-end"><span class="d-block font-weight-bold">Need Help?</span><span>Call - 397850028</span></div>
				                </div>
				                <hr>
				                <div class="d-flex justify-content-between align-items-center footer">
				                	<c:if test="${invoice.statusCancel == false }">
				                    <div style="margin-left: 200px" class="col-md-6"><input data-toggle="modal" data-target="#staticBackdrop" type="button" class="form-control btn btn-danger" value="Cancel booking"></div>
				                    </c:if>
				                    <c:if test="${invoice.statusCancel != false }">
				                    <div style="margin-left: 200px" class="col-md-6"><a href="${pageContext.request.contextPath }/customer/booking-again/${idCancel }" type="button" class="form-control btn btn-danger" >Booking again</a></div>
				                    </c:if>
				                    
				                </div>
				            </div>
				        </div>
				    </div>
				</div>

<s:form method="post" modelAttribute="reservationCancel" action="${pageContext.request.contextPath }/customer/add-reservation-cancel">
<div class="modal fade" id="staticBackdrop" data-backdrop="static" data-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
    <div class="modal-dialog modal-sm">
        <div class="modal-content">
            <div class="modal-header">
                <h4 class="modal-title" id="staticBackdropLabel">Recommended list</h4> <button type="button" class="close" data-dismiss="modal" aria-label="Close"> <span aria-hidden="true">&times;</span> </button>
            </div>
            <div class="modal-body mt-0"> <span>Lists are broadest way to group together contacts who have opted-in to receive your emails. Remember -- the fewer list</span>
                <div class="mt-3">
                	<s:input path="reservation.idReservation" type="hidden" value="${invoice.idReservation }"/>
                    <div class="p-2 rounded checkbox-form">
                        <div class="form-check"> <s:checkbox path="reason" id="1"  class="form-check-input"  value="I want to edit my stay !" onclick="getSelectItemThat(this.id)" /> <label class=" newsletter form-check-label" for="flexCheckDefault-1"> I want to edit my stay ! </label> </div>
                    </div>
                    <div class="p-2 rounded checkbox-form">
                        <div class="form-check"> <s:checkbox path="reason" id="2" class="form-check-input "  value="I want to see other rooms !" onclick="getSelectItemThat(this.id)"/> <label class=" prospect form-check-label" for="flexCheckDefault-2"> I want to see other rooms ! </label> </div>
                    </div>
                    <div class="p-2 rounded checkbox-form">
                        <div class="form-check"> <s:checkbox path="reason" id="3" class="form-check-input "  value="I have extraordinarily busy !" onclick="getSelectItemThat(this.id)"/> <label class=" event form-check-label" for="flexCheckDefault-3"> I have extraordinarily busy ! </label> </div>
                    </div>
                    <div class="p-2 rounded checkbox-form">
                        <div class="form-check"> <s:checkbox path="reason" id="4" class="form-check-input "  value="Too bad service !" onclick="getSelectItemThat(this.id)"/> <label class=" customers form-check-label" for="flexCheckDefault-4"> Too bad service !</label> </div>
                    </div>
                </div>
            </div>
            
            <div class="modal-footer d-flex justify-content-between align-items-center">
            <span>&nbsp;</span>
            <button type="submit" class="btn btn-danger btn-sm" >Confirm</button> </div>
        </div>
    </div>
</div>
</s:form>
			</c:forEach>	
                
            </div>
        </div>
        
    </div>
</div>



<p id="demo"></p>

<script>

function getSelectItemThat(id) {
    for (var i = 1;i <= 4; i++)
    {
        document.getElementById(i).checked = false;
    }
    document.getElementById(id).checked = true;
}
</script>
		
		<!-- JQUERY STEP -->
		<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>

		<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
		
		
</c:forEach>
</body>
</html>

