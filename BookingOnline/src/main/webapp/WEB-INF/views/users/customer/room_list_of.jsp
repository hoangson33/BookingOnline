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
						<h2 class="color-1c pos-relative">Room List</h2>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- =======================================         ==End Breadcrumbs section==      =======================================-->
	<section class="hotel-breadcrumbs pos-relative">
	<div class="check-availability">
				<div class="container">
					<div class="row">
						<div class="col-12">
							<form method="get" action="${pageContext.request.contextPath }/home/search/{city}/{checkIn}/{checkOut}/{guestChildren}/{guestAdult}">
								<ul class="align-row-spacebetween">
									<li>Check Availability</li>
									<li class="align-row-center-center">
										<div
											class="group checkin">
											<label for="booking-checkin">City</label>
											<select name="city">
												<option value="Ba Ria">Ba Ria</option>
												<option value="Ho Chi Minh">Ho Chi Minh</option>
												<option value="Nha Trang">Nha Trang</option>
												<option value="Vung Tau">Vung Tau</option>
												<option value="Da Lat">Da Lat</option>
												<option value="Phan Thiet">Phan Thiet</option>
												<option value="Cam Ranh">Cam Ranh</option>
												<option value="Can Tho">Can Tho</option>
												<option value="Kien Giang">Kien Giang</option>
												<option value="Ben Tre">Ben Tre</option>
											</select>
										</div>
										
										<div
											class="group checkin">
											<label for="booking-checkin">CHECK IN Date</label><input 
												type="text" name="checkIn" id="from" placeholder="MM/DD/YY"
												readonly>
										</div>
										<div class="group checkout">
											<label for="booking-checkout">CHECK OUT Date</label><input
												type="text" name="checkOut" id="to" placeholder="MM/DD/YY"
												readonly>
										</div>
										<div class="group children">
											<label for="children">Children</label><input type="number"
												name="guestChildren" id="children" value="1" readonly><span
												class="increse"><i class="fa fa-angle-up"></i></span><span
												class="decrese"><i class="fa fa-angle-down"></i></span>
										</div>
										<div class="group children">
											<label for="adult">Adult</label><input type="number"
												name="guestAdult" id="adult" value="1" readonly><span
												class="increse"><i class="fa fa-angle-up"></i></span><span
												class="decrese"><i class="fa fa-angle-down"></i></span>
										</div>
										</li>
									<li><button type="submit">CHECK AVAILABILITY</button></li>
								</ul>
							</form>
						</div>
					</div>
				</div>
			</div>
</section>		
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
						<h2 class="color-1c pos-relative">Our Rooms</h2>
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
								$${roomlist.price } <span>/ Per Night</span>
							</h4>
							<a  href="${pageContext.request.contextPath }/customer/view-room/${roomlist.idRoom}" class="btn-default read-more solid-bg-btn">
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

    </script>
      
	
