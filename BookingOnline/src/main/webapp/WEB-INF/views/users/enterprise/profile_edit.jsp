
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@ taglib prefix="mt" tagdir="/WEB-INF/tags" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    <%@ taglib prefix="s" uri="http://www.springframework.org/tags/form"%>
    <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700" rel="stylesheet">
    <link rel="stylesheet" href="${pageContext.request.contextPath }/webapp/static/layout_update_profile_enterprise/css/style.css">

<mt:layout_user title="Add Room">

	<jsp:attribute name="content">

<s:form method="post" modelAttribute="account" enctype="multipart/form-data"
			action="${pageContext.request.contextPath }/enterprise/editAcc">       

	<div class="main-content">
	    
	    <!-- Header -->
	    <div class="header pb-8 pt-5 pt-lg-8 d-flex align-items-center" style="min-height: 600px; background-image: url(https://raw.githack.com/creativetimofficial/argon-dashboard/master/assets/img/theme/profile-cover.jpg); background-size: cover; background-position: center top;">
	      <!-- Mask -->
	      <span class="mask bg-gradient-default opacity-8"></span>
	      <!-- Header container -->
	      <div class="container-fluid d-flex align-items-center">
	        <div class="row">
	          <div class="col-lg-7 col-md-10">
	            <h1 class="display-2 text-white">Hello ${pageContext.request.userPrincipal.name }</h1>
	            <p class="text-white mt-0 mb-5">This is your profile page. You can see the progress you've made with your work and manage your projects or assigned tasks</p>
	            
	          </div>
	        </div>
	      </div>
	    </div>
	    <!-- Page content -->
	    <div class="container-fluid mt--7">
	      <div class="row">
	        <div class="col-xl-4 order-xl-2 mb-5 mb-xl-0">
	          <div class="card card-profile shadow">
	            <div class="row justify-content-center">
	              <div class="col-lg-3 order-lg-2">
	                <div class="card-profile-image">
	                  <a href="#">
	                    <img id="school_img" src="${pageContext.request.contextPath }/webapp/assets/uploads/${avatar}" class="rounded-circle">
	                  </a>
	                </div>
	                
	              </div>
	              
	            </div>
	            <div class="card-header text-center border-0 pt-8 pt-md-4 pb-0 pb-md-4">
	              <div class="d-flex justify-content-between">
	                <input type="file" name="file" onchange="show(this)" >
	                <a href="#" class="btn btn-sm btn-default float-right">Message</a>
	              </div>
	            </div>
	            
	            <div class="card-body pt-0 pt-md-4">
	            
	              <div class="row">
	                <div class="col">
	                  <div class="card-profile-stats d-flex justify-content-center mt-md-5">
	                    <div>
	                      <span class="heading">22</span>
	                      <span class="description">Friends</span>
	                    </div>
	                    <div>
	                      <span class="heading">10</span>
	                      <span class="description">Photos</span>
	                    </div>
	                    <div>
	                      <span class="heading">89</span>
	                      <span class="description">Comments</span>
	                    </div>
	                  </div>
	                </div>
	              </div>
	              <div class="text-center">
	                <h3>
	                  Jessica Jones<span class="font-weight-light">, 27</span>
	                </h3>
	                <div class="h5 font-weight-300">
	                  <i class="ni location_pin mr-2"></i>Bucharest, Romania
	                </div>
	                <div class="h5 mt-4">
	                  <i class="ni business_briefcase-24 mr-2"></i>Solution Manager - Creative Tim Officer
	                </div>
	                <div>
	                  <i class="ni education_hat mr-2"></i>University of Computer Science
	                </div>
	                <hr class="my-4">
	                <p>Ryan the name taken by Melbourne-raised, Brooklyn-based Nick Murphy writes, performs and records all of his own music.</p>
	                <a href="#">Show more</a>
	              </div>
	            </div>
	          </div>
	        </div>
	        
	        
	        
	        
		        <div class="col-xl-8 order-xl-1">
		          <div class="card bg-secondary shadow">
		            <div class="card-header bg-white border-0">
		              <div class="row align-items-center">
		                <div class="col-8">
		                  <h3 class="mb-0">My account</h3>
		                </div>
		                <div class="col-4 text-right">
		                  <a href="#!" class="btn btn-sm btn-primary">Settings</a>
		                </div>
		              </div>
		            </div>
		            <div class="card-body">
		            
		              <form>
		                <div class="pl-lg-4">
		                  <div class="row">
		                    <div class="col-lg-6">
		                      <div class="form-group focused">
		                        <label class="form-control-label" for="input-username">Username</label>
		                        <s:input readonly="true"  type="text"  class="form-control form-control-alternative" path="username" />
		                      </div>
		                    </div>
		                    <div class="col-lg-6">
		                      <div class="form-group">
		                        <label class="form-control-label" for="input-email">Email address</label>
		                        <s:input type="email" class="form-control form-control-alternative" path="email"/>
		                      </div>
		                    </div>
		                  </div>
		                  <div class="row">
		                    <div class="col-lg-6">
		                      <div class="form-group focused">
		                        <label class="form-control-label" for="input-first-name">Fullname's enterprise</label>
		                        <s:input type="text" class="form-control form-control-alternative" path="name"/>
		                      </div>
		                    </div>
		                    <div class="col-lg-6">
		                      <div class="form-group focused">
		                        <label class="form-control-label" for="input-last-name">Phone numer</label>
		                        <s:input type="text" class="form-control form-control-alternative" path="phone"/>
		                      </div>
		                    </div>
		                  </div>
		                </div>
		                <hr class="my-4">
		                <!-- Address -->
		                <div class="pl-lg-4">
		                  <div class="row">
		                    <div class="col-md-12">
		                      <div class="form-group focused">
		                        <label class="form-control-label" for="input-address">Address</label>
		                        <s:input class="form-control form-control-alternative" path="location" type="text"/>
		                      </div>
		                    </div>
		                  </div>
		                  
		                </div>
		                <div class="btn btn-ctl-bt waves-effect waves-light m-r-10" >
                        	<span>&nbsp;</span>
                            <input style="color: black;" type="submit" value="Submit" class="submit " id="submit" name="submit" />
                            <s:hidden path="idAcc"/>
                            <s:hidden path="idRole"/>
						</div>
		                
		              </form>
		              
		            </div>
		          </div>
	        
	        </div>
	      </div>
	    </div>
	  </div>
</s:form>
	</jsp:attribute>
</mt:layout_user>

<script type="text/javascript">

    function show(input) {
        if (input.files && input.files[0]) {
            var filerdr = new FileReader();
            filerdr.onload = function (e) {
                $('#school_img').attr('src', e.target.result);
            }
            filerdr.readAsDataURL(input.files[0]);
        }
    }
</script>