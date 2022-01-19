<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@ taglib prefix="mt" tagdir="/WEB-INF/tags" %>
<%@ taglib prefix="s" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<mt:layout_user title="Room list">
	<jsp:attribute name="content">
	
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
							<li class="active">Room list</li>
						</ol>
						<h2 class="text-uppercase color-ff">Room List</h2>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- =======================================         ==End Breadcrumbs section==      =======================================-->

<!-- =======================================         ==Start hotel view section==      =======================================-->
	<section class="hotel-view section-padding">
		<div class="container">
			<div class="row">
				<div class="col-md-6">
					<div class="content align-center-center text-center">
						<span class="color-44 text-uppercase display-block mb-25">${nameHotel }
							Hotel </span>
						<h2 class="color-1c playfair mb-30">Our Hotel View</h2>
						<p>Etiam neque libero, tincidunt non magna at, varius pretium
							elit. Nulla dui ante, gravida et luctus nec, venenatis et tellus.
							Suspendisse a turpis ut urna bibendum mollis vitae sit amet
							metus. Nam cursus dolor a viverra condimentum. Nunc fermentum
							elit sit amet est dictum eleifend. Nunc in massa et tellus
							consectetur molestie.</p>
					</div>
				</div>
				<div class="col-md-6">
					<div class="img-area">
						<img src="${pageContext.request.contextPath }/webapp/static/user/images/hotel-view-img1.jpg" alt="hotel view"
							class="img-fluid">
					</div>
				</div>
				<div class="col-md-6">
					<div class="img-area">
						<img src="${pageContext.request.contextPath }/webapp/static/user/images/hotel-view-img2.jpg" alt="hotel view"
							class="img-fluid">
					</div>
				</div>
				<div class="col-md-6">
					<div class="img-area">
						<img src="${pageContext.request.contextPath }/webapp/static/user/images/hotel-view-img3.jpg" alt="hotel view"
							class="img-fluid">
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- =======================================         ==End hotel view section==      =======================================-->
	<!-- =======================================         ==Start Popular room section==      =======================================-->
	<section class="hotel-room list section-padding">
		<div class="container">
			<div class="row">
				<div class="col-12">
					<div class="section-title text-center">
						<h2 class="color-1c pos-relative">Your Rooms</h2>
						<p class="color-1c text-uppercase">Available Accommodations</p>
					</div>
				</div>
			</div>
			<div class="row">
				<c:forEach var="roomlist" items="${roomlists }">
					<div class="col-md-4 col-sm-6">
						<div class="single-room">
							<a href="#" class="room-img"><img src="${pageContext.request.contextPath }/webapp/assets/uploadRoom/${roomlist.imgRoom}"
								alt="room img" class="img-fluid" height="1000"></a>
							<h5 class="mb-15 playfair">
								<a href="#">${roomlist.roomCategory }</a>
							</h5>
							<p>${roomlist.guestAdult } Adult ${roomlist.guestChildren } Children</p>
							<span class="divider"></span>
							<h4 class="price color-66 mb-15">
								$${roomlist.total } <span>/ Per Night</span>
							</h4>
							<a  href="${pageContext.request.contextPath }/enterprise/view-room/${roomlist.idRoom}" class="btn-default read-more solid-bg-btn">
							<span>Details <i class="ion-android-arrow-dropright"></i>
							</span></a>
							

						</div>
					</div>
				</c:forEach>
				
				
			</div>
		</div>
	</section>
	
	<!-- =======================================         ==End Popular room section==      =======================================-->



	<!-- =======================================         ==Start facilities action section==      =======================================-->
	<section class="room-facilities section-padding">
		<div class="container">
			<div class="row">
				<div class="col-12">
					<div class="section-title text-center">
						<h2 class="color-1c pos-relative">Our Room Facilities</h2>
						<p class="color-1c text-uppercase">Laxury Trip will Give Best
							Service</p>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-12">
					<ul class="facilities-list clearfix">
						<li>Lawn</li>
						<li>Microwave</li>
						<li>Outdoor Shower</li>
						<li>Refrigerator</li>
						<li>Air Conditioning</li>
						<li>Barbeque</li>
						<li>Dryer</li>
						<li>Gym</li>
						<li>Swimming Pool</li>
						<li>TV Cable</li>
						<li>Washer</li>
						<li>WiFi</li>
						<li>Sauna</li>
						<li>Laundry</li>
						<li>Window Coverings</li>
						<li>Sauna</li>
					</ul>
				</div>
			</div>
		</div>
	</section>
	<!-- =======================================         ==End facilities section==      =======================================-->
	<!-- =======================================         ==Start footer section==      =======================================-->
	
	
	
	
	</jsp:attribute>
	
</mt:layout_user>

      

      
	
