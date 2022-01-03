<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="mt" tagdir="/WEB-INF/tags"%>

<mt:layout_admin title="Index">

	<jsp:attribute name="content">
            
            
            

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
<h2>Room Edit</h2>
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
<li class="active"><a href="#description"><i
											class="fa fa-edit" aria-hidden="true"></i> Product Edit</a></li>
<li><a href="#reviews"><i class="fa fa-picture-o"
											aria-hidden="true"></i> Pictures</a></li>
<li><a href="#INFORMATION"><i class="icon nalika-chat"
											aria-hidden="true"></i> Review</a></li>
</ul>
<div id="myTabContent" class="tab-content custom-product-edit">
<div class="product-tab-list tab-pane fade active in" id="description">
<div class="row">
<div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
<div class="review-content-section">
<div class="input-group mg-b-pro-edt">
<span class="input-group-addon"><i class="icon nalika-user"
															aria-hidden="true"></i></span>
<input type="text" class="form-control" placeholder="First Name">
</div>
<div class="input-group mg-b-pro-edt">
<span class="input-group-addon"><i class="icon nalika-edit"
															aria-hidden="true"></i></span>
<input type="text" class="form-control" placeholder="Product Title">
</div>
<div class="input-group mg-b-pro-edt">
<span class="input-group-addon"><i class="fa fa-usd"
															aria-hidden="true"></i></span>
<input type="text" class="form-control" placeholder="Regular Price">
</div>
<div class="input-group mg-b-pro-edt">
<span class="input-group-addon"><i class="icon nalika-new-file"
															aria-hidden="true"></i></span>
<input type="text" class="form-control" placeholder="Tax">
</div>
<div class="input-group mg-b-pro-edt">
<span class="input-group-addon"><i class="icon nalika-favorites"
															aria-hidden="true"></i></span>
 <input type="text" class="form-control" placeholder="Quantity">
</div>
</div>
</div>
<div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
<div class="review-content-section">
<div class="input-group mg-b-pro-edt">
<span class="input-group-addon"><i class="icon nalika-user"
															aria-hidden="true"></i></span>
<input type="text" class="form-control" placeholder="Last Name">
</div>
<div class="input-group mg-b-pro-edt">
<span class="input-group-addon"><i
															class="icon nalika-favorites-button" aria-hidden="true"></i></span>
<input type="text" class="form-control"
															placeholder="Product Description">
</div>
<div class="input-group mg-b-pro-edt">
<span class="input-group-addon"><i class="fa fa-usd"
															aria-hidden="true"></i></span>
<input type="text" class="form-control" placeholder="Sale Price">
</div>
<div class="input-group mg-b-pro-edt">
<span class="input-group-addon"><i class="icon nalika-like"
															aria-hidden="true"></i></span>
<input type="text" class="form-control" placeholder="Category">
</div>
<select name="select"
														class="form-control pro-edt-select form-control-primary">
<option value="opt1">Select One Value Only</option>
<option value="opt2">2</option>
<option value="opt3">3</option>
<option value="opt4">4</option>
<option value="opt5">5</option>
<option value="opt6">6</option>
</select>
</div>
</div>
</div>
<div class="row">
<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
<div class="text-center custom-pro-edt-ds">
<button type="button"
														class="btn btn-ctl-bt waves-effect waves-light m-r-10">Save
</button>
<button type="button" class="btn btn-ctl-bt waves-effect waves-light">Discard
</button>
</div>
</div>
</div>
</div>
<div class="product-tab-list tab-pane fade" id="reviews">
<div class="row">
<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
<div class="review-content-section">
<div class="row">
<div class="col-lg-4">
 <div class="pro-edt-img">
<img src="img/new-product/5-small.jpg" alt="" />
</div>
</div>
<div class="col-lg-8">
<div class="row">
<div class="col-lg-12">
<div class="product-edt-pix-wrap">
<div class="input-group">
<span class="input-group-addon">TT</span>
<input type="text" class="form-control" placeholder="Label Name">
</div>
<div class="row">
<div class="col-lg-6">
<div class="form-radio">
<form>
<div class="radio radiofill">
<label>
<input type="radio" name="radio"><i class="helper"></i>Largest Image
</label>
</div>
<div class="radio radiofill">
<label>
<input type="radio" name="radio"><i class="helper"></i>Medium Image
</label>
</div>
<div class="radio radiofill">
<label>
<input type="radio" name="radio"><i class="helper"></i>Small Image
</label>
</div>
</form>
</div>
</div>
<div class="col-lg-6">
<div class="product-edt-remove">
<button type="button" class="btn btn-ctl-bt waves-effect waves-light">Remove
<i class="fa fa-times" aria-hidden="true"></i>
</button>
</div>
</div>
</div>
</div>
</div>
</div>
</div>
 </div>
