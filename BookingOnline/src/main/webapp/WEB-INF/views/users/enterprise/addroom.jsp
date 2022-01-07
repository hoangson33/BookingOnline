<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@ taglib prefix="mt" tagdir="/WEB-INF/tags" %>
<%@ taglib prefix="s" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<style>
/*product list*/

.prod-cat li a{
    border-bottom: 1px dashed #d9d9d9;
}

.prod-cat li a {
    color: #3b3b3b;
}

.prod-cat li ul {
    margin-left: 30px;
}

.prod-cat li ul li a{
    border-bottom:none;
}
.prod-cat li ul li a:hover,.prod-cat li ul li a:focus, .prod-cat li ul li.active a , .prod-cat li a:hover,.prod-cat li a:focus, .prod-cat li a.active{
    background: none;
    color: #ff7261;
}

.pro-lab{
    margin-right: 20px;
    font-weight: normal;
}

.pro-sort {
    padding-right: 20px;
    float: left;
}

.pro-page-list {
    margin: 5px 0 0 0;
}

.product-list img{
    width: 100%;
    border-radius: 4px 4px 0 0;
    -webkit-border-radius: 4px 4px 0 0;
}

.product-list .pro-img-box {
    position: relative;
}
.adtocart {
    background: #fc5959;
    width: 50px;
    height: 50px;
    border-radius: 50%;
    -webkit-border-radius: 50%;
    color: #fff;
    display: inline-block;
    text-align: center;
    border: 3px solid #fff;
    left: 45%;
    bottom: -25px;
    position: absolute;
}

.adtocart i{
    color: #fff;
    font-size: 25px;
    line-height: 42px;
}

.pro-title {
    color: #5A5A5A;
    display: inline-block;
    margin-top: 20px;
    font-size: 16px;
}

.product-list .price {
    color:#fc5959 ;
    font-size: 15px;
}

.pro-img-details {
    margin-left: -15px;
}

.pro-img-details img {
    width: 100%;
}

.pro-d-title {
    font-size: 16px;
    margin-top: 0;
}

.product_meta {
    border-top: 1px solid #eee;
    border-bottom: 1px solid #eee;
    padding: 10px 0;
    margin: 15px 0;
}

.product_meta span {
    display: block;
    margin-bottom: 10px;
}
.product_meta a, .pro-price{
    color:#fc5959 ;
}

.pro-price, .amount-old {
    font-size: 18px;
    padding: 0 10px;
}

.amount-old {
    text-decoration: line-through;
}

.quantity {
    width: 120px;
}

.pro-img-list {
    margin: 10px 0 0 -15px;
    width: 100%;
    display: inline-block;
}

.pro-img-list a {
    float: left;
    margin-right: 10px;
    margin-bottom: 10px;
}

.pro-d-head {
    font-size: 18px;
    font-weight: 300;
}
</style>
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
					<div class="pro-img-details">
                  <img src="https://via.placeholder.com/550x380/FFB6C1/000000" alt="">
              </div>
              <div class="pro-img-list">
                  <a href="#">
                      <img src="https://via.placeholder.com/115x100/87CEFA/000000" alt="">
                  </a>
                  <a href="#">
                      <img src="https://via.placeholder.com/115x100/FF7F50/000000" alt="">
                  </a>
                  <a href="#">
                      <img src="https://via.placeholder.com/115x100/20B2AA/000000" alt="">
                  </a>
                  <a href="#">
                      <img src="https://via.placeholder.com/120x100/20B2AA/000000" alt="">
                  </a>
              </div>
				</div>
				<div class="col-lg-4">
					<div class="booking-form">
						<form action="#">
							<h4 class="color-22 text-center playfair">Reserve Your Room</h4>
							<p class="color-22 text-center">Book with Stuck Hotel</p>
							<span class="divider"></span>
							<div class="group checkin">
								<label for="booking-checkin">CHECK IN Date</label><s:input path="checkIn"
									type="text" id="booking-checkin" placeholder="MM/DD/YY"
									readonly/>
							</div>
							<div class="group checkout">
								<label for="booking-checkout">CHECK OUT Date</label><s:input path="checkOut"
									type="text" id="booking-checkout" placeholder="MM/DD/YY"
									readonly/>
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
				
				
				
				<div class="col-lg-12 col-md-12 col-sm-12">
                    <h3 class="box-title mt-5">General Info</h3>
                    <div class="table-responsive">
                        <table class="table table-striped table-product">
                            <tbody>
                                <tr>
                                    <td width="390">Description about the room</td>
                                    <td><s:textarea path="desc" rows="5" cols=""/></td>
                                </tr>
                                <tr>
                                    <td>Room Category</td>
                                    <td><s:input path="roomCategory"/></td>
                                </tr>
                                <tr>
                                    <td>Room Quantiy</td>
                                    <td><s:input path="roomQuantity"/></td>
                                </tr>
                                <tr>
                                    <td>Type</td>
                                    <td>Office Chair</td>
                                </tr>
                                <tr>
                                    <td>Style</td>
                                    <td>Contemporary&amp;Modern</td>
                                </tr>
                                <tr>
                                    <td>Wheels Included</td>
                                    <td>Yes</td>
                                </tr>
                                <tr>
                                    <td>Upholstery Included</td>
                                    <td>Yes</td>
                                </tr>
                                <tr>
                                    <td>Upholstery Type</td>
                                    <td>Cushion</td>
                                </tr>
                                <tr>
                                    <td>Head Support</td>
                                    <td>No</td>
                                </tr>
                                <tr>
                                    <td>Suitable For</td>
                                    <td>Study&amp;Home Office</td>
                                </tr>
                                <tr>
                                    <td>Adjustable Height</td>
                                    <td>Yes</td>
                                </tr>
                                <tr>
                                    <td>Model Number</td>
                                    <td>F01020701-00HT744A06</td>
                                </tr>
                                <tr>
                                    <td>Armrest Included</td>
                                    <td>Yes</td>
                                </tr>
                                <tr>
                                    <td>Care Instructions</td>
                                    <td>Handle With Care,Keep In Dry Place,Do Not Apply Any Chemical For Cleaning.</td>
                                </tr>
                                <tr>
                                    <td>Finish Type</td>
                                    <td>Matte</td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
			</div>
		</div>
	</section>
	<!-- =======================================         ==End details info section==      =======================================-->
	<!-- =======================================         ==Start hotel view section==      =======================================-->
	
	</jsp:attribute>
</mt:layout_user>