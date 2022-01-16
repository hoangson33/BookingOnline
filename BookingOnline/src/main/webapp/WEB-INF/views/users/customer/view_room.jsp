<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@ taglib prefix="mt" tagdir="/WEB-INF/tags" %>
<%@ taglib prefix="s" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<style>
body,
html {
   height: 100vh;
   margin: 0;
}
* {
   box-sizing: border-box;
}
.backgroundImage {
   background-image: url("${pageContext.request.contextPath }/webapp/static/user/images/background-image.png");
   filter: blur(10px);
   height: 200%;
   background-position: center;
   background-repeat: no-repeat;
   background-size: cover;
}
.transparentText {
   background-color: rgba(0, 0, 0, 0.4);
   color: white;
   border: 3px solid #f1f1f1;
   position: absolute;
   top: 10%;
   width: 100%;
   padding: 20px;
}










.section {
    position: relative;
    height: 100vh
}

.section .section-center {
    position: absolute;
    top: 50%;
    left: 0;
    right: 0;
    -webkit-transform: translateY(-50%);
    transform: translateY(-50%)
}

#booking {
    font-family: 'Raleway', sans-serif
}

.booking-form {
    position: relative;
    max-width: 642px;
    width: 100%;
    margin: auto;
    padding: 40px;
    overflow: hidden;
    background-image: url('${pageContext.request.contextPath }/webapp/static/user/images/background-form.png');
    background-size: cover;
    border-radius: 5px;
    z-index: 20
}

.booking-form::before {
    content: '';
    position: absolute;
    left: 0;
    right: 0;
    bottom: 0;
    top: 0;
    background: rgba(0, 0, 0, 0.7);
    z-index: -1
}

.booking-form .form-header {
    text-align: center;
    position: relative;
    margin-bottom: 30px
}

.booking-form .form-header h1 {
    font-weight: 700;
    text-transform: capitalize;
    font-size: 42px;
    margin: 0px;
    color: #fff
}

.booking-form .form-group {
    position: relative;
    margin-bottom: 30px
}

.booking-form .form-control {
    background-color: rgba(255, 255, 255, 0.2);
    height: 60px;
    padding: 0px 25px;
    border: none;
    border-radius: 40px;
    color: #fff;
    -webkit-box-shadow: 0px 0px 0px 2px transparent;
    box-shadow: 0px 0px 0px 2px transparent;
    -webkit-transition: 0.2s;
    transition: 0.2s
}

.booking-form .form-control::-webkit-input-placeholder {
    color: rgba(255, 255, 255, 0.5)
}

.booking-form .form-control:-ms-input-placeholder {
    color: rgba(255, 255, 255, 0.5)
}

.booking-form .form-control::placeholder {
    color: rgba(255, 255, 255, 0.5)
}

.booking-form .form-control:focus {
    -webkit-box-shadow: 0px 0px 0px 2px #ff8846;
    box-shadow: 0px 0px 0px 2px #ff8846
}

.booking-form input[type="date"].form-control {
    padding-top: 16px
}

.booking-form input[type="date"].form-control:invalid {
    color: rgba(255, 255, 255, 0.5)
}

.booking-form input[type="date"].form-control+.form-label {
    opacity: 1;
    top: 10px
}

.booking-form select.form-control {
    -webkit-appearance: none;
    -moz-appearance: none;
    appearance: none
}

.booking-form select.form-control:invalid {
    color: rgba(255, 255, 255, 0.5)
}

.booking-form select.form-control+.select-arrow {
    position: absolute;
    right: 15px;
    top: 50%;
    -webkit-transform: translateY(-50%);
    transform: translateY(-50%);
    width: 32px;
    line-height: 32px;
    height: 32px;
    text-align: center;
    pointer-events: none;
    color: rgba(255, 255, 255, 0.5);
    font-size: 14px
}

.booking-form select.form-control+.select-arrow:after {
    content: '\279C';
    display: block;
    -webkit-transform: rotate(90deg);
    transform: rotate(90deg)
}

.booking-form select.form-control option {
    color: #000
}

