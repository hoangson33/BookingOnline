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
   height: 150%;
   background-position: center;
   background-repeat: no-repeat;
   background-size: cover;
}
.transparentText {
   background-color: rgba(0, 0, 0, 0.4);
   color: ;
   border: 3px solid #f1f1f1;
   position: absolute;
   top: 40%;
   width: 100%;
   padding: 20px;
}





*,
*:after,
*:before {
  box-sizing: border-box;
}

ul {
  padding-left: 10px;
}



a {
  color: #000;
}

.content {
  z-index: 9999;
}

.secure,
.backBtn {
  display: flex;
}
.secure span,
.backBtn span {
  margin-left: 5px;
}

.backBtn {
  margin-top: 20px;
}

.secure {
  color: #afb5c0;
  align-items: flex-end;
}
.secure .icon {
  font-size: 20px;
  line-height: 20px;
}

.logo {
  font-size: 20px;
  font-weight: bold;
  display: flex;
  justify-content: center;
  align-items: flex-end;
}
.logo .icon {
  font-size: 32px;
  line-height: 32px;
  margin-right: 5px;
}

img {
  width: 100%;
  border-radius: 8px 0 0 8px;
}

.details {
  max-width: 800px;
  min-height: 300px;
  margin-left: auto;
  margin-right: auto;
  margin-top: -200px;
  background: #fff;
  border-radius: 8px;
  display: flex;
  flex-direction: column;
  position: relative;
}
.details__item {
  display: flex;
}
.details__user {
  background: #f6f9fc;
  padding: 20px;
  border-radius: 8px;
  border: 1px solid #dadada;
}

.item__quantity {
  position: absolute;
  right: 50px;
  top: 30px;
  font-size: 20px;
}
.item__image {
  display: flex;
  align-items: center;
  justify-content: center;
}
.item__image .iphone {
  margin-top: -50px;
  margin-left: -100px;
  width: 200px;
}
.item__details {
  padding: 30px;
}
.item__title {
  font-size: 28px;
  font-weight: 600;
}
.item__price {
  font-size: 22px;
  color: #bec3cb;
}

.icon {
  font-size: 16px;
  vertical-align: middle;
}



.navigation {
  display: flex;
  align-items: center;
  justify-content: space-between;
  padding: 50px 0 80px 0;
  color: #246eea;
  font-size: 14px;
  text-transform: uppercase;
  letter-spacing: 1px;
  font-weight: 700;
}

.container {
  width: 960px;
  margin: 0 auto;
}

.shadow {
  box-shadow: 0 15px 35px rgba(50, 50, 93, 0.1), 0 5px 15px rgba(0, 0, 0, 0.07);
}

.row {
  display: flex;
}

.txt {
  border-color: #e1e8ee;
  width: 100%;
}

.input {
  border-radius: 5px;
  border-style: solid;
  border-width: 2px;
  height: 48px;
  padding-left: 15px;
  font-weight: 600;
  font-size: 14px;
  color: #5e6977;
}

input[type="text"] {
  display: initial;
  padding: 15px;
}

.text-validated {
  border-color: #7dc855;
  background-image: url("../images/icon-tick.png");
  background-repeat: no-repeat;
  background-position: right 18px center;
}

.ddl {
  border-color: #f0f4f7;
  background-color: #f0f4f7;
  width: 100px;
  margin-right: 10px;
}

.title {
  font-size: 14px;
  padding-bottom: 8px;
}

.field {
  padding-top: 15px;
  padding-right: 30px;
  width: 50%;
}
.field.small {
  width: auto;
}

.notification {
  text-align: center;
  font-size: 28px;
  font-weight: 600;
  display: flex;
  justify-content: center;
}
.notification .icon {
  font-size: 28px;
  color: #7dc855;
  line-height: 28px;
  margin-right: 10px;
}

.actions {
  display: flex;
  align-items: center;
  justify-content: center;
  flex-direction: column;
  padding: 60px 0 40px 0;
}

.payment {
  padding: 20px 0 0 0;
}
.payment__title {
  margin: 40px 0 20px 0;
  font-size: 18px;
  display: flex;
  text-align: left;
}
.payment__title .icon {
  margin-right: 10px;
}

