<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@ taglib prefix="mt" tagdir="/WEB-INF/tags" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    <%@ taglib prefix="s" uri="http://www.springframework.org/tags/form"%>


    <link rel="stylesheet" href="${pageContext.request.contextPath }/webapp/static/layout_nav/css/templatemo-hexashop.css">

    <link rel="stylesheet" href="${pageContext.request.contextPath }/webapp/static/layout_nav/css/owl-carousel.css">


<mt:layout_customer title="Home">

	<jsp:attribute name="content">
	
	 

           <section class="hotel-banner pos-relative">
		<div class="overlay"></div>
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
		<div class="container">
			<div class="row">
				<div class="col-12">
					<div class="banner-content text-center align-center-center">
						<ul class="hero-carousel owl-carousel">
							<li><h5 class="title-20 color-ff text-uppercase">We're
									Here To Help You Enjoy Your Stay</h5>
								<h1 class="fw-700 text-uppercase color-fbc playfair">
									Laxury Trip <br />Hotel & Resort
								</h1></li>
							<li><h5 class="title-20 color-ff text-uppercase">We're
									Here To Help You Enjoy Your Stay</h5>
								<h1 class="fw-700 text-uppercase color-fbc playfair">Dream
									Comes True</h1></li>
							<li><h5 class="title-20 color-ff text-uppercase">We're
									Here To Help You Enjoy Your Stay</h5>
								<h1 class="fw-700 text-uppercase color-fbc playfair">
									Relux & Enjoy <br />with Us
								</h1></li>
						</ul>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- =======================================         ==End banner section==      =======================================-->
	<!-- =======================================         ==Start Service section==      =======================================-->
	<div class="service-section">
		<div class="container">
			<div class="row">
				<div class="col-12">
					<div class="section-title text-center">
						<h2 class="color-1c pos-relative">Best Services</h2>
						<p class="color-1c text-uppercase">We Will Give you Best
							Service Ever</p>
					</div>
				</div>
			</div>
		</div>
	</div>
	<section class="hotel-service">
		<div class="single-service">
			<img src="${pageContext.request.contextPath }/webapp/static/user/images/hotel-service1.jpg" class="img-fluid"
				alt="service image">
			<div class="service-content text-center pos-relative">
				<h4 class="color-2d pb-15 text-capitalize">Online Room Booking</h4>
				<p class="clamp-text">Fusce dignissim lorem quis mauris varius
					venenatis. Vivamus vitae blandit nunc, eget euismod purus.
					Phasellus ut tincidunt magna. Mauris vehicula mauris enim
					ullamcorper</p>
				<a href="" class="btn-default">Read More <i
					class="ion-android-arrow-dropright"></i></a>
			</div>
		</div>
		<div class="single-service">
			<img src="${pageContext.request.contextPath }/webapp/static/user/images/hotel-service2.jpg" class="img-fluid"
				alt="service image">
			<div class="service-content text-center pos-relative">
				<h4 class="color-2d pb-15 text-capitalize">Experience staffs</h4>
				<p class="clamp-text">Fusce dignissim lorem quis mauris varius
					venenatis. Vivamus vitae blandit nunc, eget euismod purus.
					Phasellus ut tincidunt magna. Mauris vehicula mauris enim
					ullamcorper</p>
				<a href="" class="btn-default">Read More <i
					class="ion-android-arrow-dropright"></i></a>
			</div>
		</div>
		<div class="single-service">
			<img src="${pageContext.request.contextPath }/webapp/static/user/images/hotel-service3.jpg" class="img-fluid"
				alt="service image">
			<div class="service-content text-center pos-relative">
				<h4 class="color-2d pb-15 text-capitalize">Car Rentals Service</h4>
				<p class="clamp-text">Fusce dignissim lorem quis mauris varius
					venenatis. Vivamus vitae blandit nunc, eget euismod purus.
					Phasellus ut tincidunt magna. Mauris vehicula mauris enim
					ullamcorper</p>
				<a href="" class="btn-default">Read More <i
					class="ion-android-arrow-dropright"></i></a>
			</div>
		</div>
		<div class="single-service">
			<img src="${pageContext.request.contextPath }/webapp/static/user/images/hotel-service4.jpg" class="img-fluid"
				alt="service image">
			<div class="service-content text-center pos-relative">
				<h4 class="color-2d pb-15 text-capitalize">Delicious Food</h4>
				<p class="clamp-text">Fusce dignissim lorem quis mauris varius
					venenatis. Vivamus vitae blandit nunc, eget euismod purus.
					Phasellus ut tincidunt magna. Mauris vehicula mauris enim
					ullamcorper</p>
				<a href="" class="btn-default">Read More <i
					class="ion-android-arrow-dropright"></i></a>
			</div>
		</div>
	</section>
	<!-- =======================================         ==End Service section==      =======================================-->
	<!-- =======================================         ==Start welcome section==      =======================================-->
	<section class="welcome-section section-padding">
		<div class="container">
			<div class="row align-items-lg-center">
				<div class="col-md-6">
					<div class="img-area pos-relative">
						<img src="${pageContext.request.contextPath }/webapp/static/user/images/welcome-img1.jpg" alt="welcome img"
							class="img-fluid img1"><img src="${pageContext.request.contextPath }/webapp/static/user/images/welcome-img2.jpg"
							alt="welcome img" class="img-fluid img2"><img
							src="${pageContext.request.contextPath }/webapp/static/user/images/welcome-img3.jpg" alt="welcome img"
							class="img-fluid img3">
					</div>
				</div>
				<div class="col-md-6">
					<div class="welcome-content text-center">
						<h6 class="color-1c text-uppercase">Welcome to Laxury Trip
							hotel</h6>
						<h2 class="color-1c pos-relative">A Best Place to Enjoy Your
							Life</h2>
						<p>Pellentesque nulla magna, accumsan sed ante quis, gravida
							feugiat turpis. Vivamus et fringilla ligula. Etiam sapien tellus,
							imperdiet eget posuere nec, cursus vel arcu.</p>
						<a href="#" class="btn-default"><span>ABOUT US <i
								class="ion-ios-arrow-thin-right"></i></span></a>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- =======================================         ==End welcome section==      =======================================-->
	<!-- =======================================         ==Start room carousel section==       =======================================-->
	
	

			<!-- ***** Men Area Starts ***** -->
    <section class="section" id="men">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="section-title text-center">
						<h2 class="color-1c pos-relative">Our Hotels</h2>
						<p class="color-1c text-uppercase">We Will Give you Best
							Service Ever</p>
					</div>
                </div>
            </div>
        </div>
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="men-item-carousel">
                        <div class="owl-men-item owl-carousel">
                        <c:forEach var="account" items="${accountEnters }" >
                            <div class="item">
                                <div class="thumb">
                                    <div class="hover-content">
                                            <li><a href="${pageContext.request.contextPath }/webapp/assets/uploads/${account.avatar}"><i style="color: blue" class="fa fa-eye"></i></a>
                                    </div>
                                    <img src="${pageContext.request.contextPath }/webapp/assets/uploads/${account.avatar}" alt="">
                                </div>
                                <div class="down-content">
                                    <h4>${account.name } Hotel</h4>
                                    <p><i style="color: darkBlue" class="fa fa-map-marker"> ${account.location }</i></p>
                                    <span>${account.locationDetail }.</span>
                                    <a href="${pageContext.request.contextPath }/customer/room-list-of/${account.idAcc}">More deatails</a>
                                    
                                    <ul class="stars">
                                        <li><i class="fa fa-star"></i></li>
                                        <li><i class="fa fa-star"></i></li>
                                        <li><i class="fa fa-star"></i></li>
                                        <li><i class="fa fa-star"></i></li>
                                        <li><i class="fa fa-star"></i></li>
                                    </ul>
                                </div>
                            </div>
                          </c:forEach>  
                            
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- ***** Men Area Ends ***** -->

	
	
	<!-- =======================================         ==End room carousel section==      =======================================-->
	
	<!-- =======================================         ==Start Popular room section==      =======================================-->
	<section class="hotel-room section-padding">
		<div class="container">
			<div class="row">
				<div class="col-12">
					<div class="section-title text-center">
						<h2 class="color-1c pos-relative">Popular Rooms</h2>
						<p class="color-1c text-uppercase">Available Accommodations</p>
					</div>
				</div>
			</div>
			<div class="row">
			<c:forEach var="roomlist" items="${roomlists }">
				<div class="col-md-4">
					<div class="single-room">
						<a href="#" class="room-img"><img src="${pageContext.request.contextPath }/webapp/assets/uploadRoom/${roomlist.imgRoom}"
							alt="room img" class="img-fluid"></a>
						<h5 class="mb-15">
							<a href="#">${roomlist.roomCategory }</a>
						</h5>
						<p>${roomlist.guestAdult } Adult ${roomlist.guestChildren } Children</p>
						<span class="divider"></span>
						<h4 class="price color-66 mb-15">
							$${roomlist.total } <span>/ Per Night</span>
						</h4>
						<a href="#" class="btn-default read-more solid-bg-btn"><span>Book
								Now <i class="ion-android-arrow-dropright"></i>
						</span></a>
					</div>
				</div>
			</c:forEach>
				
			</div>
		</div>
	</section>
	<!-- =======================================         ==End Popular room section==      =======================================-->
	<!-- =======================================         ==Start call to action section==      =======================================-->
	<section class="hotel-cta section-padding">
		<div class="container">
			<div class="row">
				<div class="col-12">
					<div class="cta-content text-center">
						<div class="content-txt">
							<h3 class="pos-relative fw-300 color-33 playfair">Enjoy
								Great Times with us</h3>
							<p class="pt-15 pb-20">Praesent faucibus tristique leo, eu
								lacinia neque condimentum in. Maecenas orci purus, aliquet
								lobortis.</p>
						</div>
						<a href="#"
							class="btn-default solid-bg-btn pos-relative text-uppercase color-ff"><span>Contact
								Now</span></a>
					</div>
				</div>
				<!--/col-->
			</div>
		</div>
	</section>
	<!-- =======================================         ==End call to action section==      =======================================-->
	<!-- =======================================         ==Start related service section==      =======================================-->
	<section class="related-service">
		<div class="single-service pos-relative">
			<a href="#"><img src="${pageContext.request.contextPath }/webapp/static/user/images/related-service-img1.jpg"
				alt="service img" class="img-fluid"></a>
			<h5 class="color-21">Dining Service</h5>
		</div>
		<div class="single-service pos-relative">
			<a href="#"><img src="${pageContext.request.contextPath }/webapp/static/user/images/related-service-img2.jpg"
				alt="service img" class="img-fluid"></a>
			<h5 class="color-21">Spa and Beauty Center</h5>
		</div>
		<div class="single-service pos-relative">
			<a href="#"><img src="${pageContext.request.contextPath }/webapp/static/user/images/related-service-img3.jpg"
				alt="service img" class="img-fluid"></a>
			<h5 class="color-21">Swmming Pool</h5>
		</div>
	</section>
	<!-- =======================================         ==End related service section==      =======================================-->
	<!-- =======================================         ==Start App section==      =======================================-->
	<section class="app-section section-padding">
		<div class="container">
			<div class="row">
				<div class="col-md-7 content">
					<div class="text-center">
						<h6 class="title-20 color-20">Luxury Resort & Hotel</h6>
						<h2 class="color-20 fw-300">Our Online Room Booking app</h2>
						<p>Vestibulum commodo porttitor ante non pharetra. Donec
							iaculis laoreet euismod. Morbi cursus lectus sed augue laoreet,
							ac scelerisque nisi pellentesque. Morbi vel lectus eu ligula
							fringilla rutrum vitae ut risus. Aliquam porttitor elit quis
							interdum consectetur.</p>
						<a href="#" class="btn-default solid-bg-btn pos-relative"><span>Download
								Now <i class="ion-android-arrow-dropright"></i>
						</span></a>
					</div>
				</div>
				<div class="col-md-5">
					<div class="img-area">
						<img src="${pageContext.request.contextPath }/webapp/static/user/images/iphoneX.png" alt="iphone img" class="img-fluid">
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- =======================================         ==End App section==      =======================================-->
	<!-- =======================================         ==Start video section==      =======================================-->
	<section class="hotel-video pos-relative">
		<div class="overlay"></div>
		<div class="container">
			<div class="row">
				<div class="col-12">
					<div class="video-content text-center align-center-center">
						<span class="line display-block bg-bf9"></span>
						<p class="color-ff mt-20 text-uppercase">LUXURY HOTEL & BEST
							RESORT</p>
						<h2 class="color-ff fw-300 pb-50 pt-20 playfair">Relax and
							Enjoy with our Hotel & Resort</h2>
						<a class="venobox d-inline color-ff radius-100p"
							data-gall="gall-video" data-autoplay="true" data-vbtype="video"
							href="https://youtu.be/8ad09ERqMK0"><i class="fa fa-play"></i></a>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- =======================================         ==End video section==      =======================================-->
	<!-- =======================================         ==Start testimonial section==      =======================================-->
	<section class="hotel-testimonial section-padding">
		<div class="container">
			<div class="row">
				<div class="col-12">
					<div class="section-title text-center">
						<h2 class="color-1c pos-relative">What Client Say</h2>
						<p class="color-1c text-uppercase">Latest Article from Our
							Client</p>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-12">
					<div class="testimonial-wrapper owl-carousel">
						<div class="single-testimonial pos-relative">
							<div class="author-img radius-100p pos-relative">
								<img src="${pageContext.request.contextPath }/webapp/static/user/images/testimonial-author7.jpg" class="radius-100p"
									alt="author">
							</div>
							<p class="author-comment color-77 pos-relative">Praesent
								cursus nulla non arcu tempor, ut egestas elit tempus. In ac ex
								fermentum, gravida felis nec, tincidunt ligula. Sed dapibus
								mauris ullamcorper.</p>
							<h5 class="text-uppercase color-10 fw-600">
								JAne Doe <span class="line"></span>
							</h5>
						</div>
						<!--testimonial-2-->
						<div class="single-testimonial pos-relative">
							<div class="author-img radius-100p pos-relative">
								<img src="${pageContext.request.contextPath }/webapp/static/user/images/testimonial-author3.jpg" class="radius-100p"
									alt="author">
							</div>
							<p class="author-comment color-77 pos-relative">Praesent
								cursus nulla non arcu tempor, ut egestas elit tempus. In ac ex
								fermentum, gravida felis nec, tincidunt ligula. Sed dapibus
								mauris ullamcorper.</p>
							<h5 class="text-uppercase color-10 fw-600">
								JAne Doe <span class="line"></span>
							</h5>
						</div>
						<!--testimonial-3-->
						<div class="single-testimonial pos-relative">
							<div class="author-img radius-100p pos-relative">
								<img src="${pageContext.request.contextPath }/webapp/static/user/images/testimonial-author4.jpg" class="radius-100p"
									alt="author">
							</div>
							<p class="author-comment color-77 pos-relative">Praesent
								cursus nulla non arcu tempor, ut egestas elit tempus. In ac ex
								fermentum, gravida felis nec, tincidunt ligula. Sed dapibus
								mauris ullamcorper.</p>
							<h5 class="text-uppercase color-10 fw-600">
								JAne Doe <span class="line"></span>
							</h5>
						</div>
						<!--testimonial-4-->
						<div class="single-testimonial pos-relative">
							<div class="author-img radius-100p pos-relative">
								<img src="${pageContext.request.contextPath }/webapp/static/user/images/testimonial-author5.jpg" class="radius-100p"
									alt="author">
							</div>
							<p class="author-comment color-77 pos-relative">Praesent
								cursus nulla non arcu tempor, ut egestas elit tempus. In ac ex
								fermentum, gravida felis nec, tincidunt ligula. Sed dapibus
								mauris ullamcorper.</p>
							<h5 class="text-uppercase color-10 fw-600">
								JAne Doe <span class="line"></span>
							</h5>
						</div>
					</div>
					<!--/wrapper-->
				</div>
				<!--/col-->
			</div>
		</div>
	</section>
	<!-- =======================================         ==End testimonial section==      =======================================-->
	<!-- =======================================         ==Start fun facts section==      =======================================-->
	<section class="hotel-facts pos-relative section-padding">
		<div class="overlay"></div>
		<div class="container">
			<div class="row">
				<div class="col-lg-3 col-sm-6">
					<div class="facts-common text-center pos-relative ptb-30">
						<i class="flaticon-user-4"></i>
						<h4 class="title-35 fw-900 color-ff counter">1530</h4>
						<span class="line d-block"></span>
						<p class="text-uppercase facts-title color-ff">Happy Clients</p>
					</div>
				</div>
				<div class="col-lg-3 col-sm-6">
					<div class="facts-common text-center pos-relative ptb-30">
						<i class="flaticon-staff"></i>
						<h4 class="title-35 fw-900 color-ff counter">60</h4>
						<span class="line d-block"></span>
						<p class="text-uppercase facts-title color-ff">Staffs</p>
					</div>
				</div>
				<div class="col-lg-3 col-sm-6">
					<div class="facts-common text-center pos-relative ptb-30">
						<i class="flaticon-bed"></i>
						<h4 class="title-35 fw-900 color-ff counter">100</h4>
						<span class="line d-block"></span>
						<p class="text-uppercase facts-title color-ff">Rooms</p>
					</div>
				</div>
				<div class="col-lg-3 col-sm-6">
					<div class="facts-common text-center pos-relative ptb-30">
						<i class="flaticon-like"></i>
						<h4 class="title-35 fw-900 color-ff counter">632</h4>
						<span class="line d-block"></span>
						<p class="text-uppercase facts-title color-ff">Love Us</p>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- =======================================         ==End fun facts section==      =======================================-->
	<!-- =======================================         ==Start blog section==      =======================================-->
	<section class="hotel-blog section-padding">
		<div class="container">
			<div class="row">
				<div class="col-12">
					<div class="section-title text-center">
						<h2 class="color-1c pos-relative">Latest Activities</h2>
						<p class="color-1c text-uppercase">Latest news from our blog</p>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-md-6">
					<div class="single-blog-post">
						<div class="img-area pos-relative">
							<a class="display-block" href="blog-details.html"><img
								alt="blog post img" class="img-fluid" src="${pageContext.request.contextPath }/webapp/static/user/images/blog-img1.jpg"></a><span
								class="date d-block color-00 text-capitalize">07 <br>may
							</span>
						</div>
						<div class="blog-content pt-20">
							<h5>
								<a href="blog-details.html">Suspendisse dictum non velit</a>
							</h5>
							<p>Nunc in mauris a ante rhoncus tristique vitae et nisl.
								Quisque ullamcorper rutrum lacinia. Integer varius ornare
								egestas.</p>
							<a class="read-more text-uppercase" href="blog-details.html">read
								more</a>
						</div>
					</div>
				</div>
				<!--blog-post-2-->
				<div class="col-md-6">
					<div class="single-blog-post">
						<div class="img-area pos-relative">
							<a class="display-block" href="blog-details.html"><img
								alt="blog post img" class="img-fluid" src="${pageContext.request.contextPath }/webapp/static/user/images/blog-img2.jpg"></a><span
								class="date d-block color-00 text-capitalize">05 <br>may
							</span>
						</div>
						<div class="blog-content pt-20">
							<h5>
								<a href="blog-details.html">Changing the topic scope</a>
							</h5>
							<p>Nunc in mauris a ante rhoncus tristique vitae et nisl.
								Quisque ullamcorper rutrum lacinia. Integer varius ornare
								egestas.</p>
							<a class="read-more text-uppercase" href="blog-details.html">read
								more</a>
						</div>
					</div>
				</div>
				<!--/col-->
			</div>
			<!--/row-->
		</div>
	</section>
	<!-- =======================================         ==End blog section==      =======================================-->
	<!-- =======================================         ==Start footer section==      =======================================-->
	
	
	</jsp:attribute>
</mt:layout_customer>





    <!-- Plugins -->
    <script src="${pageContext.request.contextPath }/webapp/static/layout_nav/js/owl-carousel.js"></script>



    
    <!-- Global Init -->
    <script src="${pageContext.request.contextPath }/webapp/static/layout_nav/js/custom.js"></script>

    <script>

        $(function() {
            var selectedClass = "";
            $("p").click(function(){
            selectedClass = $(this).attr("data-rel");
            $("#portfolio").fadeTo(50, 0.1);
                $("#portfolio div").not("."+selectedClass).fadeOut();
            setTimeout(function() {
              $("."+selectedClass).fadeIn();
              $("#portfolio").fadeTo(50, 1);
            }, 500);
                
            });
        });
        
        
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