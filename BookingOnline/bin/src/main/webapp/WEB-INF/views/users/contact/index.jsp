<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@ taglib prefix="mt" tagdir="/WEB-INF/tags" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<mt:layout_user title="Contact">

	<jsp:attribute name="content">
	 <link href="${pageContext.request.contextPath }/webapp/js/jquery-3.6.0.min.js" rel="stylesheet">
		<script>
function validateForm() {
  let subject = document.forms["myForm"]["subject"].value;
  let content = document.forms["myForm"]["content"].value;
 
  if (subject == "") {
    alert(" subject must be filled out ");
    return false;
  }else if (content == "") {
	    alert(" content must be filled out ");
	    return false;
  }
  
}
</script>
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
							<li class="active">contact</li>
						</ol>
						<h2 class="text-uppercase color-ff">Contact Us</h2>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- =======================================         ==End Breadcrumbs section==      =======================================-->
	<!-- =======================================         ==Start google map section==      =======================================-->

	<section class="google_map_section">
		<div id="map" class="mapHome1">
		<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3919.282674386518!2d106.69299481535633!3d10.789648561898538!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x317528cb4e091365%3A0xa7efabed68ed397b!2zMjQgUGhhbiBMacOqbSwgxJBhIEthbywgUXXhuq1uIDEsIFRow6BuaCBwaOG7kSBI4buTIENow60gTWluaCwgVmlldG5hbQ!5e0!3m2!1sen!2s!4v1641438177384!5m2!1sen!2s" class="col-sm-12"  height="700" style="border:0;" allowfullscreen="" loading="lazy"></iframe>
		</div>
	</section>
	<!-- =======================================         ==End google map section==      =======================================-->
	<!-- =======================================         ==Start contact info section==      =======================================-->
	<section class="contact-details clearfix">
		<div class="single-contact text-center align-center-center">
			<i class="flaticon-phone-call"></i>
			<h5 class="title-20 ptb-20 fw-700 color-44 text-uppercase">Phone
				No</h5>
			<p class="number">
				<a href="tel:+13 445 87 01 99">+13 445 87 01 99</a><br />
				<a href="tel:+13 445 87 01 99">+14 867 00 79 41</a>
			</p>
		</div>
		<div class="single-contact text-center align-center-center">
			<i class="flaticon-mail"></i>
			<h5 class="title-20 ptb-20 fw-700 color-44 text-uppercase">Email
				Address</h5>
			<p class="number">
				<a href="mailto:yourmail@yoursite.com">yourmail@yoursite.com</a><br />
				<a href="mailto:yourmail@yoursite.com">yourmail@gmail.com</a>
			</p>
		</div>
		<div class="single-contact text-center align-center-center">
			<i class="flaticon-placeholder"></i>
			<h5 class="title-20 ptb-20 fw-700 color-44 text-uppercase">Address</h5>
			<p class="number fw-700 color-66">
				28 Green Tower, Street Name,<br />New York City, USA
			</p>
		</div>
		<div class="single-contact text-center time align-center-center">
			<i class="flaticon-stopwatch"></i>
			<h5 class="title-20 ptb-20 fw-700 color-44 text-uppercase">working
				time</h5>
			<ul>
				<li class="clearfix"><span class="day">Monday - Friday</span><span>09:00
						- 23:00</span></li>
				<li class="clearfix"><span class="day">Saturday</span><span>11:00
						- 01:00</span></li>
				<li class="clearfix"><span class="day">Sunday</span><span>12:00
						- 23:00</span></li>
			</ul>
		</div>
	</section>
	<!-- =======================================         ==End contact info section==      =======================================-->
	<!-- =======================================         ==Start contact form section==      =======================================-->
	<c:if test="${pageContext.request.userPrincipal.name != null }">	
	<section class="luxary-trip-contact section-padding">
		<div class="container">
			<div class="row ">
				<div class="col-12">
					<div class="wrapper">
						<h3
							class="contact-title text-uppercase fw-600 color-22 pos-relative playfair d-inline">Drop
							us a Line</h3>
						<div class="abform-area clearfix pos-relative">
							<form name="myForm" onsubmit="return validateForm()"  action="${pageContext.request.contextPath }/contact/send" method="post">
							
								
								
								<div class="abinput-group subject float-left">
									<label for="sub3">Subject :</label><input type="text"
										name="subject" id="sub3">
								</div>	
								<div class="abinput-group msg">
									<label for="msg3">Content :</label>
									<textarea name="content" id="msg3"></textarea>
								</div>
									
								<button type="submit" class="text-uppercase fw-700 color-ff "
									value=" ">Send Message<i class="fa fa-long-arrow-right"></i>
								</button>
								
							</form>
							<!--/form-->
						</div>
					</div>
				</div>
				<!--/col-->
			</div>
		</div>
	</section>
	</c:if>
	
	
	
	
	
	
	<c:if test="${pageContext.request.userPrincipal.name == null }">	
	<section class="luxary-trip-contact section-padding">
		<div class="container">
			<div class="row ">
				<div class="col-12">
					<div class="wrapper">
						<h3
							class="contact-title text-uppercase fw-600 color-22 pos-relative playfair d-inline">Drop
							us a Line</h3>
						<div class="abform-area clearfix pos-relative">
							<form  action="#">
							
								
								
								<div class="abinput-group subject float-left">
									<label for="sub3">Subject :</label><input type="text"
										name="subject" id="sub3">
								</div>	
								<div class="abinput-group msg">
									<label for="msg3">Content :</label>
									<textarea name="content" id="msg3"></textarea>
								</div>
									
								<button type="submit" class="text-uppercase fw-700 color-ff "
									value=" ">Send Message<i class="fa fa-long-arrow-right"></i>
								</button>
								
							</form>
							<!--/form-->
						</div>
					</div>
				</div>
				<!--/col-->
			</div>
		</div>
	</section>
	</c:if>
	
	
	
	<!-- =======================================         ==End contact form section==      =======================================-->
	<!-- =======================================         ==Start fact section==      =======================================-->
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