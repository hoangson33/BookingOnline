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
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<mt:layout_user2 title="Room edit">
	<jsp:attribute name="content">
	  		<script>
function validateForm() {
  let name = document.forms["myForm"]["name"].value;
 
  let checkIn = document.forms["myForm"]["checkIn"].value;
  let checkOut = document.forms["myForm"]["checkOut"].value;
  let email = document.forms["myForm"]["email"].value;
  let phone = document.forms["myForm"]["phone"].value;
  let adult = document.forms["myForm"]["adult"].value;
  let children = document.forms["myForm"]["children"].value;
  if (name == "") {
	    alert("name must be filled out");
	    return false;
	  }else if (checkIn == "") {
		    alert("checkIn must be filled out");
		    return false;
		  }else if (checkOut == "") {
			    alert("checkOut must be filled out");
			    return false;
			  }else if (email == "") {
				    alert("email must be filled out");
				    return false;
				  }else if (phone == "") {
					    alert("phone must be filled out");
					    return false;
					  }else if (adult < 0) {
				    alert("adult : You cannot enter negative numbers !???");
				    return false;
				  }else if (children < 0) {
				    alert("children : You cannot enter negative numbers !???");
				    return false;
				  }

  
}
</script>

<div class="backgroundImage"></div>
<div class="transparentText">


	<!-- Page Content -->
<div class="container">

    <!-- Portfolio Item Heading -->
    <h2 style="color: #87CEFA" class="color-22 playfair">${roomlist.account.name }
      <small style="color: white;">Hotel</small>
    </h2>

  		
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
        <h6 class="my-3"><i style="color: #87CEFA" class="fa fa-map-marker"></i> ${roomlist.account.locationDetail },${roomlist.account.location }</h6>
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
                <c:if test="${account.idRole ==2 }">
                <div class="panel-footer">
                    <a href="${pageContext.request.contextPath }/registration/add" style="color: black;" type="submit" class="btn btn-lg btn-block btn-info" >Please sign in another account</a>
                </div>
                </c:if>
            </div>
         
        </div>
      
  
    </div>
    

  
    </div>
    <!-- /.row -->

	
	
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