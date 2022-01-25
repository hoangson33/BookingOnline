<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="mt" tagdir="/WEB-INF/tags"%>
<%@ taglib prefix="s" uri="http://www.springframework.org/tags/form"%>
	 	 <link href="${pageContext.request.contextPath }/webapp/validation/style.css" rel="stylesheet">
	 	 <link href="${pageContext.request.contextPath }/webapp/js/jquery-3.6.0.min.js" rel="stylesheet">

<style>
body {font-family: Arial, Helvetica, sans-serif;}






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

<div class="container-fluid">
<div class="row">
<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
<div class="review-tab-pro-inner">
<ul id="myTab3" class="tab-review-design">
<li class="active"><a href="#description"><i class="fa fa-edit" aria-hidden="true"></i>Reservation Detail</a></li>
</ul>


<c:forEach var="account" items="${accounts }" >
<c:forEach var="invoice" items="${invoices }">
<!-- Awaiting -->	
		
		
<c:if test="${invoice.status == false && invoice.statusCancel == false && invoice.paymentStatus == false }">   
<s:form name="myForm" onsubmit="return validateForm()" modelAttribute="reservation"  method="post"
			action="${pageContext.request.contextPath }/admin/editReservation">	
<div class="row">
<c:if test="${countCancelled <= 1 && invoice.status != true && invoice.statusCancel == false}"><span class="input-group-addon ">Customer booking information |<strong style="color: green;" > Warning about cancellations : ${countCancelled } times</strong></span> </c:if>  
				                 <c:if test="${countCancelled >1 && countCancelled <=2 && invoice.status != true && invoice.statusCancel == false}"><span class="input-group-addon ">Customer booking information |<strong style="color: orange;" > Warning about cancellations : ${countCancelled } times</strong></span> </c:if>  
				                 <c:if test="${countCancelled >3 && invoice.status != true && invoice.statusCancel == false}"><span class="input-group-addon ">Customer booking information |<strong style="color: red;" > Warning about cancellations : ${countCancelled } times</strong></span> </c:if>  

<hr>
<div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">

<div class="review-content-section">
			
			<div class="input-group mg-b-pro-edt">

	 		
			<span class="input-group-addon"><i style="color: orange;" class="fa fa-building"
																		aria-hidden="true"></i> Customer_id</span>
			<s:input path="customerId" style="color: black;" type="text" class="form-control" placeholder="" readonly="true" />
			</div>
			
			<div class="input-group mg-b-pro-edt">

	 
			<span class="input-group-addon"><a href="${pageContext.request.contextPath }/admin/edit-room/${reservation.infoRoom.idRoom}"><i style="color: orange;" class="fa fa-building"
																		aria-hidden="true"></i> Id_Room</a></span>
			<s:input path="infoRoom.idRoom"  style="color: White;" type="text" class="form-control"  />
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
			
			<div class="input-group mg-b-pro-edt">
			<span class="input-group-addon"><i style="color:green;"  aria-hidden="true"></i>Status</span>
			<button style="color: orange;"  class="form-control btn btn-warning" >Awaiting for approval</button>
	
			</div>
			
			
	
		
			
			
			
			
			
			
			</div>
			</div>
			
			</div>
			
			
			
			

<div class="text-center custom-pro-edt-ds">
<button type="submit"
								class="btn btn-success">
								<span style="color: white;">Confirm</span>
								<span>&nbsp;</span>
								<s:input type="hidden" name="idReservation" path="idReservation" />
								
								<s:input type="hidden" name="infoRoom.idRoom" path="infoRoom.idRoom" />
							
							
</button>

<button type="button" class="btn btn-danger" data-toggle="modal" data-target="#staticBackdrop">
	<span style="color: white;">Cancel</span>
							
							
</button>
</div>
</s:form>

</c:if> 

