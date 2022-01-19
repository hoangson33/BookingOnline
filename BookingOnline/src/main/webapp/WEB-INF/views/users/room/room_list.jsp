<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@ taglib prefix="mt" tagdir="/WEB-INF/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<mt:layout_customer title="Room List">

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
											<select name="city" >
												<option value="${city}">${city }</option>
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
											<label for="booking-checkin">CHECK IN Date</label><input value="${checkIn }" 
												type="text" name="checkIn" id="from" placeholder="MM/DD/YY"
												readonly>
										</div>
										<div class="group checkout">
											<label for="booking-checkout">CHECK OUT Date</label><input value="${checkOut }" 
												type="text" name="checkOut" id="to" placeholder="MM/DD/YY"
												readonly>
										</div>
										<div class="group children">
											<label for="children">Children</label><input type="number"
												name="guestChildren" id="children" value="${guestChildren }" readonly><span
												class="increse"><i class="fa fa-angle-up"></i></span><span
												class="decrese"><i class="fa fa-angle-down"></i></span>
										</div>
										<div class="group children">
											<label for="adult">Adult</label><input type="number"
												name="guestAdult" id="adult" value="${guestAdult }" readonly><span
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
	<!-- =======================================         ==Start Popular room section==      =======================================-->
	<section class="hotel-room list section-padding">
		<div class="container">
			<div class="row">
				<div class="col-12">
					<div class="section-title text-center">
						<h2 class="color-1c pos-relative">${city } Rooms List</h2>
						<p class="color-1c text-uppercase">Available Accommodations</p>
					</div>
				</div>
			</div>
			<div class="row">
			<c:forEach var="roomSearch" items="${roomSearchs }">
				<div class="col-md-4 col-sm-6">
				
					<div class="single-room">
						<a href="#" class="room-img"><img src="${pageContext.request.contextPath }/webapp/assets/uploadRoom/${roomSearch.imgRoom}"
							alt="room img" class="img-fluid"></a>
						<h5 class="mb-15 playfair">
							<a href="#">${roomSearch.roomCategory }</a>
						</h5>
						<p>${roomSearch.guestAdult } Adult ${roomSearch.guestChildren } Children</p>
						<span class="divider"></span>
						<h4 class="price color-66 mb-15">
							$${roomSearch.total } <span>/ Per Night</span>
						</h4>
						<a href="${pageContext.request.contextPath }/customer/view-room?idRoom=${roomSearch.idRoom}" class="btn-default read-more solid-bg-btn"><span>Book
								Now <i class="ion-android-arrow-dropright"></i>
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
</mt:layout_customer>

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