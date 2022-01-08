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
	
		<s:form method="post" modelAttribute="infoRoom" enctype="multipart/form-data"
			action="${pageContext.request.contextPath }/enterprise/addRoom"> 
	<section class="details-info section-padding">
		<div class="container">
			<div class="row">
			
				<div class="col-lg-8">
				
				<input  onchange="show(this)" type="file" name="file" multiple="multiple" id="firstimg" style="display:none; visibility: none;"/> 
				
					
					<div class="room-img"><label for="firstimg" ><i class="fa fa-plus "></i><img id="school_img" src="images/room-details-img1.jpg" alt="room img" class="img-fluid rounded"></label>
					
					</div>
                
              
              	
				</div>
				
				<div class="col-lg-4">
					<div class="booking-form">
						
							<h4 class="color-22 text-center playfair">Reserve Your Room</h4>
							<p class="color-22 text-center">Book with Stuck Hotel</p>
							<span class="divider"></span>
							<div class="group checkin">
								<label for="booking-checkin">CHECK IN Date</label><s:input path="checkIn"
									type="text" id="booking-checkin" placeholder="MM/DD/YY"
									readonly="true"/>
							</div>
							<div class="group checkout">
								<label for="booking-checkout">CHECK OUT Date</label><s:input path="checkOut"
									type="text" id="booking-checkout" placeholder="MM/DD/YY"
									readonly="true"/>
							</div>
							<div class="group children">
								<label for="children">Children</label><s:input type="text" path="guestChildren"
									name="children" id="children" value="1" readonly="true"/><span
									class="increse"><i class="fa fa-angle-up"></i></span><span
									class="decrese"><i class="fa fa-angle-down"></i></span>
							</div>
							<div class="group adult">
								<label for="children">Adult</label><s:input type="text" path="guestAdult"
									name="children" id="adult" value="1" readonly="true"/><span
									class="increse"><i class="fa fa-angle-up"></i></span><span
									class="decrese"><i class="fa fa-angle-down"></i></span>
							</div>
							<button type="submit"
								class="btn-default solid-bg-btn pos-relative">
								<span>Submit</span>
								<span>&nbsp;</span>
                            
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
	<!-- =======================================         ==Start hotel view section==      =======================================-->
			
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
						  <ul class="ks-cboxtags form-inline">
						 
						 
						  	<li><input name="checkHighlight" type="checkbox" value="Lawn"><label >Lawn</label></li>
						     <li><input name="checkHighlight"  type="checkbox" value="Air Conditioning" ><label>Air Conditioning</label></li>
						    <li><input type="checkbox" name="checkHighlight" value="Swimming Pool" ><label >Swimming Pool</label></li>
						    <li><input type="checkbox" name="checkHighlight" value="Sauna"><label >Sauna</label></li>
						    <li><input type="checkbox" name="checkHighlight" value="Microwave"><label >Microwave</label></li>
						    <li><input type="checkbox" name="checkHighlight" value="Barbeque" ><label >Barbeque
						                    </label></li>
						    <li><input type="checkbox" name="checkHighlight" value="TV Cable"><label >TV Cable</label></li>
						    <li><input type="checkbox" name="checkHighlight" value="Laundry"><label >Laundry</label></li>
						    <li><input type="checkbox" name="checkHighlight" value="Outdoor Shower"><label>Outdoor Shower
						                    </label></li>
						    <li><input type="checkbox" name="checkHighlight" value="Dryer"><label >Dryer</label></li>
						    <li class="ks-selected"><input type="checkbox" name="checkHighlight" value="Washer"><label>Washer</label></li>
						    <li><input type="checkbox" name="checkHighlight" value="Window Coverings"><label >Window Coverings</label></li>
						    <li><input type="checkbox" name="checkHighlight" value="Refrigerator"><label >Refrigerator</label></li>
						    <li><input type="checkbox" name="checkHighlight" value="Gym"><label >Gym</label></li>
						    <li><input type="checkbox" name="checkHighlight" value="WiFi"><label>WiFi</label></li>
						  
						  </ul>

					</div>
				</div>
			
			</div>
		</div>
	</section>
	
</s:form>
	
	
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