<s:form method="post" modelAttribute="reservationCancel" action="${pageContext.request.contextPath }/admin/cancel-invoice">
<div class="modal fade" id="staticBackdrop" data-backdrop="static" data-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
    <div class="modal-dialog modal-sm">
        <div class="modal-content">
            <div class="modal-header">
                <h4 class="modal-title" id="staticBackdropLabel">Recommended list</h4> <button type="button" class="close" data-dismiss="modal" aria-label="Close"> <span aria-hidden="true">&times;</span> </button>
            </div>
            <div class="modal-body mt-0">
                <div class="mt-3">
                <s:input path="reservation.idReservation" type="hidden" value="${invoice.idReservation }"/>
                	<s:input path="cancelledBy" type="hidden" value="${account.idAcc }"/>
                    <div class="p-2 rounded checkbox-form">
                        <div class="form-check"> <s:checkbox  path="reason" id="1"  class="form-check-input"  value="Sorry, the room you booked has had an unexpected problem, we're very sorry about this problem !" onclick="getSelectItemThat(this.id)" /> <label class=" newsletter form-check-label" for="flexCheckDefault-1"> Sorry, the room you booked has had an unexpected problem, we're very sorry about this problem ! </label> </div>
                    </div>
                    <div class="p-2 rounded checkbox-form">
                        <div class="form-check"> <s:checkbox  path="reason" id="2" class="form-check-input "  value="This room is currently not available! ! " onclick="getSelectItemThat(this.id)"/> <label class=" prospect form-check-label" for="flexCheckDefault-2"> This room is currently not available! ! </label> </div>
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




<!-- Confirmed -->	
		
		
<c:if test="${invoice.status == true && invoice.statusCancel == false && invoice.paymentStatus == false }">   
<s:form name="myForm" onsubmit="return validateForm()" modelAttribute="reservation"  method="post"
			action="${pageContext.request.contextPath }/admin/completed-invoice">	
<div class="row">
<span class="input-group-addon ">Customer booking information</span>
<hr>
<div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">

<div class="review-content-section">
			
			<div class="input-group mg-b-pro-edt">

	 		
			<span class="input-group-addon"><i style="color: orange;" class="fa fa-building"
																		aria-hidden="true"></i> Customer_id</span>
			<s:input path="customerId" style="color: black;" type="text" class="form-control" placeholder="" readonly="true" />
			</div>
			
			<div class="input-group mg-b-pro-edt">

	 
			<span class="input-group-addon"><a href="${pageContext.request.contextPath }/admin/edit-room/${reservation.infoRoom.idRoom}"><i style="color: orange;" class="fa fa-building"
																		aria-hidden="true"></i> Id_Room</a></span>
			<s:input path="infoRoom.idRoom"  style="color: White;" type="text" class="form-control"  />
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
			
			<div class="input-group mg-b-pro-edt">
			<span class="input-group-addon"><i style="color:green;"  aria-hidden="true"></i>Status</span>
			<button style="color: orange;"  class="form-control btn btn-warning" >Awaiting for confirm payment success</button>
	
			</div>
			
			
	
		
			
			
			
			
			
			
			</div>
			</div>
			
			</div>
			
			
			
			

<div class="text-center custom-pro-edt-ds">
<button type="submit"
								class="btn btn-success">
								<span style="color: white;">Confirmed ?</span>
								<span>&nbsp;</span>
								<s:input type="hidden" name="idReservation" path="idReservation" />
								
								<s:input type="hidden" name="infoRoom.idRoom" path="infoRoom.idRoom" />
							
							
</button>

<button type="button" class="btn btn-info" onclick="">
	<span style="color: white;">Happening....</span>
							
							
</button>
</div>
</s:form>

</c:if> 



<!-- Completed -->	
		
		
<c:if test="${invoice.status != false && invoice.statusCancel == false && invoice.paymentStatus == true }">   
<s:form name="myForm" onsubmit="return validateForm()" modelAttribute="reservation"  method="post"
			action="${pageContext.request.contextPath }/admin/completed-invoice">	
<div class="row">
<span class="input-group-addon ">Customer booking information</span>
<hr>
<div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">

<div class="review-content-section">
			
			<div class="input-group mg-b-pro-edt">

	 		
			<span class="input-group-addon"><i style="color: orange;" class="fa fa-building"
																		aria-hidden="true"></i> Customer_id</span>
			<s:input path="customerId" style="color: black;" type="text" class="form-control" placeholder="" readonly="true" />
			</div>
			
			<div class="input-group mg-b-pro-edt">

	 
			<span class="input-group-addon"><a href="${pageContext.request.contextPath }/admin/edit-room/${reservation.infoRoom.idRoom}"><i style="color: orange;" class="fa fa-building"
																		aria-hidden="true"></i> Id_Room</a></span>
			<s:input path="infoRoom.idRoom"  style="color: White;" type="text" class="form-control"  />
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
			
			<div class="input-group mg-b-pro-edt">
			<span class="input-group-addon"><i style="color:green;"  aria-hidden="true"></i>Status</span>
			<button style="color: green;"  class="form-control btn btn-success" >Payment Success</button>
	
			</div>
			
			
	
		
			
			
			
			
			
			
			</div>
			</div>
			
			</div>
			
			
			
			

