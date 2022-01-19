<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="mt" tagdir="/WEB-INF/tags"%>
<%@ taglib prefix="s" uri="http://www.springframework.org/tags/form"%>

<mt:layout_admin title="Index">

	<jsp:attribute name="content">
            
            
<s:form method="post" modelAttribute="account"
			action="${pageContext.request.contextPath }/admin/addAcc">            
   	 <link href="${pageContext.request.contextPath }/webapp/validation/style.css" rel="stylesheet">
           <div class="mobile-menu-area">
<div class="container">
<div class="row">
<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
<div class="mobile-menu">
<nav id="dropdown">
<ul class="mobile-menu-nav">
<li><a data-toggle="collapse" data-target="#Charts" href="#">Home <span
												class="admin-project-icon nalika-icon nalika-down-arrow"></span></a>
<ul class="collapse dropdown-header-top">
<li><a href="index.html">Dashboard v.1</a></li>
<li><a href="index-1.html">Dashboard v.2</a></li>
<li><a href="index-3.html">Dashboard v.3</a></li>
<li><a href="product-list.html">Product List</a></li>
<li><a href="product-edit.html">Product Edit</a></li>
<li><a href="product-detail.html">Product Detail</a></li>
<li><a href="product-cart.html">Product Cart</a></li>
<li><a href="product-payment.html">Product Payment</a></li>
<li><a href="analytics.html">Analytics</a></li>
<li><a href="widgets.html">Widgets</a></li>
</ul>
</li>
<li><a data-toggle="collapse" data-target="#demo" href="#">Mailbox <span
												class="admin-project-icon nalika-icon nalika-down-arrow"></span></a>
<ul id="demo" class="collapse dropdown-header-top">
<li><a href="mailbox.html">Inbox</a>
</li>
<li><a href="mailbox-view.html">View Mail</a>
</li>
<li><a href="mailbox-compose.html">Compose Mail</a>
</li>
</ul>
</li>
<li><a data-toggle="collapse" data-target="#others" href="#">Miscellaneous <span
												class="admin-project-icon nalika-icon nalika-down-arrow"></span></a>
<ul id="others" class="collapse dropdown-header-top">
<li><a href="file-manager.html">File Manager</a></li>
<li><a href="contacts.html">Contacts Client</a></li>
<li><a href="projects.html">Project</a></li>
<li><a href="project-details.html">Project Details</a></li>
<li><a href="blog.html">Blog</a></li>
<li><a href="blog-details.html">Blog Details</a></li>
<li><a href="404.html">404 Page</a></li>
<li><a href="500.html">500 Page</a></li>
</ul>
</li>
<li><a data-toggle="collapse" data-target="#Miscellaneousmob"
											href="#">Interface <span
												class="admin-project-icon nalika-icon nalika-down-arrow"></span></a>
<ul id="Miscellaneousmob" class="collapse dropdown-header-top">
<li><a href="google-map.html">Google Map</a>
</li>
<li><a href="data-maps.html">Data Maps</a>
</li>
<li><a href="pdf-viewer.html">Pdf Viewer</a>
</li>
<li><a href="x-editable.html">X-Editable</a>
</li>
<li><a href="code-editor.html">Code Editor</a>
</li>
<li><a href="tree-view.html">Tree View</a>
</li>
<li><a href="preloader.html">Preloader</a>
</li>
<li><a href="images-cropper.html">Images Cropper</a>
</li>
</ul>
</li>
<li><a data-toggle="collapse" data-target="#Chartsmob" href="#">Charts <span
												class="admin-project-icon nalika-icon nalika-down-arrow"></span></a>
<ul id="Chartsmob" class="collapse dropdown-header-top">
<li><a href="bar-charts.html">Bar Charts</a>
</li>
<li><a href="line-charts.html">Line Charts</a>
</li>
<li><a href="area-charts.html">Area Charts</a>
</li>
<li><a href="rounded-chart.html">Rounded Charts</a>
</li>
<li><a href="c3.html">C3 Charts</a>
</li>
<li><a href="sparkline.html">Sparkline Charts</a>
</li>
<li><a href="peity.html">Peity Charts</a>
</li>
</ul>
</li>
<li><a data-toggle="collapse" data-target="#Tablesmob" href="#">Tables <span
												class="admin-project-icon nalika-icon nalika-down-arrow"></span></a>
<ul id="Tablesmob" class="collapse dropdown-header-top">
<li><a href="static-table.html">Static Table</a>
</li>
<li><a href="data-table.html">Data Table</a>
</li>
</ul>
</li>
<li><a data-toggle="collapse" data-target="#formsmob" href="#">Forms <span
												class="admin-project-icon nalika-icon nalika-down-arrow"></span></a>
<ul id="formsmob" class="collapse dropdown-header-top">
<li><a href="basic-form-element.html">Basic Form Elements</a>
 </li>
<li><a href="advance-form-element.html">Advanced Form Elements</a>
</li>
<li><a href="password-meter.html">Password Meter</a>
</li>
<li><a href="multi-upload.html">Multi Upload</a>
</li>
<li><a href="tinymc.html">Text Editor</a>
</li>
<li><a href="dual-list-box.html">Dual List Box</a>
</li>
</ul>
</li>
<li><a data-toggle="collapse" data-target="#Appviewsmob" href="#">App views <span
												class="admin-project-icon nalika-icon nalika-down-arrow"></span></a>
