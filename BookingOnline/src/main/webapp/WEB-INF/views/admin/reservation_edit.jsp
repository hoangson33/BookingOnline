<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="mt" tagdir="/WEB-INF/tags"%>
<%@ taglib prefix="s" uri="http://www.springframework.org/tags/form"%>
	 	 <link href="${pageContext.request.contextPath }/webapp/validation/style.css" rel="stylesheet">
	 	 <link href="${pageContext.request.contextPath }/webapp/js/jquery-3.6.0.min.js" rel="stylesheet">

<style>
body {font-family: Arial, Helvetica, sans-serif;}

/* The Modal (background) */
.modal {
  display: none; /* Hidden by default */
  position: fixed; /* Stay in place */
  z-index: 1; /* Sit on top */
  padding-top: 100px; /* Location of the box */
  left: 0;
  top: 0;
  width: 100%; /* Full width */
  height: 100%; /* Full height */
  overflow: auto; /* Enable scroll if needed */
  background-color: rgb(0,0,0); /* Fallback color */
  background-color: rgba(0,0,0,0.4); /* Black w/ opacity */
}

/* Modal Content */
.modal-content {
  position: relative;
  background-color: #fefefe;
  margin: auto;
  padding: 0;
  border: 1px solid #888;
  width: 80%;
  box-shadow: 0 4px 8px 0 rgba(0,0,0,0.2),0 6px 20px 0 rgba(0,0,0,0.19);
  -webkit-animation-name: animatetop;
  -webkit-animation-duration: 0.4s;
  animation-name: animatetop;
  animation-duration: 0.4s
}

/* Add Animation */
@-webkit-keyframes animatetop {
  from {top:-300px; opacity:0} 
  to {top:0; opacity:1}
}

@keyframes animatetop {
  from {top:-300px; opacity:0}
  to {top:0; opacity:1}
}

/* The Close Button */
.close {
  color: white;
  float: right;
  font-size: 28px;
  font-weight: bold;
}

.close:hover,
.close:focus {
  color: #000;
  text-decoration: none;
  cursor: pointer;
}

.modal-header {
  padding: 2px 16px;
  background-color: #073865;
}

.modal-body {padding: 2px 16px;}

.modal-footer {
  padding: 2px 16px;
  background-color: #073865;
}
</style>

<mt:layout_admin title="Index">

	<jsp:attribute name="content">
            
          <script>
function validateForm() {

  let phone = document.forms["myForm"]["phone"].value;
  let adult = document.forms["myForm"]["adult"].value;
  let children = document.forms["myForm"]["children"].value;
  
  if (phone == "") {
		alert("Phone must be filled out");
		return false;
	}else if (phone == "") {
				alert("Phone must be filled out");
				return false;
			}else if (adult == "") {
				alert("adult must be filled out");
				return false;
			}else if (adult < 0) {
				alert("adult : You can't enter negative numbers");
				return false;
			}else if (children == "") {
				alert("children must be filled out");
				return false;
			}else if (children < 0) {
				alert("children : You can't enter negative numbers");
				return false;
			}

		}
	</script>
            

   

<div class="breadcome-area">
<div class="container-fluid">
<div class="row">
<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
<div class="breadcome-list">
<div class="row">
<div class="col-lg-6 col-md-6 col-sm-6 col-xs-6">
<div class="breadcomb-wp">
<div class="breadcomb-icon">
<i class="fa fa-home"></i>
</div>
<div class="breadcomb-ctn">
<h2>Reservation Detail</h2>
<p>Welcome to Nalika <span class="bread-ntd">Admin Template</span>
											</p>
</div>
</div>
</div>
<div class="col-lg-6 col-md-6 col-sm-6 col-xs-6">
<div class="breadcomb-report">
<button data-toggle="tooltip" data-placement="left"
											title="Download Report" class="btn">
											<i class="icon nalika-download"></i>
										</button>
</div>
</div>
</div>
</div>
</div>
</div>
</div>
</div>
</div>

<div class="single-product-tab-area mg-b-30">

<div class="single-pro-review-area">
<div class="container-fluid">
<div class="row">
<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
<div class="review-tab-pro-inner">
<ul id="myTab3" class="tab-review-design">
<li class="active"><a href="#description"><i
											class="fa fa-edit" aria-hidden="true"></i>Reservation Detail</a></li>
	<li id="myBtn"> <i style="color: red;" class="fa fa-trash-o" aria-hidden="true"></i>
