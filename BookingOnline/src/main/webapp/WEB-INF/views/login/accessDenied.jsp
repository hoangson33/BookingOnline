<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<title>Access Denied</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0"/>
<meta charset="UTF-8">
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/accessdenied/accessdenied.css">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
</head>
<body>
<div class="w3-display-middle">
<h1 class="w3-jumbo w3-animate-top w3-center"><code>Access Denied</code></h1>

<hr class="w3-border-white w3-animate-left" style="margin:auto;width:50%">
<h3 class="w3-center w3-animate-right">You dont have permission to view this site.</h3>

<h6 class="w3-center w3-animate-zoom">error code:403 forbidden</h6>
  <h3 class="w3-center w3-animate-right"><a href="${pageContext.request.contextPath }/home/index">Back to Home</a></h3>

</div>
</body>
</html>