.booking-form .form-label {
    position: absolute;
    top: -10px;
    left: 25px;
    opacity: 0;
    color: #87CEFA;
    font-size: 11px;
    font-weight: 700;
    text-transform: uppercase;
    letter-spacing: 1.3px;
    height: 15px;
    line-height: 15px;
    -webkit-transition: 0.2s all;
    transition: 0.2s all
}

.booking-form .form-group.input-not-empty .form-control {
    padding-top: 16px
}

.booking-form .form-group.input-not-empty .form-label {
    opacity: 1;
    top: 10px
}

.booking-form .submit-btn {
    color: #fff;
    background-color: #e35e0a;
    font-weight: 700;
    height: 60px;
    padding: 10px 30px;
    width: 100%;
    border-radius: 40px;
    border: none;
    text-transform: uppercase;
    font-size: 16px;
    letter-spacing: 1.3px;
    -webkit-transition: 0.2s all;
    transition: 0.2s all
}

.booking-form .submit-btn:hover,
.booking-form .submit-btn:focus {
    opacity: 0.9
}
</style>
<mt:layout_user2 title="Room edit">
	<jsp:attribute name="content">
	  

<div class="backgroundImage"></div>
<div class="transparentText">

<form method="post" action="${posturl }">
	<!-- Page Content -->