<div class="text-center custom-pro-edt-ds">
<button type="button"
								class="btn btn-success">
								<span style="color: white;">Payment Success</span>
								<span>&nbsp;</span>
								
							
</button>
</div>
</s:form>

</c:if> 




<!-- Cancelled -->	
		
		
<c:if test="${invoice.status == false && invoice.statusCancel == true && invoice.paymentStatus == false  }">   
<s:form name="myForm" onsubmit="return validateForm()" modelAttribute="reservation"  method="post"
			action="${pageContext.request.contextPath }/admin/completed-invoice">	
<div class="row">
<span class="input-group-addon ">Customer booking information</span>
<hr>
<div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">

<div class="review-content-section">
			
			<div class="input-group mg-b-pro-edt">

	 		
			<span class="input-group-addon"><i style="color: orange;" class="fa fa-building"
																		aria-hidden="true"></i> Customer_id</span>
			<s:input path="customerId" style="color: black;" type="text" class="form-control" placeholder="" readonly="true" />
			</div>
			
			<div class="input-group mg-b-pro-edt">

	 
			<span class="input-group-addon"><a href="${pageContext.request.contextPath }/admin/edit-room/${reservation.infoRoom.idRoom}"><i style="color: orange;" class="fa fa-building"
																		aria-hidden="true"></i> Id_Room</a></span>
			<s:input path="infoRoom.idRoom"  style="color: White;" type="text" class="form-control"  />
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
			
			<c:if test="${invoice.statusCancel != false && account.idAcc == cancelledBy.cancelledBy && invoice.customerId != cancelledBy.cancelledBy && invoice.infoRoom.account.idAcc != cancelledBy.cancelledBy}">
			<div class="input-group mg-b-pro-edt">
			<span class="input-group-addon"><i style="color:green;"  aria-hidden="true"></i>Status</span>
			<button style="color: red;"  class="form-control btn btn-danger" >*Cancelled by SuperAdmin ! : "${cancelledBy.reason }"</button>
	
			</div>
			</c:if>
			<c:if test="${invoice.statusCancel != false && account.idAcc != cancelledBy.cancelledBy && invoice.customerId == cancelledBy.cancelledBy && invoice.infoRoom.account.idAcc != cancelledBy.cancelledBy}">
			<div class="input-group mg-b-pro-edt">
			<span class="input-group-addon"><i style="color:green;"  aria-hidden="true"></i>Status</span>
			<button style="color: red;"  class="form-control btn btn-danger" >*Cancelled by the Customer ! : "${cancelledBy.reason }"</button>
	
			</div>
			</c:if>
			<c:if test="${invoice.statusCancel != false && account.idAcc != cancelledBy.cancelledBy && invoice.customerId != cancelledBy.cancelledBy && invoice.infoRoom.account.idAcc == cancelledBy.cancelledBy}">
			<div class="input-group mg-b-pro-edt">
			<span class="input-group-addon"><i style="color:green;"  aria-hidden="true"></i>Status</span>
			<button style="color: red;"  class="form-control btn btn-danger" >*Cancelled by the Hotel ! : "${cancelledBy.reason }"</button>
	
			</div>
			</c:if>
			
	
		
			
			
			
			
			
			
			</div>
			</div>
			
			</div>
			
			
			
			

<div class="text-center custom-pro-edt-ds">
<button type="button"
								class="btn btn-danger">
								<span style="color: white;">Cancelled</span>
								<span>&nbsp;</span>
								
							
</button>
</div>
</s:form>

</c:if> 



		 </c:forEach>
		
</c:forEach>

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

<script>

function getSelectItemThat(id) {
    for (var i = 1;i <= 2; i++)
    {
        document.getElementById(i).checked = false;
    }
    document.getElementById(id).checked = true;
}



</script>
