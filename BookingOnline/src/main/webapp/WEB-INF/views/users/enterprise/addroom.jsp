<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@ taglib prefix="mt" tagdir="/WEB-INF/tags" %>
<%@ taglib prefix="s" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
	 	 <link href="${pageContext.request.contextPath }/webapp/validation/style.css" rel="stylesheet">

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


/* The container */
.container2 {
  display: block;
  position: relative;
  padding-left: 35px;
  margin-bottom: 12px;
  
  cursor: pointer;
  font-size: 22px;
  -webkit-user-select: none;
  -moz-user-select: none;
  -ms-user-select: none;
  user-select: none;
}

/* Hide the browser's default checkbox */
.container2 input {
  position: absolute;
  opacity: 0;
  cursor: pointer;
  height: 0;
  width: 0;
}

/* Create a custom checkbox */
.checkmark {
  position: absolute;
  top: 0;
  right:300;
  height: 25px;
  width: 25px;
  background-color: #4b4e4a;
}

/* On mouse-over, add a grey background color */
.container2:hover input ~ .checkmark {
  background-color: #ccc;
}

/* When the checkbox is checked, add a blue background */
.container2 input:checked ~ .checkmark {
  background-color: #2196F3;
}

/* Create the checkmark/indicator (hidden when not checked) */
.checkmark:after {
  content: "";
  position: absolute;
  display: none;
}

/* Show the checkmark when checked */
.container2 input:checked ~ .checkmark:after {
  display: block;
}

/* Style the checkmark/indicator */
.container2 .checkmark:after {
  left: 9px;
  top: 5px;
  width: 5px;
  height: 10px;
  border: solid white;
  border-width: 0 3px 3px 0;
  -webkit-transform: rotate(45deg);
  -ms-transform: rotate(45deg);
  transform: rotate(45deg);
}
</style>


<mt:layout_user title="Add Room">
	<jsp:attribute name="content">
	<script>