</li>
</ul>
<s:form name="myForm" onsubmit="return validateForm()" modelAttribute="reservation"  method="post"  enctype="multipart/form-data"
			action="${pageContext.request.contextPath }/admin/editReservation">    
<div id="myTabContent" class="tab-content custom-product-edit">
<div class="product-tab-list tab-pane fade active in" id="description">
<div class="row">
<div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
<div class="review-content-section">

			<div class="input-group mg-b-pro-edt">

	 
			<span class="input-group-addon"><i style="color: orange;" class="fa fa-building"
																		aria-hidden="true"></i> Customer_id</span>
			<s:input path="customerId" style="color: black;" type="text" class="form-control" placeholder="" readonly="true"/>
			</div>
			
			<div class="input-group mg-b-pro-edt">

	 
			<span class="input-group-addon"><i style="color: orange;" class="fa fa-building"
																		aria-hidden="true"></i> Id_Room</span>
			<s:input path="infoRoom.idRoom" style="color: White;" type="text" class="form-control" placeholder="" />
			</div>
			
			<div class="input-group mg-b-pro-edt">
			<span class="input-group-addon"><i style="color: green;" class="fa fa-file-text"
																		aria-hidden="true"></i> Name</span>
			<s:input path="name" type="text" class="form-control" />
	
			</div>
			<s:errors path="name" cssClass="format"></s:errors>
			
			<div class="input-group mg-b-pro-edt group checkin">
				<label class="color-22 playfair input-group-addon"  for="booking-checkin"><i style="color:orange;" class="fa fa-calendar"></i> CheckIn</label><s:input
									class="form-control" name="checkIn" path="checkIn" type="text" id="booking-checkin" placeholder="MM/DD/YY"
									/>
									
			</div>
			<s:errors path="checkIn" cssClass="format"></s:errors>
			<div class="input-group mg-b-pro-edt group checkout">
								<label class="color-22 playfair input-group-addon" for="booking-checkout"><i style="color:orange;" class="fa fa-calendar"></i> CheckOut</label><s:input 
									class="form-control" path="checkOut" type="text" id="booking-checkout" placeholder="MM/DD/YY"
									/>
			</div>
	
			<s:errors path="checkOut" cssClass="format"></s:errors>
			
		
			</div>
			</div>
		
			
			<div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
			<div class="review-content-section">
			<div class="input-group mg-b-pro-edt">
			<span class="input-group-addon">Phone</span>
			<s:input pattern="(\+84|0)\d{9,10}" maxlength="12"  path="phone" type="text" class="form-control" />

			</div>
			
						<div class="input-group mg-b-pro-edt">
			<span class="input-group-addon"><i style="color: green;" class="fa fa-file-text"
																		aria-hidden="true"></i> Email</span>
			<s:input path="email" type="email" class="form-control" />

			</div>
		<s:errors path="email" cssClass="format"></s:errors>
				<div class="input-group mg-b-pro-edt">
			<span class="input-group-addon"><i style="color:green;"  aria-hidden="true"></i>Adult</span>
			<s:input path="adult" type="number" class="form-control" />
	
			</div>
			
			<div class="input-group mg-b-pro-edt">
			<span class="input-group-addon"><i style="color:green;"  aria-hidden="true"></i>Children</span>
			<s:input path="children" type="number" class="form-control" />
	
			</div>
			
			
	
		
			
			
			
			
			
			
			</div>
			</div>
			
			</div>
			
			
			
			
<div class="row">

<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
<div class="text-center custom-pro-edt-ds">
<button type="submit"
								class="btn-default solid-bg-btn pos-relative">
								<span>Submit</span>
								<span>&nbsp;</span>
								<s:input type="hidden" name="idReservation" path="idReservation" />
								
								<s:input type="hidden" name="infoRoom.idRoom" path="infoRoom.idRoom" />
							
							
</button>

</s:form>

</div>
</div>
</div>
</div>











 
       
       	</jsp:attribute>
</mt:layout_admin>

<script>
// Get the modal
var modal = document.getElementById("myModal");

// Get the button that opens the modal
var btn = document.getElementById("myBtn");

// Get the <span> element that closes the modal
var span = document.getElementsByClassName("close")[0];

// When the user clicks the button, open the modal 
btn.onclick = function() {
  modal.style.display = "block";
}

// When the user clicks on <span> (x), close the modal
span.onclick = function() {
  modal.style.display = "none";
}

// When the user clicks anywhere outside of the modal, close it
window.onclick = function(event) {
  if (event.target == modal) {
    modal.style.display = "none";
  }
}
</script>