<ul id="Appviewsmob" class="collapse dropdown-header-top">
<li><a href="basic-form-element.html">Basic Form Elements</a>
</li>
<li><a href="advance-form-element.html">Advanced Form Elements</a>
</li>
<li><a href="password-meter.html">Password Meter</a>
</li>
<li><a href="multi-upload.html">Multi Upload</a>
</li>
<li><a href="tinymc.html">Text Editor</a>
</li>
<li><a href="dual-list-box.html">Dual List Box</a>
</li>
</ul>
</li>
<li><a data-toggle="collapse" data-target="#Pagemob" href="#">Pages <span
												class="admin-project-icon nalika-icon nalika-down-arrow"></span></a>
<ul id="Pagemob" class="collapse dropdown-header-top">
<li><a href="login.html">Login</a>
</li>
<li><a href="register.html">Register</a>
</li>
<li><a href="lock.html">Lock</a>
</li>
<li><a href="password-recovery.html">Password Recovery</a>
</li>
</ul>
</li>
</ul>
</nav>
</div>
</div>
</div>
</div>
</div>

<div class="breadcome-area">
<div class="container-fluid">
<div class="row">
<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
<div class="breadcome-list">
<div class="row">
<div class="col-lg-6 col-md-6 col-sm-6 col-xs-6">
<div class="breadcomb-wp">
<div class="breadcomb-icon">
<i class="fa fa-home"></i>
</div>
<div class="breadcomb-ctn">
<h2>Add Account</h2>
<p>Welcome to Nalika <span class="bread-ntd">Admin Template</span>
											</p>
</div>
</div>
</div>
<div class="col-lg-6 col-md-6 col-sm-6 col-xs-6">
<div class="breadcomb-report">
<button data-toggle="tooltip" data-placement="left"
												title="Download Report" class="btn">
											<i class="icon nalika-download"></i>
										</button>
</div>
</div>
</div>
</div>
</div>
</div>
</div>
</div>
</div>

<div class="single-product-tab-area mg-b-30">

<div class="single-pro-review-area">
<div class="container-fluid">
<div class="row">
<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
<div class="review-tab-pro-inner">
<ul id="myTab3" class="tab-review-design">
<li class="active"><a href="#description"><i class="fa fa-edit"
												aria-hidden="true"></i> Account Add</a></li>
</ul>
<div id="myTabContent" class="tab-content custom-product-edit">
<div class="product-tab-list tab-pane fade active in" id="description">
<div class="row">
<div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
<div class="review-content-section">


<div class="input-group mg-b-pro-edt">
<span class="input-group-addon"><i class="icon nalika-user"
																aria-hidden="true"></i></span>
<s:input path="username" type="text" class="form-control"
																placeholder="Username" />														
</div>
	<s:errors path="username" cssClass="format"></s:errors>


<div class="input-group mg-b-pro-edt">
<span class="input-group-addon"><i class="icon nalika-edit"
																aria-hidden="true"></i></span>
<s:input path="password" type="password" class="form-control"
																placeholder="Password" />
</div>
																<s:errors path="password" cssClass="format"></s:errors>


<div class="input-group mg-b-pro-edt">
<span class="input-group-addon"><i class="fa fa-envelope"
																aria-hidden="true"></i></span>
<s:input path="email" type="text" class="form-control"
																placeholder="Email" />																								
</div>
<s:errors path="email" cssClass="format"></s:errors>
  	   <p style="color: red;">${error}</p>
                              <p style="color: red;">${errors}</p>
						    

<div class="input-group mg-b-pro-edt">
<span class="input-group-addon"><i class="icon nalika-new-file"
																aria-hidden="true"></i></span>
<s:input path="name" type="text" class="form-control"
																placeholder="First Name And Last Name" />																
</div>
<s:errors path="name" cssClass="format"></s:errors>

<s:select path="gender" class="form-control pro-edt-select form-control-primary">
 <s:option value="">Gender</s:option>
 <s:option value="male">Male</s:option>
 <s:option value="female">Female</s:option>
 <s:option value="orthers">Orthers</s:option>
  <s:errors path="gender" cssClass="format"></s:errors>
</s:select>



</div>
</div>


<div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
<div class="review-content-section">



<div class="input-group mg-b-pro-edt">
<span class="input-group-addon"><i class="icon nalika-user"
																aria-hidden="true"></i></span>
<s:input path="location" type="text" class="form-control" placeholder="Address"/>
<s:errors path="location" cssClass="format"></s:errors>
</div>



<div class="input-group mg-b-pro-edt">
<span class="input-group-addon"><i class="icon nalika-favorites-button" aria-hidden="true"></i></span>
<s:input path="phone" type="number" class="form-control" placeholder="Phone"/>
</div>
 <p style="color: red;">${errorphone}</p>


<div class="input-group mg-b-pro-edt">
<span class="input-group-addon"><i class="icon nalika-user"
																aria-hidden="true"></i></span>
<s:input path="locationDetail" type="text" class="form-control" placeholder="City"/>
</div>
<s:errors path="locationDetail" cssClass="format"></s:errors>
<s:select path="idRole" class="form-control pro-edt-select form-control-primary">
 <s:option value="">Role</s:option>
 <s:option value="ROLE_ENTERPRISE">Enterprise</s:option>
 <s:option value="ROLE_CUSTOMER">Customer</s:option>
</s:select>




</div>
</div>
</div>
<div class="row">
<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
<div class="text-center custom-pro-edt-ds">

<div class="btn btn-ctl-bt waves-effect waves-light m-r-10" >
                        	<span>&nbsp;</span>
                            <input style="color: black;" type="submit" value="Submit" class="submit " id="submit" name="submit" />
                            
</div>

<button type="button" class="btn btn-ctl-bt waves-effect waves-light">Discard
</button>
</div>
</div>
</div>
</div>

 

 </s:form>
       
       	</jsp:attribute>
</mt:layout_admin>