function validateForm() {
  let checkIn = document.forms["myForm"]["checkIn"].value;
  let checkOut = document.forms["myForm"]["checkOut"].value;
  let children = document.forms["myForm"]["children"].value;
  let price = document.forms["myForm"]["price"].value;
  let salePrice = document.forms["myForm"]["salePrice"].value;
    if (children == "") {
		    alert(" Children must be filled out ");
		    return false;
		  }else if (price == "") {
			    alert(" Price must be entered ");
			    return false;
			  }else if (salePrice == "") {
				    alert(" Sale% must be entered ");
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
	
		<s:form name="myForm" onsubmit="return validateForm()" method="post" modelAttribute="infoRoom" enctype="multipart/form-data"
			action="${pageContext.request.contextPath }/enterprise/addRoom"> 
	<section class="details-info section-padding">
		<div class="container">
			<div class="row">
			
				<div class="col-lg-8">
				
				<input  onchange="showMainImg(this)" type="file" name="mainImage" id="firstimg" style="display:none; visibility: none;"/> 
				
					
					<div class="room-img"><label for="firstimg" ><i class="fa fa-plus "></i><img id="mainImg" src="images/room-details-img1.jpg" alt="room img" class="img-fluid rounded"></label>
					
					</div>
                
              
              	
				</div>
				
				<div class="col-lg-4">
					<div class="booking-form">
						
							<h4 class="color-22 text-center playfair">Reserve Your Room</h4>
							<p class="color-22 text-center">Book with Stuck Hotel</p>
							<span class="divider"></span>
							<div class="group checkin">
								<label for="booking-checkin">CHECK IN Date</label><s:input path="checkIn" name="checkIn"
									type="text" id="booking-checkin" placeholder="MM/DD/YY"
									readonly="true"/>
 									<s:errors path="checkIn" cssClass="format"></s:errors>
							</div>
							<div class="group checkout">
								<label for="booking-checkout">CHECK OUT Date</label><s:input path="checkOut" name="checkOut"
									type="text" id="booking-checkout" placeholder="MM/DD/YY"
									readonly="true"/>
									 <s:errors path="checkOut" cssClass="format"></s:errors>
							</div>
							<div class="group children">
								<label for="children">Children</label><s:input type="text" path="guestChildren"
									name="children" id="children" value="1" readonly="true"/><span
									class="increse"><i class="fa fa-angle-up"></i></span><span
									class="decrese"><i class="fa fa-angle-down"></i></span>
									<p style="color: red;">${errorGuestChildren}</p>
							</div>
							<div class="group adult">
								<label for="children">Adult</label><s:input type="text" path="guestAdult"
									name="children" id="adult" value="1" readonly="true"/><span
									class="increse"><i class="fa fa-angle-up"></i></span><span
									class="decrese"><i class="fa fa-angle-down"></i></span>
									<p style="color: red;">${errorGuestAdult}</p>
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
                                    <td width="1200"><s:textarea path="description" rows="5" cols=""/>
                                     <s:errors path="description" cssClass="format"></s:errors>
                                    </td>
                                       
                                </tr>
                                <tr>
                                    <td>Room Category</td>
                                    <td>
                                    <s:textarea rows="1" path="roomCategory"/>
                                    <s:errors path="roomCategory" cssClass="format"></s:errors>
                                    </td>
                              
                                </tr>
                                <tr>
                                    <td>Price(/1night)</td>
                                  
                                    <td><s:input type="number" rows="1" path="price"/>
                                     <p style="color: red;">${errorprice}</p>
                                    </td>
                                </tr>
                                <tr>
                                    <td>Sale(%)</td>
                                    <td><s:input type="number" rows="1" path="salePrice"/>
                                    <p style="color: red;">${errorssalePrice}</p>
                                    </td>
                                    <s:input type="hidden"  path="account.idAcc" value="${idAcc }"/>
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
						<input  onchange="showExtraImg1(this)" type="file" name="extraImage" id="extraImg1" style="display:none; visibility: none;"/> 
						<label for="extraImg1" ><i class="fa fa-plus "></i><img id="previewExtraImg1" src="images/room-details-img1.jpg" alt="Extra Image 1" class="img-fluid rounded"></label>
					</div>
				</div>
				<div class="col-md-6">
					<div class="img-area">
						<input  onchange="showExtraImg2(this)" type="file" name="extraImage" id="extraImg2" style="display:none; visibility: none;"/> 
						<label for="extraImg2" ><i class="fa fa-plus "></i><img id="previewExtraImg2" src="images/room-details-img1.jpg" alt="Extra Image 2" class="img-fluid rounded"></label>
					</div>
				</div>
				<div class="col-md-6">
					<div class="img-area">
						<input  onchange="showExtraImg3(this)" type="file" name="extraImage" id="extraImg3" style="display:none; visibility: none;"/> 
						<label for="extraImg3" ><i class="fa fa-plus "></i><img id="previewExtraImg3" src="images/room-details-img1.jpg" alt="Extra Image 3" class="img-fluid rounded"></label>
					</div>
				</div>
				
				
				 
				
			
		</div>
	</section>
	<!-- =======================================         ==End hotel view section==   
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
			<div class="row ">
				<div class=" col-12 text-center">
					
			
				<c:forEach var="highlight" items="${highlights }">
					<label class="container2 color-1c text-uppercase">${highlight.nameHighlight }
								
						<s:checkbox path="highlightRoom" value="${highlight.nameHighlight }" />
					<span class="checkmark"></span>	
					</label>			
				</c:forEach>
					
				</div>
			
			</div>
		</div>
	</section>
	
</s:form>
	
	
	</jsp:attribute>
	
</mt:layout_user>
	<script type="text/javascript">
	 function showMainImg(input) {
	        if (input.files && input.files[0]) {
	            var filerdr = new FileReader();
	            filerdr.onload = function (e) {
	                $('#mainImg').attr('src', e.target.result).width(700).height(700);
	            }
	            filerdr.readAsDataURL(input.files[0]);
	        }
	    }
	
	
	 function showExtraImg1(input) {
	        if (input.files && input.files[0]) {
	            var filerdr = new FileReader();
	            filerdr.onload = function (e) {
	                $('#previewExtraImg1').attr('src', e.target.result);
	            }
	            filerdr.readAsDataURL(input.files[0]);
	        }
	    }
	 
	 function showExtraImg2(input) {
	        if (input.files && input.files[0]) {
	            var filerdr = new FileReader();
	            filerdr.onload = function (e) {
	                $('#previewExtraImg2').attr('src', e.target.result);
	            }
	            filerdr.readAsDataURL(input.files[0]);
	        }
	    }
	 
	 
	 function showExtraImg3(input) {
	        if (input.files && input.files[0]) {
	            var filerdr = new FileReader();
	            filerdr.onload = function (e) {
	                $('#previewExtraImg3').attr('src', e.target.result);
	            }
	            filerdr.readAsDataURL(input.files[0]);
	        }
	    }

</script>