<div class="row">
<div class="col-lg-4">
<div class="pro-edt-img">
<img src="img/new-product/6-small.jpg" alt="" />
</div>
</div>
<div class="col-lg-8">
<div class="row">
<div class="col-lg-12">
<div class="product-edt-pix-wrap">
<div class="input-group">
<span class="input-group-addon">TT</span>
<input type="text" class="form-control" placeholder="Label Name">
</div>
<div class="row">
<div class="col-lg-6">
<div class="form-radio">
<form>
<div class="radio radiofill">
<label>
<input type="radio" name="radio"><i class="helper"></i>Largest Image
</label>
</div>
<div class="radio radiofill">
<label>
<input type="radio" name="radio"><i class="helper"></i>Medium Image
</label>
</div>
<div class="radio radiofill">
<label>
<input type="radio" name="radio"><i class="helper"></i>Small Image
</label>
</div>
</form>
</div>
</div>
<div class="col-lg-6">
<div class="product-edt-remove">
<button type="button" class="btn btn-ctl-bt waves-effect waves-light">Remove
<i class="fa fa-times" aria-hidden="true"></i>
</button>
</div>
</div>
</div>
</div>
</div>
</div>
</div>
</div>
<div class="row">
<div class="col-lg-4">
<div class="pro-edt-img mg-b-0">
<img src="img/new-product/7-small.jpg" alt="" />
</div>
</div>
<div class="col-lg-8">
<div class="row">
<div class="col-lg-12">
<div class="product-edt-pix-wrap">
<div class="input-group">
<span class="input-group-addon">TT</span>
<input type="text" class="form-control" placeholder="Label Name">
</div>
<div class="row">
<div class="col-lg-6">
<div class="form-radio">
<form>
<div class="radio radiofill">
<label>
<input type="radio" name="radio"><i class="helper"></i>Largest Image
</label>
</div>
<div class="radio radiofill">
<label>
<input type="radio" name="radio"><i class="helper"></i>Medium Image
</label>
</div>
<div class="radio radiofill">
<label>
<input type="radio" name="radio"><i class="helper"></i>Small Image
</label>
</div>
</form>
</div>
</div>
<div class="col-lg-6">
<div class="product-edt-remove">
<button type="button" class="btn btn-ctl-bt waves-effect waves-light">Remove
<i class="fa fa-times" aria-hidden="true"></i>
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
</div>
</div>
</div>
<div class="product-tab-list tab-pane fade" id="INFORMATION">
<div class="row">
<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
<div class="review-content-section">
<div class="card-block">
<div class="text-muted f-w-400">
<p>No reviews yet.</p>
</div>
<div class="m-t-10">
<div class="txt-primary f-18 f-w-600">
<p>Your Rating</p>
</div>
<div class="stars stars-example-css detail-stars">
<div class="review-rating">
<fieldset class="rating">
<input type="radio" id="star5" name="rating" value="5">
<label class="full" for="star5"></label>
<input type="radio" id="star4half" name="rating" value="4 and a half">
<label class="half" for="star4half"></label>
<input type="radio" id="star4" name="rating" value="4">
<label class="full" for="star4"></label>
<input type="radio" id="star3half" name="rating" value="3 and a half">
<label class="half" for="star3half"></label>
<input type="radio" id="star3" name="rating" value="3">
<label class="full" for="star3"></label>
<input type="radio" id="star2half" name="rating" value="2 and a half">
<label class="half" for="star2half"></label>
<input type="radio" id="star2" name="rating" value="2">
<label class="full" for="star2"></label>
<input type="radio" id="star1half" name="rating" value="1 and a half">
<label class="half" for="star1half"></label>
 <input type="radio" id="star1" name="rating" value="1">
<label class="full" for="star1"></label>
<input type="radio" id="starhalf" name="rating" value="half">
<label class="half" for="starhalf"></label>
</fieldset>
</div>
<div class="clear"></div>
</div>
</div>
<div class="input-group mg-b-15 mg-t-15">
<span class="input-group-addon"><i class="icon nalika-user"
																aria-hidden="true"></i></span>
<input type="text" class="form-control" placeholder="User Name">
</div>
<div class="input-group mg-b-15">
<span class="input-group-addon"><i class="icon nalika-user"
																aria-hidden="true"></i></span>
<input type="text" class="form-control" placeholder="Last Name">
</div>
<div class="input-group mg-b-15">
<span class="input-group-addon"><i class="icon nalika-mail"
																aria-hidden="true"></i></span>
<input type="text" class="form-control" placeholder="Email">
</div>
<div class="form-group review-pro-edt mg-b-0-pt">
<button type="submit" class="btn btn-ctl-bt waves-effect waves-light">Submit
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
</div>
</div>
</div>
</div>
 
       
       	</jsp:attribute>
</mt:layout_admin>
