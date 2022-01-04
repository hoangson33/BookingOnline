<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@ taglib prefix="mt" tagdir="/WEB-INF/tags" %>

<mt:layout_user title="Add Room">

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
							<li class="active">Add room</li>
						</ol>
						<h2 class="text-uppercase color-ff">Add room</h2>
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
						<img src="${pageContext.request.contextPath }/resources/user/images/room-details-img1.jpg" alt="room img"
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
	
	</jsp:attribute>
</mt:layout_user>