<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="mt" tagdir="/WEB-INF/tags"%>
<%@ taglib prefix="s" uri="http://www.springframework.org/tags/form"%>


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
<h2>Room Detail</h2>
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
											class="fa fa-edit" aria-hidden="true"></i>Room Detail</a></li>
	<li id="myBtn"> <i style="color: red;" class="fa fa-trash-o" aria-hidden="true"></i>
</li>
</ul>
<s:form method="post" modelAttribute="infoRoom" enctype="multipart/form-data"
			action="${pageContext.request.contextPath }/admin/edit-room">   
<div id="myTabContent" class="tab-content custom-product-edit">
<div class="product-tab-list tab-pane fade active in" id="description">
<div class="row">
<div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
<div class="review-content-section">
<div class="input-group mg-b-pro-edt">

	 
			<span class="input-group-addon"><i style="color: orange;" class="fa fa-building"
																		aria-hidden="true"></i> Belongs to</span>
			<s:input path="account.idAcc" style="color: black;" type="text" class="form-control" placeholder="" readonly="true"/>
			</div>
			<div class="input-group mg-b-pro-edt">
			<span class="input-group-addon">Guest Children</span>
			<s:input path="guestChildren" type="text" class="form-control" />
			</div>
			<div class="input-group mg-b-pro-edt">
			<span class="input-group-addon">Guest Adult</span>
			<s:input path="guestAdult" type="text" class="form-control" />
			</div>
			<div class="input-group mg-b-pro-edt">
			<span class="input-group-addon"><i style="color: green;" class="fa fa-file-text"
																		aria-hidden="true"></i> Description</span>
			<s:input path="description" type="text" class="form-control" />
			</div>
			
			
			<div class="input-group mg-b-pro-edt group checkin">
				<label class="color-22 playfair input-group-addon"  for="booking-checkin"><i style="color:orange;" class="fa fa-calendar"></i> CheckIn</label><s:input
									class="form-control" path="checkIn" type="text" id="booking-checkin" placeholder="MM/DD/YY"
									/>
			</div>
			<div class="input-group mg-b-pro-edt group checkout">
								<label class="color-22 playfair input-group-addon" for="booking-checkout"><i style="color:orange;" class="fa fa-calendar"></i> CheckOut</label><s:input 
									class="form-control" path="checkOut" type="text" id="booking-checkout" placeholder="MM/DD/YY"
									/>
			</div>
			
			<div class="input-group mg-b-pro-edt img-area">
						<label><img width="420" src="${pageContext.request.contextPath }/webapp/assets/uploadRoom/${infoRoom.imgRoom}" alt="Extra Image 1" class="img-fluid rounded"></label>
			</div>
			
			<div class="input-group mg-b-pro-edt img-area">
						<label><img src="${pageContext.request.contextPath }/webapp/assets/uploadRoom/${infoRoom.extraImg1}" alt="Extra Image 1" class="img-fluid rounded"></label>
			</div>
			
			
			</div>
			</div>
			
			
			
			<div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
			<div class="review-content-section">
			<div class="input-group mg-b-pro-edt">
			<span class="input-group-addon">Room Category</span>
			<s:input path="roomCategory" type="text" class="form-control" />
			</div>
			<div class="input-group mg-b-pro-edt">
			<span class="input-group-addon"><i style="color:green;" class="fa fa-usd" aria-hidden="true"></i> No discount</span>
			<s:input path="price" type="number" class="form-control" />
			</div>
			<div class="input-group mg-b-pro-edt">
			<span class="input-group-addon"><i style="color:green;" class="fa fa-calendar"
																		aria-hidden="true"></i> Created</span>
			<s:input path="created" type="text" class="form-control" />
			</div>
			
			<div class="input-group mg-b-pro-edt">
			<span class="input-group-addon"><i style="color:green;" class="fa fa-check"
																		aria-hidden="true"></i> Room's highlights</span>
			<s:input path="highlightRoom" type="text" class="form-control" />
			</div>
			
			<div class="input-group mg-b-pro-edt">
			<span class="input-group-addon"><i style="color:red;" class="fa fa-eye"
																		aria-hidden="true"></i> Status</span>
			<s:input path="status" type="text" class="form-control" />
			</div>
			
			<div class="input-group mg-b-pro-edt img-area">
						<label><img src="${pageContext.request.contextPath }/webapp/assets/uploadRoom/${infoRoom.extraImg2}" alt="Extra Image 1" class="img-fluid rounded"></label>
			</div>
			
			<div class="input-group mg-b-pro-edt img-area">
						<label><img src="${pageContext.request.contextPath }/webapp/assets/uploadRoom/${infoRoom.extraImg3}" alt="Extra Image 1" class="img-fluid rounded"></label>
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
								<s:input type="hidden" name="idRoom" path="idRoom" />
</button>

</s:form>

</div>
</div>
</div>
</div>


<s:form  method="get" action="${pageContext.request.contextPath }/admin/deleteRoom/${idRoom } ">    
                                <!-- The Modal -->
									<div id="myModal" class="modal">
									
									  <!-- Modal content -->
									  <div class="modal-content">
									    <div class="modal-header">
									      <span class="close">&times;</span>
									      <h2 style="color: white;">Refuse</h2>
									    </div>
									    <div class="modal-body">
									      <textarea name="desc" class="col-sm-12" placeholder="Reason...."></textarea>
									    </div>
									    <div class="modal-footer">
      										<button type="submit" class="btn btn-button " >Submit</button>
    									</div>
									  </div>
									
									</div>
									</s:form>









 
       
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
