<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@ taglib prefix="mt" tagdir="/WEB-INF/tags" %>
<%@ taglib prefix="s" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<link href="https://use.fontawesome.com/releases/v5.0.1/css/all.css" rel="stylesheet">
<link rel="stylesheet" href="${pageContext.request.contextPath }/webapp/static/checkbox/css/style.css">
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
<mt:layout_user title="Room edit">
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
							<li><a href="#">Room List</a></li>
							<li class="active">Single room</li>
						</ol>
						<h2 class="text-uppercase color-ff">Single Room</h2>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- =======================================         ==End Breadcrumbs section==      =======================================-->
<s:form method="post" modelAttribute="roomlist" enctype="multipart/form-data"
			action="${pageContext.request.contextPath }/enterprise/edit-room"> 

	<!-- =======================================         ==Start details info section==      =======================================-->
	<section class="details-info section-padding">
		<div class="container">
			<div class="row">
				<div class="col-lg-8">
					<input  onchange="show(this)" type="file" name="file" multiple="multiple" id="firstimg" style="display:none; visibility: none;"/> 
				
					
					<div class="room-img"><label for="firstimg" ><i class="fa fa-plus "></i><img width="1000" height="1000" id="school_img" src="${pageContext.request.contextPath }/webapp/assets/uploads/${imgRoom}" alt="room img" class="img-fluid rounded"></label>
					
					</div>
				</div>
				<div class="col-lg-4">
					<div class="booking-form">
						
							<h4 class="color-22 text-center playfair">Reserve Your Room</h4>
							<p class="color-22 text-center">Book with Stuck Hotel</p>
							<span class="divider"></span>
							<div class="group checkin">
								<label class="color-22 playfair"  for="booking-checkin">CHECK IN Date</label><s:input
									path="checkIn" type="text" id="booking-checkin" placeholder="MM/DD/YY"
									/>
							</div>
							<div class="group checkout">
								<label class="color-22 playfair" for="booking-checkout">CHECK OUT Date</label><s:input 
									path="checkOut" type="text" id="booking-checkout" placeholder="MM/DD/YY"
									/>
							</div>
							<div class="group children">
								<label class="color-22 playfair" for="children">Children</label><s:input type="text"
									name="children" id="children" path="guestChildren" /><span
									class="increse"><i class="fa fa-angle-up"></i></span><span
									class="decrese"><i class="fa fa-angle-down"></i></span>
							</div>
							<div class="group adult">
								<label class="color-22 playfair" for="children">Adult</label><s:input type="text"
									name="children" id="adult" path="guestAdult" /><span
									class="increse"><i class="fa fa-angle-up"></i></span><span
									class="decrese"><i class="fa fa-angle-down"></i></span>
							</div>
							<button type="submit"
								class="btn-default solid-bg-btn pos-relative">
								<span>Submit</span>
								<span>&nbsp;</span>
                            
                            <s:input type="hidden" name="idRoom" path="idRoom" />
							</button>
						
					</div>
				</div>
				<div class="col-lg-12 col-md-12 col-sm-12">
                    <h3 class="box-title mt-5">Detail Info</h3>
                    <div class="table-responsive">
                        <table class="table table-striped table-product">
                            <tbody >
                                <tr>
                                    <td width="390">Description about the room</td>
                                    <td width="1200"><s:textarea path="description" rows="5" cols=""/></td>
                                </tr>
                                <tr>
                                    <td>Room Category</td>
                                    <td><s:input path="roomCategory"/></td>
                                </tr>
                                <tr>
                                    <td>Room Quantiy</td>
                                    <td><s:input path="quantityRoom"/></td>
                                </tr>
                                <tr>
                                    <td>Price(/1night)</td>
                                    <td><s:input path="price"/></td>
                                </tr>
                                <tr>
                                    <td>Sale(%)</td>
                                    <td><s:input path="salePrice"/></td>
                                </tr>
                                <tr>
                                    <td>Location detail</td>
                                    <td><s:input path="locationDetail"/></td>
                                    <s:input type="hidden" path="account.idAcc" value="${idAcc }"/>
                                </tr>
                                
                                
                                
                                
                                
                            </tbody>
                        </table>
                       
                       
                    </div>
                </div>
			</div>
		</div>
	</section>
	<!-- =======================================         ==End details info section==      =======================================-->
</s:form>	
	
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
					<div class="container">
						  <ul class="ks-cboxtags">
						  
						  </ul>

					</div>
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
		<script type="text/javascript">

    function show(input) {
        if (input.files && input.files[0]) {
            var filerdr = new FileReader();
            filerdr.onload = function (e) {
                $('#school_img').attr('src', e.target.result).width(700).height(700);
            }
            filerdr.readAsDataURL(input.files[0]);
        }
    }
</script>