.btn {
  font-family: "Josefin Sans", sans-serif;
  border-radius: 8px;
  border: 0;
  letter-spacing: 1px;
  color: #fff;
  background: #246eea;
  padding: 20px 60px;
  white-space: nowrap;
  font-size: 16px;
  line-height: 1;
  text-transform: uppercase;
  transition: all 0.15s ease;
  text-decoration: none;
}
.btn .icon {
  margin-left: 10px;
  font-size: 20px;
}
.btn:hover {
  -webkit-transform: translateY(-1px);
          transform: translateY(-1px);
  background: #4984ea;
}
.btn.action__back {
  background: transparent;
  color: #a0a0a0;
}

.payment__types {
  display: flex;
  justify-content: center;
  align-items: center;
}

.payment__info {
  display: flex;
}

.payment__cc {
  flex: 60%;
}

.payment__shipping {
  flex: 40%;
}

.shipping__info {
  background: #f6f9fc;
  padding: 10px;
  border-radius: 8px;
}

.payment__type {
  display: flex;
  border: 2px solid #d9d9d9;
  border-radius: 8px;
  padding: 20px 40px;
  width: 100%;
  justify-content: center;
  align-items: center;
  cursor: pointer;
  color: #d9d9d9;
  transition: all 0.15s ease;
}
.payment__type:hover {
  -webkit-transform: translateY(-1px);
          transform: translateY(-1px);
}
.payment__type.active {
  color: #0a0a0a;
  background: #f6fcf7;
  border-color: #7dc855;
}
.payment__type .icon {
  font-size: 32px;
  margin-right: 10px;
}
.payment__type + .payment__type {
  margin-left: 10px;
}

.icon-xl {
  font-size: 48px;
  line-height: 48px;
}

.content {
  display: block;
}

.thankyou {
  display: block;
}
.thankyou .details {
  opacity: 1;
  justify-content: center;
  align-items: center;
}
.thankyou .details h3 {
  font-weight: 600;
}
.thankyou .details__item {
  display: flex;
  flex-direction: column;
  justify-content: center;
  align-items: center;
}
.thankyou .details__item .icon-xl {
  font-size: 32px;
  color: #7dc855;
  line-height: 32px;
}

.loading {
  position: relative;
}
.loading:after {
  -webkit-animation: spinAround .5s infinite linear;
          animation: spinAround .5s infinite linear;
  border: 4px solid #7dc855;
  border-radius: 290486px;
  border-right-color: transparent;
  border-top-color: transparent;
  content: "";
  height: 5em;
  width: 5em;
  position: absolute;
}











</style>
<mt:layout_user2 title="Room edit">
	<jsp:attribute name="content">
	
	<s:form method="post" modelAttribute="reservation" action="${pageContext.request.contextPath }/customer/add-reservation">
	  

