<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@ taglib prefix="mt" tagdir="/WEB-INF/tags" %>

<mt:layout_user title="Room Details">

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
							<li class="active">Single room</li>
						</ol>
						<h2 class="text-uppercase color-ff">Single Room</h2>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- =======================================         ==End Breadcrumbs section==      =======================================-->
	<!-- =======================================         ==Start details info section==      =======================================-->
	<section class="details-info section-padding">
		<div class="container">
			<div class="row">
				<div class="col-lg-8">
					<div class="room-img">
						<img src="${pageContext.request.contextPath }/webapp/static/user/images/room-details-img1.jpg" alt="room img"
							class="img-fluid">
					</div>
				</div>
				<div class="col-lg-4">
					<div class="booking-form">
						<form action="#">
							<h4 class="color-22 text-center playfair">Reserve Your Room</h4>
							<p class="color-22 text-center">Book with Stuck Hotel</p>
							<span class="divider"></span>
							<div class="group checkin">
								<label for="booking-checkin">CHECK IN Date</label><input
									type="text" id="booking-checkin" placeholder="MM/DD/YY"
									readonly>
							</div>
							<div class="group checkout">
								<label for="booking-checkout">CHECK OUT Date</label><input
									type="text" id="booking-checkout" placeholder="MM/DD/YY"
									readonly>
							</div>
							<div class="group children">
								<label for="children">Children</label><input type="text"
									name="children" id="children" value="1" readonly><span
									class="increse"><i class="fa fa-angle-up"></i></span><span
									class="decrese"><i class="fa fa-angle-down"></i></span>
							</div>
							<div class="group adult">
								<label for="children">Adult</label><input type="text"
									name="children" id="adult" value="1" readonly><span
									class="increse"><i class="fa fa-angle-up"></i></span><span
									class="decrese"><i class="fa fa-angle-down"></i></span>
							</div>
							<button type="submit"
								class="btn-default solid-bg-btn pos-relative">
								<span>Book now</span>
							</button>
						</form>
					</div>
				</div>
				<div class="col-12">
					<div class="details-text">
						<h3 class="playfair color-33 mb-30">Delux Room</h3>
						<p>
							Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam
							congue, urna nec rhoncus consequat, elit dui ullamcorper eros, id
							mollis urna dolor at elit. Ut pulvinar eu urna et laoreet. Nullam
							arcu lorem, mollis at aliquet sed, sollicitudin eu tortor.
							Aliquam id lectus ac sapien consectetur posuere sit amet eu enim.
							Nulla id mauris mi. Nulla volutpat varius urna, eget scelerisque
							eros placerat eu. Etiam eu turpis nec neque mollis placerat id
							luctus nibh. <br />
							<br /> Lorem ipsum dolor sit amet, consectetur adipiscing elit.
							Etiam congue, urna nec rhoncus consequat, elit dui ullamcorper
							eros, id mollis urna dolor at elit. Ut pulvinar eu urna et
							laoreet. Nullam arcu lorem, mollis at aliquet sed, sollicitudin
							eu tortor. Aliquam id lectus ac sapien<br />
							<br /> Etiam neque libero, tincidunt non magna at, varius
							pretium elit. Nulla dui ante, gravida et luctus nec, venenatis et
							tellus. Suspendisse a turpis ut urna bibendum mollis vitae sit
							amet metus. Nam cursus dolor a viverra condimentum. Nunc
							fermentum elit sit amet est dictum eleifend. Nunc in massa et
							tellus consectetur molestie. Nam euismod, nunc id tincidunt
							dignissim, neque risus malesuada eros, eget dapibus elit eros id
							magna. Donec rhoncus eleifend euismod. Duis sed lorem ligula.
							Vestibulum vel auctor nisl. In hac habitasse platea dictumst.
							Donec pulvinar metus nec orci lobortis commodo.
						</p>
						<ul class="doc-info align-row-spacebetween">
							<li class="title"><h5
									class="title-20 text-uppercase color-44 fw-700">Hotel
									Details Documents</h5></li>
							<li class="file"><i class="fa fa-file-pdf-o"></i>Luxary-trip-details-docement</li>
							<li class="download-btn"><a href="#"
								class="btn-default pos-relative solid-bg-btn"><span>Download</span></a></li>
						</ul>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- =======================================         ==End details info section==      =======================================-->
	<!-- =======================================         ==Start hotel view section==      =======================================-->
	<section class="hotel-view section-padding">
		<div class="container">
			<div class="row">
				<div class="col-md-6">
					<div class="content align-center-center text-center">
						<span class="color-44 text-uppercase display-block mb-25">Amazing
							Hotel View</span>
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
	<!-- =======================================         ==Start facilities action section==      =======================================-->
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
	<!-- =======================================         ==Start Popular room section==      =======================================-->
	<section class="hotel-room list single section-padding">
		<div class="container">
			<div class="row">
				<div class="col-12">
					<div class="section-title text-center">
						<h2 class="color-1c pos-relative">Discover More Rooms</h2>
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
			</div>
		</div>
	</section>
	<!-- =======================================         ==End Popular room section==      =======================================-->
	<!-- =======================================         ==Start footer section==      =======================================-->
	
	
	</jsp:attribute>
</mt:layout_user>