<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
    <%@ taglib prefix="s" uri="http://www.springframework.org/tags/form" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="ISO-8859-1">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Sign Up Form</title>

    <!-- Font Icon -->
    <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/layout_registration/fonts/material-icon/css/material-design-iconic-font.min.css">

    <!-- Main css -->
    <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/layout_registration/css/style.css">
    
    	<link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
	<style>
	.container {
	  margin-top: 20px;
	}
	</style>
	
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js" type="text/javascript" ></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js" type="text/javascript" ></script>
	<script src="${pageContext.request.contextPath }/resources/layout_registration/auto-complete.js" type="text/javascript" ></script>
</head>
<body>

    <div class="main">

        <div class="container">
            <div class="booking-content">
                <div class="booking-image">
                    <img class="booking-img" src="${pageContext.request.contextPath }/resources/layout_registration/images/form-img.jpg" alt="Booking Image">
                </div>
                <div class="booking-form">
                    <s:form id="booking-form" method="post" modelAttribute="account" 
	action="${pageContext.request.contextPath }/registration/add">
                        <h2 style="color: white;">The best service for your tour!</h2>
                        <div class="form-group form-input">
                            <s:input path="name" style="color: white;" type="text" name="name"/>
                            <label for="name" class="form-label">Your name</label>
                        </div>
                        <div class="form-group form-input">
                            <s:input path="username" style="color: white;" type="text" name="username"  />
                            <label for="name" class="form-label">Username</label>
                        </div>
                        <div class="form-group form-input">
                            <s:input path="password" style="color: white;" type="password" name="name"  />
                            <label for="name" class="form-label">Password</label>
                        </div>
                        <div class="form-group form-input">
                            <s:input path="email" style="color: white;" type="text" name="email"  />
                            <label for="email" class="form-label">Email</label>
                        </div>
                        <div class="form-group form-input">
                            <s:input path="phone" type="number" name="phone" id="phone" value=""  />
                            <label for="phone" class="form-label">Your phone number</label>
                        </div>
                        <div class="form-group">
                            <div class="select-list">
                                <s:select style="color: white;" path="gender">
                                    <s:option style="color: black;" value="">Gender</s:option>
                                    <s:option style="color: black;" value="male">Male</s:option>
                                    <s:option style="color: black;" value="female">Female</s:option>
                                    <s:option style="color: black;" value="orthers">Orthers</s:option>
                                </s:select>
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="select-list">
                                <s:select style="color: white;" path="idRole">
                                    <s:option style="color: black;" value="">Role</s:option>
                                    <s:option style="color: black;" value="ROLE_ENTERPRISE">Enterprise</s:option>
                                    <s:option style="color: black;" value="ROLE_CUSTOMER">Customer</s:option>
                                </s:select>
                            </div>
                        </div>
                        
                        <div class="form-group form-input">
                            <s:input path="location" id="autocomplete" placeholder="Enter your address" onFocus="geolocate()" type="text" class="form-control" />
                            
                        </div>
  
                        

                        <div class="form-submit">
                        	<span>&nbsp;</span>
                            <input type="submit" value="Submit" class="submit" id="submit" name="submit" />
                        </div>
                    </s:form>
                </div>
            </div>
        </div>

    </div>

    <!-- JS -->
    <script src="${pageContext.request.contextPath }/resources/layout_registration/vendor/jquery/jquery.min.js"></script>
    <script src="${pageContext.request.contextPath }/resources/layout_registration/js/main.js"></script>
    <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyAVSJqJj8rUJ4BRT56Q2kouF_ZP3hvNu8s&libraries=places&callback=initAutocomplete" async defer></script>
</body>

</html>