<div class="container">

    <!-- Portfolio Item Heading -->
    <h2 style="color: #87CEFA" class="color-22 playfair">${roomlist.account.name }
      <small style="color: white;">Hotel</small>
    </h2>

  		<input type="hidden" name="upload" value="1"/>
		<input type="hidden" name="return" value="${returnurl }"/>
		<input type="hidden" name="cmd" value="_cart"/>
		<input type="hidden" name="business" value="${business }"/>
    <!-- Portfolio Item Row -->
    <div class="row">
      <div class="col-md-8">
        <img width="750" height="500" class="img-fluid rounded" src="${pageContext.request.contextPath }/webapp/assets/uploadRoom/${roomlist.imgRoom}" alt="">
        
        <a href="#">
              <img width="200"  class="img-fluid rounded" src="${pageContext.request.contextPath }/webapp/assets/uploadRoom/${roomlist.extraImg1}" alt="">
            </a>
         <a href="#">
              <img width="200"  class="img-fluid rounded" src="${pageContext.request.contextPath }/webapp/assets/uploadRoom/${roomlist.extraImg2}" alt="">
            </a>
            <a href="#">
              <img width="200"  class="img-fluid rounded" src="${pageContext.request.contextPath }/webapp/assets/uploadRoom/${roomlist.extraImg3}" alt="">
            </a>
      
      </div>
  
      <div class="col-md-4">
        <h3 style="color: #87CEFA" class="color-22 playfair">${roomlist.roomCategory } ROOM</h3>
        <h6 class="my-3">${roomlist.guestAdult } Adult ${roomlist.guestChildren } Children</h6>
        <h5 style="color: #87CEFA" class="my-3">Room highlights :</h5>
        <ul>
        <c:forEach var="highlight" items="${highlights }">
        <li style="color: #87CEFA" class="fa fa-check-circle"><label style="color: white;"> ${highlight }</label></li>
        </c:forEach>
        </ul>
        <c:if test="${roomlist.salePrice > 0 }">
        <input style="color: black;" type="submit" class="btn " value="Sale ${roomlist.salePrice }%">
        </c:if> 
            <div class="panel panel-info">
                <div class="panel-body text-center">
                    <p class="lead">
                        <h3 style="color: #87CEFA"><strong>$${roomlist.total } / Per night</strong></h3></p>
                </div>
                <ul class="list-group list-group-flush text-center">
                    <li style="color: black;" class="list-group-item"><i style="color: #87CEFA" class="fa fa-calendar"></i> ${roomlist.checkIn }</li>
                    <li style="color: black;" class="list-group-item"><i style="color: #87CEFA" class="fa fa-calendar"></i> ${roomlist.checkOut }</li>
                    <li style="color: black;" class="list-group-item"><i style="color: #87CEFA" class="fa fa-clock-o"></i> 24/7 support</li>
                    
                </ul>
                <div class="panel-footer">
                	<c:forEach var="room" items="${roomlistPaypal }" varStatus="i">   
                		<input type="hidden" name="item_number_${i.index + 1 }" value="${room.idRoom }">
						<input type="hidden" name="item_name_${i.index + 1 }" value="${room.roomCategory }">
						<input type="hidden" name="amount_${i.index + 1 }" value="${roomlist.total }">
						<input type="hidden" name="quantity_${i.index + 1 }" value="1">
                	</c:forEach>
                	<c:if test=""></c:if>
                	<span>&nbsp;</span>
                	<button style="color: black;" type="button" class="first btn btn-lg btn-block btn-info" >Cash</button>
                    <input id="submit" name="submit" style="color: black;" type="submit" value="Quick Book(Paypal) ! - Non-refundable" class="btn btn-lg btn-block btn-info" >
                </div>
            </div>
         
        </div>
      
  
    </div>
    

  
    </div>
    <!-- /.row -->
 </form> 
	  <s:form method="post" modelAttribute="reservation" action="${pageContext.request.contextPath }/customer/book-room-cash">
	     
    <section class="second">
			
	<div id="booking" class="section">
    <div class="section-center">
        <div class="container">
            <div class="row">
                <div class="booking-form">
                    <div class="form-header">
                        <h1 style="color: #87CEFA">Make your reservation</h1>
                    </div>
                    
                    	<s:input type="hidden" path="infoRoom.idRoom" value="${roomlist.idRoom }"/>
                    	<s:input type="hidden" path="customerId" value="${account.idAcc }"/>
                        <div class="form-group"> <s:input path="name" value="${account.name }" class="form-control" type="text" placeholder="Your Name..."/> <span class="form-label">Destination</span> </div>
                        <div class="row">
                            <div class="form-group col-md-6">
                                <label style="color: #87CEFA" for="booking-checkin">CHECK IN Date</label><s:input value="${checkIn }" path="checkIn"
									type="text" id="booking-checkin" name="checkIn" placeholder="YY/MM/DD"
									readonly="true"/>
                            </div>
                            <div class="col-md-6">
                                <label style="color: #87CEFA" for="booking-checkout">CHECK OUT Date</label><s:input path="checkOut"
									type="text" id="booking-checkout" name="checkOut" placeholder="YY/MM/DD"
									readonly="true"/>
                            </div>
                        </div>
                        
                        <div class="row">
                            <div class="col-md-6">
                                <div class="form-group"> <s:input path="email" value="${account.email }" class="form-control" type="email" placeholder="Enter your Email"/> <span class="form-label">Email</span> </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-group"> <s:input path="phone" value="${account.phone }" class="form-control" type="tel" placeholder="Enter you Phone"/> <span class="form-label">Phone</span> </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-6">
                                <div class="form-group"> <input name="adult" value="1" class="form-control" type="number" placeholder="Number of Adult"/> <span class="form-label">Adult</span> </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-group"> <input name="children" value="1" class="form-control" type="number" placeholder="Number of Children"/> <span class="form-label">Children</span> </div>
                            </div>
                        </div>
                        
                        <div style="margin-left: 190px" class="row ">
                            <div class="col-md-6">
                            	<span>&nbsp;</span>
                                <div  class="form-group"> <input style="color: #87CEFA" value="Confirm" class="form-control" type="submit" /></div>
                            </div>
                        </div>
                    
                </div>
            </div>
        </div>
    </div>
</div>
		
	</section>
	</s:form>
	
	
</div>


	</jsp:attribute>
	
</mt:layout_user2>

    <script>
        $(function(){
            $("#to").datepicker({ dateFormat: 'yy-mm-dd' });
            $("#from").datepicker({ dateFormat: 'yy-mm-dd' }).bind("change",function(){
                var minValue = $(this).val();
                minValue = $.datepicker.parseDate("yy-mm-dd", minValue);
                minValue.setDate(minValue.getDate()+1);
                $("#to").datepicker( "option", "minDate", minValue );
            })
        });
        
        
        $("button").click(function() {
            $('html,body').animate({
                scrollTop: $(".second").offset().top},
                'slow');
        });

    </script>