<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@ taglib prefix="mt" tagdir="/WEB-INF/tags" %>

<mt:layout_user title="Aboutus">

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
							<li class="active">about</li>
						</ol>
						<h2 class="text-uppercase color-ff">about us</h2>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- =======================================         ==End Breadcrumbs section==      =======================================-->
	<!-- =======================================         ==Start about us section==      =======================================-->
	<section class="about-us section-padding">
		<div class="container">
			<div class="row">
				<div class="col-lg-6">
					<div class="about-text">
						<h6 class="title-20 color-55 text-uppercase pb-10">About Us</h6>
						<h3 class="playfair color-33 mb-40">We are providing best
							Accommodations services from 1999 for our Customers</h3>
						<p class="mb-40">Lorem ipsum dolor sit amet, consectetur
							adipiscing elit. Integer accumsan nulla ut tincidunt imperdiet.
							Nam orci orci</p>
						<a href="#" class="btn-default solid-bg-btn pos-relative"><span>Get
								More Details <i class="ion-ios-arrow-thin-right"></i>
						</span></a>
					</div>
				</div>
				<div class="col-lg-6">
					<div class="about-img">
						<img src="${pageContext.request.contextPath }/resources/user/images/about-img.jpg" alt="about img" class="img-fluid">
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- =======================================         ==End about us section==      =======================================-->
	<!-- =======================================         ==Start about mission section==      =======================================-->
	<section class="about-mission">
		<div class="container">
			<div class="row">
				<div class="col-md-4">
					<div class="single-mission text-center">
						<i class="flaticon flaticon-rocket-1"></i>
						<h6 class="title-20 color-33 mb-15 fw-600">Our mission</h6>
						<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.
							Integer accumsan nulla ut tincidunt imperdiet. Nam orci orci</p>
					</div>
				</div>
				<div class="col-md-4">
					<div class="single-mission text-center">
						<i class="flaticon flaticon-vision"></i>
						<h6 class="title-20 color-33 mb-15 fw-600">Our mission</h6>
						<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.
							Integer accumsan nulla ut tincidunt imperdiet. Nam orci orci</p>
					</div>
				</div>
				<div class="col-md-4">
					<div class="single-mission text-center">
						<i class="flaticon flaticon-24-hours"></i>
						<h6 class="title-20 color-33 mb-15 fw-600">Our mission</h6>
						<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.
							Integer accumsan nulla ut tincidunt imperdiet. Nam orci orci</p>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- =======================================         ==End about mission section==      =======================================-->
	<!-- =======================================         ==Start feature section==      =======================================-->
	<section class="feature-section">
		<div class="img-area">
			<img src="${pageContext.request.contextPath }/resources/user/images/about-featured-img.jpg" alt="feature img"
				class="img-fluid">
		</div>
		<div class="features">
			<div class="single-feature">
				<i class="ion-ios-loop-strong"></i>
				<h6 class="fw-700 color-ff mb-15">Quick and Affordable</h6>
				<p>Pellentesque vel lectus eget lorem blandit vulputate. Nullam
					dolor metus,</p>
			</div>
			<div class="single-feature">
				<i class="ion-ios-medkit-outline"></i>
				<h6 class="fw-700 color-ff mb-15">Beautiful Interior Design</h6>
				<p>Pellentesque vel lectus eget lorem blandit vulputate. Nullam
					dolor metus,</p>
			</div>
			<div class="single-feature">
				<i class="ion-android-favorite-outline"></i>
				<h6 class="fw-700 color-ff mb-15">Physical Health Benefits</h6>
				<p>Pellentesque vel lectus eget lorem blandit vulputate. Nullam
					dolor metus,</p>
			</div>
			<div class="single-feature">
				<i class="ion-ios-reverse-camera-outline"></i>
				<h6 class="fw-700 color-ff mb-15">Full Air Condition Room</h6>
				<p>Pellentesque vel lectus eget lorem blandit vulputate. Nullam
					dolor metus,</p>
			</div>
		</div>
	</section>
	<!-- =======================================         ==End feature section==      =======================================-->
	<!-- =======================================         ==Start fact section==      =======================================-->
	<section class="hotel-facts about-facts section-padding">
		<div class="container">
			<div class="row">
				<div class="col-lg-3 col-sm-6">
					<div class="facts-wrapper">
						<div class="facts-common text-center pos-relative">
							<i class="flaticon-user-4"></i>
							<h4 class="title-35 fw-900 color-33 counter">1530</h4>
							<span class="line d-block"></span>
							<p class="text-uppercase facts-title color-55">Happy Clients</p>
						</div>
					</div>
				</div>
				<div class="col-lg-3 col-sm-6">
					<div class="facts-wrapper">
						<div class="facts-common text-center pos-relative">
							<i class="flaticon-staff"></i>
							<h4 class="title-35 fw-900 color-33 counter">60</h4>
							<p class="text-uppercase facts-title color-55">Staffs</p>
						</div>
					</div>
				</div>
				<div class="col-lg-3 col-sm-6">
					<div class="facts-wrapper">
						<div class="facts-common text-center pos-relative">
							<i class="flaticon-bed"></i>
							<h4 class="title-35 fw-900 color-33 counter">100</h4>
							<span class="line d-block"></span>
							<p class="text-uppercase facts-title color-55">Rooms</p>
						</div>
					</div>
				</div>
				<div class="col-lg-3 col-sm-6">
					<div class="facts-wrapper">
						<div class="facts-common text-center pos-relative">
							<i class="flaticon-like"></i>
							<h4 class="title-35 fw-900 color-33 counter">632</h4>
							<span class="line d-block"></span>
							<p class="text-uppercase facts-title color-55">Love Us</p>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- =======================================         ==End fact section==      =======================================-->
	<!-- =======================================         ==Start about cta section==      =======================================-->
	<section class="about-cta section-padding">
		<div class="container">
			<div class="row">
				<div class="col-12">
					<div class="cta-content align-row-spacebetween">
						<div class="content-txt">
							<h3 class="color-00 pos-relative playfair">Book your next
								vacation today</h3>
							<p class="color-00 pt-20">it’s simple just contact with us
								and one of our team member will assist you how to start.</p>
						</div>
						<a href="#"
							class="btn-default solid-bg-btn text-uppercase pos-relative radius-50"><span>Get
								Started Now</span></a>
					</div>
				</div>
				<!--/col-->
			</div>
		</div>
	</section>
	<!-- =======================================         ==End about cta section==      =======================================-->
	<!-- =======================================         ==Start footer section==      =======================================-->
	
	
	</jsp:attribute>
</mt:layout_user>