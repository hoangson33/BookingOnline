<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@ taglib prefix="mt" tagdir="/WEB-INF/tags" %>

<mt:layout_user title="Room List">

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
							<li><a href="#">Room</a></li>
							<li class="active">room list</li>
						</ol>
						<h2 class="text-uppercase color-ff">Room List</h2>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- =======================================         ==End Breadcrumbs section==      =======================================-->
	<!-- =======================================         ==Start featured room section==      =======================================-->
	<div class="featured-room section-padding">
		<div class="container">
			<div class="row">
				<div class="col-lg-5 order-2 order-lg-2">
					<div class="room-info">
						<span class="divider"></span><span
							class="color-1c text-uppercase tag">Relaxation</span>
						<h4 class="color-33 playfair">Luxurious Room for Family</h4>
						<p>Pellentesque nulla magna, accumsan sed ante quis, gravida
							feugiat turpis. Vivamus et fringilla ligula. Pellentesque nulla</p>
						<ul class="mb-40">
							<li>Swmming Pool</li>
							<li>Internet Wifi</li>
							<li>Air Condition</li>
							<li>Hd Tv Facilities</li>
							<li>Breakfast</li>
							<li>24 Hours parking</li>
						</ul>
						<a href="#" class="btn-default book-now">Book Now <i
							class="ion-android-arrow-dropright"></i></a>
					</div>
				</div>
				<div class="col-lg-7 order-1 order-lg-2">
					<div class="room-img">
						<img src="${pageContext.request.contextPath }/webapp/static/user/images/featured-room.jpg" alt="carousel img"
							class="img-fluid">
						<h3 class="price color-22">
							$120.00 <span>/ Per Night</span>
						</h3>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- =======================================         ==End featured room section==      =======================================-->
	<!-- =======================================         ==Start Popular room section==      =======================================-->
	<section class="hotel-room list section-padding">
		<div class="container">
			<div class="row">
				<div class="col-12">
					<div class="section-title text-center">
						<h2 class="color-1c pos-relative">Our Rooms</h2>
						<p class="color-1c text-uppercase">Available Accommodations</p>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-md-4 col-sm-6">
					<div class="single-room">
						<a href="#" class="room-img"><img src="${pageContext.request.contextPath }/webapp/static/user/images/room-img1.jpg"
							alt="room img" class="img-fluid"></a>
						<h5 class="mb-15 playfair">
							<a href="#">Residential</a>
						</h5>
						<p>Pellentesque nulla magna, accumsan sed ante quis, gravida
							feugiat turpis. Vivamus et fringilla ligula.</p>
						<span class="divider"></span>
						<h4 class="price color-66 mb-15">
							$80.00 <span>/ Per Night</span>
						</h4>
						<a href="#" class="btn-default read-more solid-bg-btn"><span>Book
								Now <i class="ion-android-arrow-dropright"></i>
						</span></a>
					</div>
				</div>
				<!--room-2-->
				<div class="col-md-4 col-sm-6">
					<div class="single-room">
						<a href="#" class="room-img"><img src="${pageContext.request.contextPath }/webapp/static/user/images/room-img2.jpg"
							alt="room img" class="img-fluid"></a>
						<h5 class="mb-15 playfair">
							<a href="#">Luxurious</a>
						</h5>
						<p>Pellentesque nulla magna, accumsan sed ante quis, gravida
							feugiat turpis. Vivamus et fringilla ligula.</p>
						<span class="divider"></span>
						<h4 class="price color-66 mb-15">
							$120.00 <span>/ Per Night</span>
						</h4>
						<a href="#" class="btn-default read-more solid-bg-btn"><span>Book
								Now <i class="ion-android-arrow-dropright"></i>
						</span></a>
					</div>
				</div>
				<!--room-3-->
				<div class="col-md-4 col-sm-6">
					<div class="single-room">
						<a href="#" class="room-img"><img src="${pageContext.request.contextPath }/webapp/static/user/images/room-img3.jpg"
							alt="room img" class="img-fluid"></a>
						<h5 class="mb-15 playfair">
							<a href="#">Delux</a>
						</h5>
						<p>Pellentesque nulla magna, accumsan sed ante quis, gravida
							feugiat turpis. Vivamus et fringilla ligula.</p>
						<span class="divider"></span>
						<h4 class="price color-66 mb-15">
							$360.00 <span>/ Per Night</span>
						</h4>
						<a href="#" class="btn-default read-more solid-bg-btn"><span>Book
								Now <i class="ion-android-arrow-dropright"></i>
						</span></a>
					</div>
				</div>
				<!--room-4-->
				<div class="col-md-4 col-sm-6">
					<div class="single-room">
						<a href="#" class="room-img"><img src="${pageContext.request.contextPath }/webapp/static/user/images/room-img4.jpg"
							alt="room img" class="img-fluid"></a>
						<h5 class="mb-15 playfair">
							<a href="#">Family Room</a>
						</h5>
						<p>Pellentesque nulla magna, accumsan sed ante quis, gravida
							feugiat turpis. Vivamus et fringilla ligula.</p>
						<span class="divider"></span>
						<h4 class="price color-66 mb-15">
							$160.00 <span>/ Per Night</span>
						</h4>
						<a href="#" class="btn-default read-more solid-bg-btn"><span>Book
								Now <i class="ion-android-arrow-dropright"></i>
						</span></a>
					</div>
				</div>
				<!--room-5-->
				<div class="col-md-4 col-sm-6">
					<div class="single-room">
						<a href="#" class="room-img"><img src="${pageContext.request.contextPath }/webapp/static/user/images/room-img5.jpg"
							alt="room img" class="img-fluid"></a>
						<h5 class="mb-15 playfair">
							<a href="#">Double Bed Room</a>
						</h5>
						<p>Pellentesque nulla magna, accumsan sed ante quis, gravida
							feugiat turpis. Vivamus et fringilla ligula.</p>
						<span class="divider"></span>
						<h4 class="price color-66 mb-15">
							$250.00 <span>/ Per Night</span>
						</h4>
						<a href="#" class="btn-default read-more solid-bg-btn"><span>Book
								Now <i class="ion-android-arrow-dropright"></i>
						</span></a>
					</div>
				</div>
				<!--room-6-->
				<div class="col-md-4 col-sm-6">
					<div class="single-room">
						<a href="#" class="room-img"><img src="${pageContext.request.contextPath }/webapp/static/user/images/room-img6.jpg"
							alt="room img" class="img-fluid"></a>
						<h5 class="mb-15 playfair">
							<a href="#">Single Bed Room</a>
						</h5>
						<p>Pellentesque nulla magna, accumsan sed ante quis, gravida
							feugiat turpis. Vivamus et fringilla ligula.</p>
						<span class="divider"></span>
						<h4 class="price color-66 mb-15">
							$145.00 <span>/ Per Night</span>
						</h4>
						<a href="#" class="btn-default read-more solid-bg-btn"><span>Book
								Now <i class="ion-android-arrow-dropright"></i>
						</span></a>
					</div>
				</div>
				<!--room-7-->
				<div class="col-md-4 col-sm-6">
					<div class="single-room">
						<a href="#" class="room-img"><img src="${pageContext.request.contextPath }/webapp/static/user/images/room-img7.jpg"
							alt="room img" class="img-fluid"></a>
						<h5 class="mb-15 playfair">
							<a href="#">Twinn Bed Room</a>
						</h5>
						<p>Pellentesque nulla magna, accumsan sed ante quis, gravida
							feugiat turpis. Vivamus et fringilla ligula.</p>
						<span class="divider"></span>
						<h4 class="price color-66 mb-15">
							$130.00 <span>/ Per Night</span>
						</h4>
						<a href="#" class="btn-default read-more solid-bg-btn"><span>Book
								Now <i class="ion-android-arrow-dropright"></i>
						</span></a>
					</div>
				</div>
				<!--room-8-->
				<div class="col-md-4 col-sm-6">
					<div class="single-room">
						<a href="#" class="room-img"><img src="${pageContext.request.contextPath }/webapp/static/user/images/room-img8.jpg"
							alt="room img" class="img-fluid"></a>
						<h5 class="mb-15 playfair">
							<a href="#">Double Delux</a>
						</h5>
						<p>Pellentesque nulla magna, accumsan sed ante quis, gravida
							feugiat turpis. Vivamus et fringilla ligula.</p>
						<span class="divider"></span>
						<h4 class="price color-66 mb-15">
							$190.00 <span>/ Per Night</span>
						</h4>
						<a href="#" class="btn-default read-more solid-bg-btn"><span>Book
								Now <i class="ion-android-arrow-dropright"></i>
						</span></a>
					</div>
				</div>
				<!--room-9-->
				<div class="col-md-4 col-sm-6">
					<div class="single-room">
						<a href="#" class="room-img"><img src="${pageContext.request.contextPath }/webapp/static/user/images/room-img9.jpg"
							alt="room img" class="img-fluid"></a>
						<h5 class="mb-15 playfair">
							<a href="#">Single Delux</a>
						</h5>
						<p>Pellentesque nulla magna, accumsan sed ante quis, gravida
							feugiat turpis. Vivamus et fringilla ligula.</p>
						<span class="divider"></span>
						<h4 class="price color-66 mb-15">
							$125.00 <span>/ Per Night</span>
						</h4>
						<a href="#" class="btn-default read-more solid-bg-btn"><span>Book
								Now <i class="ion-android-arrow-dropright"></i>
						</span></a>
					</div>
				</div>
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