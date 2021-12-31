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
							<li class="active">Spa Service</li>
						</ol>
						<h2 class="text-uppercase color-ff">Spa Service</h2>
					</div>
				</div>
			</div>
		</div>
		v
	</section>
	<!-- =======================================         ==End Breadcrumbs section==      =======================================-->
	<!-- =======================================         ==Start feature section==      =======================================-->
	<section class="feature-section spa-service section-padding">
		<div class="img-area">
			<img src="${pageContext.request.contextPath }/resources/user/images/spa-service-img.jpg" alt="feature img"
				class="img-fluid">
		</div>
		<div class="features">
			<div class="single-feature">
				<i class="flaticon flaticon-massage-1"></i>
				<h6 class="mb-15 text-uppercase">
					<a href="">Body Message</a>
				</h6>
				<p>Nam ornare magna ut orci efficitur, vitae maximus nibh
					mollis. Praesent maximus, turpis sit</p>
			</div>
			<div class="single-feature">
				<i class="flaticon flaticon-hair-spray"></i>
				<h6 class="mb-15 text-uppercase">
					<a href="">Hair Care & style</a>
				</h6>
				<p>Nam ornare magna ut orci efficitur, vitae maximus nibh
					mollis. Praesent maximus, turpis sit</p>
			</div>
			<div class="single-feature">
				<i class="flaticon flaticon-women-treatment"></i>
				<h6 class="mb-15 text-uppercase">
					<a href="">Body Waxing</a>
				</h6>
				<p>Nam ornare magna ut orci efficitur, vitae maximus nibh
					mollis. Praesent maximus, turpis sit</p>
			</div>
			<div class="single-feature">
				<i class="flaticon flaticon-cream"></i>
				<h6 class="mb-15 text-uppercase">
					<a href="">facials Beauty</a>
				</h6>
				<p>Nam ornare magna ut orci efficitur, vitae maximus nibh
					mollis. Praesent maximus, turpis sit</p>
			</div>
		</div>
	</section>
	<!-- =======================================         ==End feature section==      =======================================-->
	<!-- =======================================         ==Start pricing section==      =======================================-->
	<section class="spa-pricing">
		<div class="container">
			<div class="row">
				<div class="col-12">
					<div class="section-title text-center">
						<h2 class="color-1c pos-relative">Our Pricing</h2>
						<p class="color-1c text-uppercase">Laxury Trip will Give Best
							Service</p>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-md-4">
					<div class="single-tbl">
						<div class="tbl-header text-center pos-relative">
							<h3 class="text-uppercase color-ff">Personal</h3>
						</div>
						<div class="tbl-body text-center">
							<div class="price">
								<h2 class="color-ff fw-700">$313</h2>
								<span class="color-ff display-block">/ Month</span>
							</div>
							<ul>
								<li>Body Message (40 Mins)</li>
								<li>Spa Therapy (20 Mins)</li>
								<li>Hair Care & Styles</li>
								<li>Oil Message (30 MIns)</li>
								<li class="dactive-color">Body Waxing (25 MIns)</li>
								<li class="dactive-color">Skin Care(40 Mins)</li>
							</ul>
							<a class="tbl-btn fw-700" href="#">SELECT PLAN</a>
						</div>
					</div>
				</div>
				<!--table-2-->
				<div class="col-md-4">
					<div class="single-tbl advanced">
						<div class="tbl-header text-center pos-relative">
							<ul class="rating display-inline">
								<li><i class="fa fa-star"></i></li>
								<li><i class="fa fa-star"></i></li>
								<li><i class="fa fa-star"></i></li>
								<li><i class="fa fa-star"></i></li>
								<li><i class="fa fa-star-half-o"></i></li>
							</ul>
							<h3 class="text-uppercase color-ff">Couple</h3>
						</div>
						<div class="tbl-body text-center">
							<div class="price">
								<h2 class="color-ff fw-700">$540</h2>
								<span class="color-ff display-block">/ Month</span>
							</div>
							<ul>
								<li>Body Message (60 Mins)</li>
								<li>Spa Therapy (40 Mins)</li>
								<li>Hair Care & Styles</li>
								<li>Oil Message (30 MIns)</li>
								<li>Body Waxing (25 MIns)</li>
								<li class="dactive-color">Skin Care(40 Mins)</li>
							</ul>
							<a class="tbl-btn fw-700" href="#">SELECT PLAN</a>
						</div>
					</div>
				</div>
				<!--table-3-->
				<div class="col-md-4">
					<div class="single-tbl">
						<div class="tbl-header text-center pos-relative">
							<h3 class="text-uppercase color-ff">Private</h3>
						</div>
						<div class="tbl-body text-center">
							<div class="price">
								<h2 class="color-ff fw-700">$735</h2>
								<span class="color-ff display-block">/ Month</span>
							</div>
							<ul>
								<li>Body Message (60 Mins)</li>
								<li>Spa Therapy (40 Mins)</li>
								<li>Hair Care & Styles</li>
								<li>Oil Message (30 MIns)</li>
								<li>Body Waxing (25 MIns)</li>
								<li>Skin Care(40 Mins)</li>
							</ul>
							<a class="tbl-btn fw-700" href="#">SELECT PLAN</a>
						</div>
					</div>
				</div>
				<!--/col-->
			</div>
			<!--/row-->
		</div>
	</section>
	<!-- =======================================         ==End pricing section==      =======================================-->
	<!-- =======================================         ==Start spa feature section==      =======================================-->
	<section class="spa-feature">
		<div class="container">
			<div class="row">
				<div class="col-lg-4">
					<div class="intro-common text-right">
						<div class="intro-box pos-relative">
							<span class="display-block"><i
								class="flaticon flaticon-sprout"></i></span>
							<div class="intro-text">
								<h6 class="color-33 fw-700 text-uppercase">100% Natural
									products</h6>
								<p class="color-66">Nemo enim ipsam voluptatem quia voluptas
									sit aspernatur aut odit aut fugit, sed quia con- sequuntur
									magni dolores</p>
							</div>
						</div>
						<div class="intro-box pos-relative">
							<span class="display-block"><i
								class="flaticon flaticon-women-treatment"></i></span>
							<div class="intro-text">
								<h6 class="color-33 fw-700 text-uppercase">Professional
									Beautician</h6>
								<p class="color-66">Nemo enim ipsam voluptatem quia voluptas
									sit aspernatur aut odit aut fugit, sed quia con- sequuntur
									magni dolores</p>
							</div>
						</div>
					</div>
				</div>
				<div class="col-lg-4">
					<div class="img-area">
						<img alt="mobile" class="img-fluid" src="${pageContext.request.contextPath }/resources/user/images/spa.png">
					</div>
				</div>
				<div class="col-lg-4">
					<div class="intro-common right-align">
						<div class="intro-box pos-relative">
							<span class="display-block"><i
								class="flaticon flaticon-tag-1"></i></span>
							<div class="intro-text">
								<h6 class="color-33 fw-700 text-uppercase">special offers</h6>
								<p class="color-66">Nemo enim ipsam voluptatem quia voluptas
									sit aspernatur aut odit aut fugit, sed quia con- sequuntur
									magni dolores</p>
							</div>
						</div>
						<div class="intro-box pos-relative">
							<span class="display-block"><i
								class="flaticon flaticon-seller"></i></span>
							<div class="intro-text">
								<h6 class="color-33 fw-700 text-uppercase">FREE
									CONSULTATION</h6>
								<p class="color-66">Nemo enim ipsam voluptatem quia voluptas
									sit aspernatur aut odit aut fugit, sed quia con- sequuntur
									magni dolores</p>
							</div>
						</div>
					</div>
				</div>
				<!--/col-->
			</div>
		</div>
	</section>
	<!-- =======================================         ==End spa feature section==      =======================================-->
	<!-- =======================================         ==Start footer section==      =======================================-->
	
	
	</jsp:attribute>
</mt:layout_user>