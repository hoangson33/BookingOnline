<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@ taglib prefix="mt" tagdir="/WEB-INF/tags" %>
<%@ taglib prefix="s" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<style>




.noselect {
  -webkit-touch-callout: none;
    -webkit-user-select: none;
     -khtml-user-select: none;
       -moz-user-select: none;
        -ms-user-select: none;
            user-select: none;
		-webkit-tap-highlight-color: transparent;
}

button {
	width: 150px;
	height: 50px;
	cursor: pointer;
	font-size: 20px;
	font-family: 'Staatliches', cursive;
	letter-spacing: 5px;
	background: #5d9cec;
	border: 2px solid black;
	box-shadow: 0px 0px 0px rgba(0,0,0,0.4);
	transition: 500ms;
}

button:after {
	content: '';
	position: absolute;
	transform: translateX(-55px) translateY(-40px);
	width: 25px;
	height: 25px;
	border-radius: 50%;
	background: transparent;
	box-shadow: 0px 0px 50px transparent;
	transition: 500ms;
}

button:hover {
	transform: translateY(-5px);
	box-shadow: 0px 10px 10px rgba(0,0,0,0.4);
}

button:hover:after {
	background: white;
	box-shadow: 0px 0px 20px #5d9cec, 0px 0px 30px #5d9cec, inset 0px 0px 10px #5d9cec;
	animation: spin 1s infinite linear;
}

@keyframes spin{
	25%{transform: translateX(-25px) translateY(-35px);
			width: 15px;
			height: 15px;}
	50% {transform: translateX(-55px) translateY(-30px);
			width: 5px;
			height: 5px;}
	75% {transform: translateX(-85px) translateY(-35px);
			width: 15px;
			height: 15px;}
}

button:focus {
	outline: none;
}
</style>

<mt:layout_user title="Room edit">
	<jsp:attribute name="content">
	
<s:form method="post" modelAttribute="roomlist" enctype="multipart/form-data"
			action="${pageContext.request.contextPath }/enterprise/view-room">   
      <!-- =======================================         ==End Header section==      =======================================-->
	<!-- =======================================         ==Start Breadcrumbs section==      =======================================-->
	<section class="hotel-breadcrumbs pos-relative">
		<div class="overlay"></div>
		<div class="container">
			<div class="row">
				<div class="col-12">
					<div class="breadcrumbs-content align-row-spacebetween">
						<ol class="breadcrumb">
							<li><a href="#">Home</a></li>
							<li><a href="#">Room List</a></li>
							<li class="active">Single room</li>
						</ol>
						<h2 class="text-uppercase color-ff">Single Room</h2>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- =======================================         ==End Breadcrumbs section==      =======================================-->
<section class="room-facilities single section-padding">
	<!-- Page Content -->
<div class="container">

    <!-- Portfolio Item Heading -->
    <h2 class="color-22 playfair"><mark>${roomlist.account.name }</mark>
      <small>Hotel</small>
    </h2>
  
    <!-- Portfolio Item Row -->
    <div class="row">
  
      <div class="col-md-8">
        <img width="750" height="500" class="img-fluid" src="${pageContext.request.contextPath }/webapp/assets/uploadRoom/${roomlist.extraImg2}" alt="">
      </div>
  
      <div class="col-md-4">
        <h3 class="color-22 playfair">${roomlist.roomCategory } ROOM</h3>
        <h6 class="my-3">${roomlist.guestAdult } Adult ${roomlist.guestChildren } Children</h6>
        <h5 class="my-3">Description :</h5>
        <p>${roomlist.description }</p>
        <button class="noselect">$ ${roomlist.price }</button>
        <span class="divider"></span>
        <input type="submit" class="btn" value="Quick Book ! - non-refundable ">
      </div>
  
    </div>
    <!-- Related Projects Row -->
    <h3 class="color-22 playfair">Hotel Views</h3>
  
    <div class="row">
  
      <div class="col-md-3 col-sm-6 mb-4">
        <a href="#">
              <img class="img-fluid" src="${pageContext.request.contextPath }/webapp/assets/uploadRoom/${roomlist.extraImg1}" alt="">
            </a>
      </div>
  
      <div class="col-md-3 col-sm-6 mb-4">
        <a href="#">
              <img class="img-fluid" src="${pageContext.request.contextPath }/webapp/assets/uploadRoom/${roomlist.extraImg3}" alt="">
            </a>
      </div>
  
      <div class="col-md-3 col-sm-6 mb-4">
        <a href="#">
              <img class="img-fluid" src="${pageContext.request.contextPath }/webapp/assets/uploadRoom/${roomlist.imgRoom}" alt="">
            </a>
      </div>
  

  
    </div>
    <!-- /.row -->
    <section class="room-facilities single section-padding">
		<div class="container">
			<div class="row">
				<div class="col-12">
					<div class="section-title text-center">
						<h2 class="color-1c pos-relative">Delux Room Facilities</h2>
						<p class="color-1c text-uppercase">Laxury Trip will Give Best
							Service</p>
					</div>
				</div>
			</div>
			<div class="row ">
			<c:forEach var="highlight" items="${highlights }">
				<div class="col-12">
				
					<ul class="facilities-list clearfix  ">
						<li>${highlight }</li>
						<li></li>
						<li></li>
						<li></li>
					</ul>
				
				</div>
				</c:forEach>
			</div>
		</div>
	</section>
  
  
  </div>
  <!-- /.container -->
	<!-- =======================================         ==Start footer section==      =======================================-->
</section>	
	</s:form>
	
	</jsp:attribute>
	
</mt:layout_user>
		<script type="text/javascript">

		function showMainImg(input) {
	        if (input.files && input.files[0]) {
	            var filerdr = new FileReader();
	            filerdr.onload = function (e) {
	                $('#mainImg').attr('src', e.target.result).width(700).height(700);
	            }
	            filerdr.readAsDataURL(input.files[0]);
	        }
	    }
	
	
	 function showExtraImg1(input) {
	        if (input.files && input.files[0]) {
	            var filerdr = new FileReader();
	            filerdr.onload = function (e) {
	                $('#previewExtraImg1').attr('src', e.target.result);
	            }
	            filerdr.readAsDataURL(input.files[0]);
	        }
	    }
	 
	 function showExtraImg2(input) {
	        if (input.files && input.files[0]) {
	            var filerdr = new FileReader();
	            filerdr.onload = function (e) {
	                $('#previewExtraImg2').attr('src', e.target.result);
	            }
	            filerdr.readAsDataURL(input.files[0]);
	        }
	    }
	 
	 
	 function showExtraImg3(input) {
	        if (input.files && input.files[0]) {
	            var filerdr = new FileReader();
	            filerdr.onload = function (e) {
	                $('#previewExtraImg3').attr('src', e.target.result);
	            }
	            filerdr.readAsDataURL(input.files[0]);
	        }
	    }
</script>