<div class="backgroundImage"></div>
<div class="transparentText">
  <section class="content">
    <div class="details shadow">
      <div class="details__item">

        <div class="img-area">
          <img width="379" height="348"  class="iphone" src="${pageContext.request.contextPath }/webapp/assets/uploadRoom/${infoRoom.imgRoom}" alt="">
        </div>
        <div class="item__details">
          <div style="color: #87CEFA" class="color-22 playfair item__title">
            ${infoRoom.roomCategory } Room
          </div>
          <div class="item__price">
            <i style="color: #87CEFA" class="fa fa-usd">${infoRoom.total }</i> /Per night
          </div>
          
          <div class="item__description">
            <ul style="">
            	<li ><i style="color: #87CEFA" class="fa fa-sort-amount-asc"></i> ${infoRoom.guestAdult } Adult ${infoRoom.guestChildren } Children</li>
              <li ><i style="color: #87CEFA" class="fa fa-map-marker"></i> ${infoRoom.account.locationDetail }</li>
              <li><i style="color: #87CEFA" class="fa fa-clock-o"> </i> 24/7 support</li>
              <li><i style="color: #87CEFA" class="fa fa-plane"></i> Shuttle service from the airport</li>
              <li><i style="color: #87CEFA" class="fa fa-plus"></i> Total days you stay at the hotel are<b style="color: #87CEFA"> ${totalNight } nights</b> </li>
              <li>Subtotal : <i style="color: #87CEFA" class="fa fa-usd"></i> <b style="color: #87CEFA"> ${infoRoom.total * totalNight }</b></li>
            </ul>

          </div>

        </div>
      </div>

    </div>

    <div class="container">
      <div class="payment">
        <div class="payment__title">
          <i style="color: #87CEFA">Payment Method</i>
        </div>
        <div class="payment__types text-center">
          <div class="payment__type payment__type--cc active">
            <i class="icon icon-credit-card"></i>Cash</div>
          <div class="payment__type payment__type--paypal">
            <i class="icon icon-paypal"></i>Paypal</div>
        </div>

        <div class="payment__info">
          <div class="payment__cc">
            <div class="payment__title">
              <i style="color: #87CEFA" class="icon icon-user">Personal Information</i>
            </div>
            <form>
              <div class="form__cc">
                <div class="row ">
                  <div class="img-area col-mg-3">
          			<img class="rounded" width="379" height="348" class="iphone" src="${pageContext.request.contextPath }/webapp/assets/uploadRoom/${infoRoom.extraImg1}" alt="">
       			  </div>
                </div>
                

             </div>
            </form>
          </div>
          <div class="payment__shipping">
            <div class="payment__title">
              <i style="color: #87CEFA" class="icon icon-plane">Your Information</i> 
              <i style="color: #87CEFA; margin-left: 210px; margin-top: 10px" class="fa fa-edit"><a href="${pageContext.request.contextPath }/customer/view-room?idRoom=${idRoom}"> Edit stay</a></i>
            </div>
            <div class="details__user">
              <div class="user__name"><i style="color: #87CEFA" class="fa fa-user"></i> ${name }
                <br><i style="color: #87CEFA" class="fa fa-phone"></i> ${phone }
                <br><i style="color: #87CEFA" class="fa fa-sort-amount-asc"></i> ${adult } Adult ${children } Children</div>
              <div class="user__address"> <i style="color: #87CEFA" class="fa fa-calendar"></i> From: ${checkIn } | <i style="color: #87CEFA" class="fa fa-calendar"></i> To: ${checkOut }
                <br><i style="color: #87CEFA" class="fa fa-map-marker"></i> ${account.location }</div>
            </div>
            <div class="details__user">
              <div class="user__name"><i style="color: orange" class="fa fa-star"></i><i style="color: orange" class="fa fa-star"></i><i style="color: orange" class="fa fa-star"></i><i style="color: orange" class="fa fa-star"></i><i style="color: orange" class="fa fa-star"></i>&nbsp;&nbsp;&nbsp;${fivestar } Reviews
                <br><i style="color: orange" class="fa fa-star"></i><i style="color: orange" class="fa fa-star"></i><i style="color: orange" class="fa fa-star"></i><i style="color: orange" class="fa fa-star"></i>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;${fourstar } Reviews
                <br><i style="color: orange" class="fa fa-star"></i><i style="color: orange" class="fa fa-star"></i><i style="color: orange" class="fa fa-star"></i>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;${threestar } Reviews</div>
              <div class="user__address"><i style="color: orange" class="fa fa-star"></i><i style="color: orange" class="fa fa-star"></i>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;${twostar } Reviews
                <br><i style="color: orange" class="fa fa-star"></i>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;${onestar } Reviews</div>
            </div>
          </div>
          

			 
      
			
          </div>
        </div>
        
        <div class="actions">
		
        <s:input type="hidden" path="infoRoom.idRoom" value="${infoRoom.idRoom }"/>
        <s:input type="hidden" path="customerId" value="${account.idAcc }"/>
        <span>&nbsp;</span>
        <button  class="btn btn-success" type="submit" >
        	<span style="color: white;">Confirm</span>
          <i class="fa fa-arrow-right"></i></button>
        
          <a href="${pageContext.request.contextPath }/customer/view-room?idRoom=${idRoom}" class="backBtn">Cancel !!!</a>

      </div>
      
      </div>
        
    
   
      
  </section>

  
  </div>

</s:form>

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