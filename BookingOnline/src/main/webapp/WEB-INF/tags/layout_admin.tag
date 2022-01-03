<%@ tag language="java" pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@ attribute name="title" required="true" rtexprvalue="true"
type="java.lang.String"%>
<%@ attribute name="content" fragment="true"%>
<%@ taglib prefix="mt" uri="http://mytags.vn" %>




<!doctype html>
<html class="no-js" lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="x-ua-compatible" content="ie=edge">
<title>Dashboard V.1 | Nalika - Material Admin Template</title>
<meta name="description" content="">
<meta name="viewport" content="width=device-width, initial-scale=1">

<link rel="shortcut icon" type="image/x-icon" href="${pageContext.request.contextPath }/resources/layout_admin/img/favicon.ico">



<style id="" media="all">/* cyrillic-ext */
@font-face {
  font-family: 'Roboto';
  font-style: normal;
  font-weight: 100;
  src: url(/fonts.gstatic.com/s/roboto/v29/KFOkCnqEu92Fr1MmgVxFIzIFKw.woff2) format('woff2');
  unicode-range: U+0460-052F, U+1C80-1C88, U+20B4, U+2DE0-2DFF, U+A640-A69F, U+FE2E-FE2F;
}
/* cyrillic */
@font-face {
  font-family: 'Roboto';
  font-style: normal;
  font-weight: 100;
  src: url(/fonts.gstatic.com/s/roboto/v29/KFOkCnqEu92Fr1MmgVxMIzIFKw.woff2) format('woff2');
  unicode-range: U+0400-045F, U+0490-0491, U+04B0-04B1, U+2116;
}
/* greek-ext */
@font-face {
  font-family: 'Roboto';
  font-style: normal;
  font-weight: 100;
  src: url(/fonts.gstatic.com/s/roboto/v29/KFOkCnqEu92Fr1MmgVxEIzIFKw.woff2) format('woff2');
  unicode-range: U+1F00-1FFF;
}
/* greek */
@font-face {
  font-family: 'Roboto';
  font-style: normal;
  font-weight: 100;
  src: url(/fonts.gstatic.com/s/roboto/v29/KFOkCnqEu92Fr1MmgVxLIzIFKw.woff2) format('woff2');
  unicode-range: U+0370-03FF;
}
/* vietnamese */
@font-face {
  font-family: 'Roboto';
  font-style: normal;
  font-weight: 100;
  src: url(/fonts.gstatic.com/s/roboto/v29/KFOkCnqEu92Fr1MmgVxHIzIFKw.woff2) format('woff2');
  unicode-range: U+0102-0103, U+0110-0111, U+0128-0129, U+0168-0169, U+01A0-01A1, U+01AF-01B0, U+1EA0-1EF9, U+20AB;
}
/* latin-ext */
@font-face {
  font-family: 'Roboto';
  font-style: normal;
  font-weight: 100;
  src: url(/fonts.gstatic.com/s/roboto/v29/KFOkCnqEu92Fr1MmgVxGIzIFKw.woff2) format('woff2');
  unicode-range: U+0100-024F, U+0259, U+1E00-1EFF, U+2020, U+20A0-20AB, U+20AD-20CF, U+2113, U+2C60-2C7F, U+A720-A7FF;
}
/* latin */
@font-face {
  font-family: 'Roboto';
  font-style: normal;
  font-weight: 100;
  src: url(/fonts.gstatic.com/s/roboto/v29/KFOkCnqEu92Fr1MmgVxIIzI.woff2) format('woff2');
  unicode-range: U+0000-00FF, U+0131, U+0152-0153, U+02BB-02BC, U+02C6, U+02DA, U+02DC, U+2000-206F, U+2074, U+20AC, U+2122, U+2191, U+2193, U+2212, U+2215, U+FEFF, U+FFFD;
}
/* cyrillic-ext */
@font-face {
  font-family: 'Roboto';
  font-style: normal;
  font-weight: 300;
  src: url(/fonts.gstatic.com/s/roboto/v29/KFOlCnqEu92Fr1MmSU5fCRc4EsA.woff2) format('woff2');
  unicode-range: U+0460-052F, U+1C80-1C88, U+20B4, U+2DE0-2DFF, U+A640-A69F, U+FE2E-FE2F;
}
/* cyrillic */
@font-face {
  font-family: 'Roboto';
  font-style: normal;
  font-weight: 300;
  src: url(/fonts.gstatic.com/s/roboto/v29/KFOlCnqEu92Fr1MmSU5fABc4EsA.woff2) format('woff2');
  unicode-range: U+0400-045F, U+0490-0491, U+04B0-04B1, U+2116;
}
/* greek-ext */
@font-face {
  font-family: 'Roboto';
  font-style: normal;
  font-weight: 300;
  src: url(/fonts.gstatic.com/s/roboto/v29/KFOlCnqEu92Fr1MmSU5fCBc4EsA.woff2) format('woff2');
  unicode-range: U+1F00-1FFF;
}
/* greek */
@font-face {
  font-family: 'Roboto';
  font-style: normal;
  font-weight: 300;
  src: url(/fonts.gstatic.com/s/roboto/v29/KFOlCnqEu92Fr1MmSU5fBxc4EsA.woff2) format('woff2');
  unicode-range: U+0370-03FF;
}
/* vietnamese */
@font-face {
  font-family: 'Roboto';
  font-style: normal;
  font-weight: 300;
  src: url(/fonts.gstatic.com/s/roboto/v29/KFOlCnqEu92Fr1MmSU5fCxc4EsA.woff2) format('woff2');
  unicode-range: U+0102-0103, U+0110-0111, U+0128-0129, U+0168-0169, U+01A0-01A1, U+01AF-01B0, U+1EA0-1EF9, U+20AB;
}
/* latin-ext */
@font-face {
  font-family: 'Roboto';
  font-style: normal;
  font-weight: 300;
  src: url(/fonts.gstatic.com/s/roboto/v29/KFOlCnqEu92Fr1MmSU5fChc4EsA.woff2) format('woff2');
  unicode-range: U+0100-024F, U+0259, U+1E00-1EFF, U+2020, U+20A0-20AB, U+20AD-20CF, U+2113, U+2C60-2C7F, U+A720-A7FF;
}
/* latin */
@font-face {
  font-family: 'Roboto';
  font-style: normal;
  font-weight: 300;
  src: url(/fonts.gstatic.com/s/roboto/v29/KFOlCnqEu92Fr1MmSU5fBBc4.woff2) format('woff2');
  unicode-range: U+0000-00FF, U+0131, U+0152-0153, U+02BB-02BC, U+02C6, U+02DA, U+02DC, U+2000-206F, U+2074, U+20AC, U+2122, U+2191, U+2193, U+2212, U+2215, U+FEFF, U+FFFD;
}
/* cyrillic-ext */
@font-face {
  font-family: 'Roboto';
  font-style: normal;
  font-weight: 400;
  src: url(/fonts.gstatic.com/s/roboto/v29/KFOmCnqEu92Fr1Mu72xKOzY.woff2) format('woff2');
  unicode-range: U+0460-052F, U+1C80-1C88, U+20B4, U+2DE0-2DFF, U+A640-A69F, U+FE2E-FE2F;
}
/* cyrillic */
@font-face {
  font-family: 'Roboto';
  font-style: normal;
  font-weight: 400;
  src: url(/fonts.gstatic.com/s/roboto/v29/KFOmCnqEu92Fr1Mu5mxKOzY.woff2) format('woff2');
  unicode-range: U+0400-045F, U+0490-0491, U+04B0-04B1, U+2116;
}
/* greek-ext */
@font-face {
  font-family: 'Roboto';
  font-style: normal;
  font-weight: 400;
  src: url(/fonts.gstatic.com/s/roboto/v29/KFOmCnqEu92Fr1Mu7mxKOzY.woff2) format('woff2');
  unicode-range: U+1F00-1FFF;
}
/* greek */
@font-face {
  font-family: 'Roboto';
  font-style: normal;
  font-weight: 400;
  src: url(/fonts.gstatic.com/s/roboto/v29/KFOmCnqEu92Fr1Mu4WxKOzY.woff2) format('woff2');
  unicode-range: U+0370-03FF;
}
/* vietnamese */
@font-face {
  font-family: 'Roboto';
  font-style: normal;
  font-weight: 400;
  src: url(/fonts.gstatic.com/s/roboto/v29/KFOmCnqEu92Fr1Mu7WxKOzY.woff2) format('woff2');
  unicode-range: U+0102-0103, U+0110-0111, U+0128-0129, U+0168-0169, U+01A0-01A1, U+01AF-01B0, U+1EA0-1EF9, U+20AB;
}
/* latin-ext */
@font-face {
  font-family: 'Roboto';
  font-style: normal;
  font-weight: 400;
  src: url(/fonts.gstatic.com/s/roboto/v29/KFOmCnqEu92Fr1Mu7GxKOzY.woff2) format('woff2');
  unicode-range: U+0100-024F, U+0259, U+1E00-1EFF, U+2020, U+20A0-20AB, U+20AD-20CF, U+2113, U+2C60-2C7F, U+A720-A7FF;
}
/* latin */
@font-face {
  font-family: 'Roboto';
  font-style: normal;
  font-weight: 400;
  src: url(/fonts.gstatic.com/s/roboto/v29/KFOmCnqEu92Fr1Mu4mxK.woff2) format('woff2');
  unicode-range: U+0000-00FF, U+0131, U+0152-0153, U+02BB-02BC, U+02C6, U+02DA, U+02DC, U+2000-206F, U+2074, U+20AC, U+2122, U+2191, U+2193, U+2212, U+2215, U+FEFF, U+FFFD;
}
/* cyrillic-ext */
@font-face {
  font-family: 'Roboto';
  font-style: normal;
  font-weight: 700;
  src: url(/fonts.gstatic.com/s/roboto/v29/KFOlCnqEu92Fr1MmWUlfCRc4EsA.woff2) format('woff2');
  unicode-range: U+0460-052F, U+1C80-1C88, U+20B4, U+2DE0-2DFF, U+A640-A69F, U+FE2E-FE2F;
}
/* cyrillic */
@font-face {
  font-family: 'Roboto';
  font-style: normal;
  font-weight: 700;
  src: url(/fonts.gstatic.com/s/roboto/v29/KFOlCnqEu92Fr1MmWUlfABc4EsA.woff2) format('woff2');
  unicode-range: U+0400-045F, U+0490-0491, U+04B0-04B1, U+2116;
}
/* greek-ext */
@font-face {
  font-family: 'Roboto';
  font-style: normal;
  font-weight: 700;
  src: url(/fonts.gstatic.com/s/roboto/v29/KFOlCnqEu92Fr1MmWUlfCBc4EsA.woff2) format('woff2');
  unicode-range: U+1F00-1FFF;
}
/* greek */
@font-face {
  font-family: 'Roboto';
  font-style: normal;
  font-weight: 700;
  src: url(/fonts.gstatic.com/s/roboto/v29/KFOlCnqEu92Fr1MmWUlfBxc4EsA.woff2) format('woff2');
  unicode-range: U+0370-03FF;
}
/* vietnamese */
@font-face {
  font-family: 'Roboto';
  font-style: normal;
  font-weight: 700;
  src: url(/fonts.gstatic.com/s/roboto/v29/KFOlCnqEu92Fr1MmWUlfCxc4EsA.woff2) format('woff2');
  unicode-range: U+0102-0103, U+0110-0111, U+0128-0129, U+0168-0169, U+01A0-01A1, U+01AF-01B0, U+1EA0-1EF9, U+20AB;
}
/* latin-ext */
@font-face {
  font-family: 'Roboto';
  font-style: normal;
  font-weight: 700;
  src: url(/fonts.gstatic.com/s/roboto/v29/KFOlCnqEu92Fr1MmWUlfChc4EsA.woff2) format('woff2');
  unicode-range: U+0100-024F, U+0259, U+1E00-1EFF, U+2020, U+20A0-20AB, U+20AD-20CF, U+2113, U+2C60-2C7F, U+A720-A7FF;
}
/* latin */
@font-face {
  font-family: 'Roboto';
  font-style: normal;
  font-weight: 700;
  src: url(/fonts.gstatic.com/s/roboto/v29/KFOlCnqEu92Fr1MmWUlfBBc4.woff2) format('woff2');
  unicode-range: U+0000-00FF, U+0131, U+0152-0153, U+02BB-02BC, U+02C6, U+02DA, U+02DC, U+2000-206F, U+2074, U+20AC, U+2122, U+2191, U+2193, U+2212, U+2215, U+FEFF, U+FFFD;
}
/* cyrillic-ext */
@font-face {
  font-family: 'Roboto';
  font-style: normal;
  font-weight: 900;
  src: url(/fonts.gstatic.com/s/roboto/v29/KFOlCnqEu92Fr1MmYUtfCRc4EsA.woff2) format('woff2');
  unicode-range: U+0460-052F, U+1C80-1C88, U+20B4, U+2DE0-2DFF, U+A640-A69F, U+FE2E-FE2F;
}
/* cyrillic */
@font-face {
  font-family: 'Roboto';
  font-style: normal;
  font-weight: 900;
  src: url(/fonts.gstatic.com/s/roboto/v29/KFOlCnqEu92Fr1MmYUtfABc4EsA.woff2) format('woff2');
  unicode-range: U+0400-045F, U+0490-0491, U+04B0-04B1, U+2116;
}
/* greek-ext */
@font-face {
  font-family: 'Roboto';
  font-style: normal;
  font-weight: 900;
  src: url(/fonts.gstatic.com/s/roboto/v29/KFOlCnqEu92Fr1MmYUtfCBc4EsA.woff2) format('woff2');
  unicode-range: U+1F00-1FFF;
}
/* greek */
@font-face {
  font-family: 'Roboto';
  font-style: normal;
  font-weight: 900;
  src: url(/fonts.gstatic.com/s/roboto/v29/KFOlCnqEu92Fr1MmYUtfBxc4EsA.woff2) format('woff2');
  unicode-range: U+0370-03FF;
}
/* vietnamese */
@font-face {
  font-family: 'Roboto';
  font-style: normal;
  font-weight: 900;
  src: url(/fonts.gstatic.com/s/roboto/v29/KFOlCnqEu92Fr1MmYUtfCxc4EsA.woff2) format('woff2');
  unicode-range: U+0102-0103, U+0110-0111, U+0128-0129, U+0168-0169, U+01A0-01A1, U+01AF-01B0, U+1EA0-1EF9, U+20AB;
}
/* latin-ext */
@font-face {
  font-family: 'Roboto';
  font-style: normal;
  font-weight: 900;
  src: url(/fonts.gstatic.com/s/roboto/v29/KFOlCnqEu92Fr1MmYUtfChc4EsA.woff2) format('woff2');
  unicode-range: U+0100-024F, U+0259, U+1E00-1EFF, U+2020, U+20A0-20AB, U+20AD-20CF, U+2113, U+2C60-2C7F, U+A720-A7FF;
}
/* latin */
@font-face {
  font-family: 'Roboto';
  font-style: normal;
  font-weight: 900;
  src: url(/fonts.gstatic.com/s/roboto/v29/KFOlCnqEu92Fr1MmYUtfBBc4.woff2) format('woff2');
  unicode-range: U+0000-00FF, U+0131, U+0152-0153, U+02BB-02BC, U+02C6, U+02DA, U+02DC, U+2000-206F, U+2074, U+20AC, U+2122, U+2191, U+2193, U+2212, U+2215, U+FEFF, U+FFFD;
}
</style>

<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/layout_admin/css/bootstrap.min.css">

<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/layout_admin/css/font-awesome.min.css">

<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/layout_admin/css/nalika-icon.css">

<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/layout_admin/css/owl.carousel.css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/layout_admin/css/owl.theme.css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/layout_admin/css/owl.transitions.css">

<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/layout_admin/css/animate.css">

<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/layout_admin/css/normalize.css">

<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/layout_admin/css/meanmenu.min.css">

<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/layout_admin/css/main.css">

<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/layout_admin/css/morrisjs/morris.css">

<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/layout_admin/css/scrollbar/jquery.mCustomScrollbar.min.css">

<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/layout_admin/css/metisMenu/metisMenu.min.css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/layout_admin/css/metisMenu/metisMenu-vertical.css">

<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/layout_admin/css/calendar/fullcalendar.min.css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/layout_admin/css/calendar/fullcalendar.print.min.css">

<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/layout_admin/css/style.css">

<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/layout_admin/css/responsive.css">

<script src="${pageContext.request.contextPath }/resources/layout_admin/js/vendor/modernizr-2.8.3.min.js"></script>
<meta name="robots" content="noindex, nofollow">
<script>(function(w,d){!function(e,t,r,a,s){e[r]=e[r]||{},e[r].executed=[],e.zaraz={deferred:[]};var n=t.getElementsByTagName("title")[0];e[r].c=t.cookie,n&&(e[r].t=t.getElementsByTagName("title")[0].text),e[r].w=e.screen.width,e[r].h=e.screen.height,e[r].j=e.innerHeight,e[r].e=e.innerWidth,e[r].l=e.location.href,e[r].r=t.referrer,e[r].k=e.screen.colorDepth,e[r].n=t.characterSet,e[r].o=(new Date).getTimezoneOffset(),//
e[s]=e[s]||[],e.zaraz._preTrack=[],e.zaraz.track=(t,r)=>e.zaraz._preTrack.push([t,r]),e[s].push({"zaraz.start":(new Date).getTime()});var i=t.getElementsByTagName(a)[0],o=t.createElement(a);o.defer=!0,o.src="/cdn-cgi/zaraz/s.js?"+new URLSearchParams(e[r]).toString(),i.parentNode.insertBefore(o,i)}(w,d,"zarazData","script","dataLayer");})(window,document);</script></head>
<body>
<!--[if lt IE 8]>
            <p class="browserupgrade">You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/">upgrade your browser</a> to improve your experience.</p>
        <![endif]-->
<div class="left-sidebar-pro">
<nav id="sidebar" class="">
<div class="sidebar-header">
<a href="index.html"><img class="main-logo" src="${pageContext.request.contextPath }/resources/layout_admin/img/logo/logo.png" alt="" /></a>
<strong><img src="${pageContext.request.contextPath }/resources/layout_admin/img/logo/logosn.png" alt="" /></strong>
</div>
<div class="nalika-profile">
<div class="profile-dtl">
<a href="#"><img src="${pageContext.request.contextPath }/resources/layout_admin/img/notification/4.jpg" alt="" /></a>
<h2>Lakian <span class="min-dtn">Das</span></h2>
</div>
<div class="profile-social-dtl">
<ul class="dtl-social">
<li><a href="#"><i class="fa fa-facebook"></i></a></li>
<li><a href="#"><i class="fa fa-twitter"></i></a></li>
<li><a href="#"><i class="fa fa-instagram"></i></a></li>
</ul>
</div>
</div>
<div class="left-custom-menu-adp-wrap comment-scrollbar">
<nav class="sidebar-nav left-sidebar-menu-pro">
<ul class="metismenu" id="menu1">
<li class="active">
<a class="has-arrow" href="index.html">
<i class="fa fa-home icon-wrap"></i>
<span class="mini-click-non">Ecommerce</span>
</a>
<ul class="submenu-angle" aria-expanded="true">
<li><a title="Dashboard v.1" href="index.html"><span class="mini-sub-pro">Dashboard v.1</span></a></li>
<li><a title="Dashboard v.2" href="${pageContext.request.contextPath }/admin/account-management">Account List</span></a></li>
<li><a title="Dashboard v.3" href="${pageContext.request.contextPath }/admin/role-management"> <span class="mini-sub-pro">Role List</span></a></li>
<li><a title="Product List" href="${pageContext.request.contextPath }/admin/room-list"><span class="mini-sub-pro">Room List</span></a></li>
<li><a title="Product Edit" href="${pageContext.request.contextPath }/admin/room-edit">Room Edit</span></a></li>
<li><a title="Product Detail" href="product-detail.html"><span class="mini-sub-pro">Product Detail</span></a></li>
<li><a title="Product Cart" href="product-cart.html"><span class="mini-sub-pro">Product Cart</span></a></li>
<li><a title="Product Payment" href="product-payment.html"><span class="mini-sub-pro">Product Payment</span></a></li>
<li><a title="Analytics" href="analytics.html"><span class="mini-sub-pro">Analytics</span></a></li>
<li><a title="Widgets" href="widgets.html"><span class="mini-sub-pro">Widgets</span></a></li>
</ul>
</li>
<li>
<a class="has-arrow" href="mailbox.html" aria-expanded="false"><i class="fa fa-envelope icon-wrap"></i> <span class="mini-click-non">Mailbox</span></a>
<ul class="submenu-angle" aria-expanded="false">
<li><a title="Inbox" href="mailbox.html"><span class="mini-sub-pro">Inbox</span></a></li>
<li><a title="View Mail" href="mailbox-view.html"><span class="mini-sub-pro">View Mail</span></a></li>
<li><a title="Compose Mail" href="mailbox-compose.html"><span class="mini-sub-pro">Compose Mail</span></a></li>
</ul>
</li>
<li>
<a class="has-arrow" href="mailbox.html" aria-expanded="false"><i class="icon nalika-diamond icon-wrap"></i> <span class="mini-click-non">Interface</span></a>
<ul class="submenu-angle" aria-expanded="false">
<li><a title="Google Map" href="google-map.html"><span class="mini-sub-pro">Google Map</span></a></li>
<li><a title="Data Maps" href="data-maps.html"><span class="mini-sub-pro">Data Maps</span></a></li>
<li><a title="Pdf Viewer" href="pdf-viewer.html"><span class="mini-sub-pro">Pdf Viewer</span></a></li>
<li><a title="X-Editable" href="x-editable.html"><span class="mini-sub-pro">X-Editable</span></a></li>
<li><a title="Code Editor" href="code-editor.html"><span class="mini-sub-pro">Code Editor</span></a></li>
<li><a title="Tree View" href="tree-view.html"><span class="mini-sub-pro">Tree View</span></a></li>
<li><a title="Preloader" href="preloader.html"><span class="mini-sub-pro">Preloader</span></a></li>
<li><a title="Images Cropper" href="images-cropper.html"><span class="mini-sub-pro">Images Cropper</span></a></li>
</ul>
</li>
<li>
<a class="has-arrow" href="mailbox.html" aria-expanded="false"><i class="icon nalika-pie-chart icon-wrap"></i> <span class="mini-click-non">Miscellaneous</span></a>
<ul class="submenu-angle" aria-expanded="false">
<li><a title="File Manager" href="file-manager.html"><span class="mini-sub-pro">File Manager</span></a></li>
<li><a title="Blog" href="blog.html"><span class="mini-sub-pro">Blog</span></a></li>
<li><a title="Blog Details" href="blog-details.html"><span class="mini-sub-pro">Blog Details</span></a></li>
<li><a title="404 Page" href="404.html"><span class="mini-sub-pro">404 Page</span></a></li>
<li><a title="500 Page" href="500.html"><span class="mini-sub-pro">500 Page</span></a></li>
</ul>
</li>
<li>
<a class="has-arrow" href="mailbox.html" aria-expanded="false"><i class="icon nalika-bar-chart icon-wrap"></i> <span class="mini-click-non">Charts</span></a>
<ul class="submenu-angle" aria-expanded="false">
<li><a title="Bar Charts" href="bar-charts.html"><span class="mini-sub-pro">Bar Charts</span></a></li>
<li><a title="Line Charts" href="line-charts.html"><span class="mini-sub-pro">Line Charts</span></a></li>
<li><a title="Area Charts" href="area-charts.html"><span class="mini-sub-pro">Area Charts</span></a></li>
<li><a title="Rounded Charts" href="rounded-chart.html"><span class="mini-sub-pro">Rounded Charts</span></a></li>
<li><a title="C3 Charts" href="c3.html"><span class="mini-sub-pro">C3 Charts</span></a></li>
<li><a title="Sparkline Charts" href="sparkline.html"><span class="mini-sub-pro">Sparkline Charts</span></a></li>
<li><a title="Peity Charts" href="peity.html"><span class="mini-sub-pro">Peity Charts</span></a></li>
</ul>
</li>
<li>
<a class="has-arrow" href="mailbox.html" aria-expanded="false"><i class="icon nalika-table icon-wrap"></i> <span class="mini-click-non">Data Tables</span></a>
<ul class="submenu-angle" aria-expanded="false">
<li><a title="Peity Charts" href="static-table.html"><span class="mini-sub-pro">Static Table</span></a></li>
<li><a title="Data Table" href="data-table.html"><span class="mini-sub-pro">Data Table</span></a></li>
</ul>
</li>
<li>
<a class="has-arrow" href="mailbox.html" aria-expanded="false"><i class="icon nalika-forms icon-wrap"></i> <span class="mini-click-non">Forms Elements</span></a>
<ul class="submenu-angle" aria-expanded="false">
<li><a title="Basic Form Elements" href="basic-form-element.html"><span class="mini-sub-pro">Bc Form Elements</span></a></li>
<li><a title="Advance Form Elements" href="advance-form-element.html"><span class="mini-sub-pro">Ad Form Elements</span></a></li>
<li><a title="Password Meter" href="password-meter.html"><span class="mini-sub-pro">Password Meter</span></a></li>
<li><a title="Multi Upload" href="multi-upload.html"><span class="mini-sub-pro">Multi Upload</span></a></li>
<li><a title="Text Editor" href="tinymc.html"><span class="mini-sub-pro">Text Editor</span></a></li>
<li><a title="Dual List Box" href="dual-list-box.html"><span class="mini-sub-pro">Dual List Box</span></a></li>
 </ul>
</li>
<li>
<a class="has-arrow" href="mailbox.html" aria-expanded="false"><i class="icon nalika-smartphone-call icon-wrap"></i> <span class="mini-click-non">App views</span></a>
<ul class="submenu-angle" aria-expanded="false">
<li><a title="Notifications" href="notifications.html"><span class="mini-sub-pro">Notifications</span></a></li>
<li><a title="Alerts" href="alerts.html"><span class="mini-sub-pro">Alerts</span></a></li>
<li><a title="Modals" href="modals.html"><span class="mini-sub-pro">Modals</span></a></li>
<li><a title="Buttons" href="buttons.html"><span class="mini-sub-pro">Buttons</span></a></li>
<li><a title="Tabs" href="tabs.html"><span class="mini-sub-pro">Tabs</span></a></li>
<li><a title="Accordion" href="accordion.html"><span class="mini-sub-pro">Accordion</span></a></li>
</ul>
</li>
<li id="removable">
<a class="has-arrow" href="#" aria-expanded="false"><i class="icon nalika-new-file icon-wrap"></i> <span class="mini-click-non">Pages</span></a>
<ul class="submenu-angle" aria-expanded="false">
<li><a title="Login" href="login.html"><span class="mini-sub-pro">Login</span></a></li>
<li><a title="Register" href="register.html"><span class="mini-sub-pro">Register</span></a></li>
<li><a title="Lock" href="lock.html"><span class="mini-sub-pro">Lock</span></a></li>
<li><a title="Password Recovery" href="password-recovery.html"><span class="mini-sub-pro">Password Recovery</span></a></li>
</ul>
</li>
</ul>
</nav>
</div>
</nav>
</div>

<div class="all-content-wrapper">
<div class="container-fluid">
<div class="row">
<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
<div class="logo-pro">
<a href="index.html"><img class="main-logo" src="${pageContext.request.contextPath }/resources/layout_admin/img/logo/logo.png" alt="" /></a>
</div>
</div>
</div>
</div>
<div class="header-advance-area">
<div class="header-top-area">
<div class="container-fluid">
<div class="row">
<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
<div class="header-top-wraper">
<div class="row">
<div class="col-lg-1 col-md-0 col-sm-1 col-xs-12">
<div class="menu-switcher-pro">
<button type="button" id="sidebarCollapse" class="btn bar-button-pro header-drl-controller-btn btn-info navbar-btn">
<i class="fa fa-tasks"></i>
</button>
</div>
</div>
<div class="col-lg-6 col-md-7 col-sm-6 col-xs-12">
<div class="header-top-menu tabl-d-n hd-search-rp">
<div class="breadcome-heading">
<form role="search" class="">
<input type="text" placeholder="Search..." class="form-control">
<a href=""><i class="fa fa-search"></i></a>
</form>
</div>
</div>
</div>
<div class="col-lg-5 col-md-5 col-sm-12 col-xs-12">
 <div class="header-right-info">
<ul class="nav navbar-nav mai-top-nav header-right-menu">
<li class="nav-item dropdown">
<a href="#" data-toggle="dropdown" role="button" aria-expanded="false" class="nav-link dropdown-toggle"><i class="fa fa-envelope" aria-hidden="true"></i><span class="indicator-ms"></span></a>
<div role="menu" class="author-message-top dropdown-menu animated zoomIn">
<div class="message-single-top">
<h1>Message</h1>
</div>
<ul class="message-menu">
<li>
<a href="#">
<div class="message-img">
<img src="${pageContext.request.contextPath }/resources/layout_admin/img/contact/1.jpg" alt="">
</div>
<div class="message-content">
<span class="message-date">16 Sept</span>
<h2>Advanda Cro</h2>
<p>Please done this project as soon possible.</p>
</div>
</a>
</li>
<li>
<a href="#">
<div class="message-img">
<img src="${pageContext.request.contextPath }/resources/layout_admin/img/contact/4.jpg" alt="">
</div>
<div class="message-content">
<span class="message-date">16 Sept</span>
<h2>Sulaiman din</h2>
<p>Please done this project as soon possible.</p>
</div>
</a>
</li>
<li>
<a href="#">
<div class="message-img">
<img src="${pageContext.request.contextPath }/resources/layout_admin/img/contact/3.jpg" alt="">
</div>
<div class="message-content">
<span class="message-date">16 Sept</span>
<h2>Victor Jara</h2>
<p>Please done this project as soon possible.</p>
</div>
</a>
</li>
 <li>
<a href="#">
<div class="message-img">
<img src="${pageContext.request.contextPath }/resources/layout_admin/img/contact/2.jpg" alt="">
</div>
<div class="message-content">
<span class="message-date">16 Sept</span>
<h2>Victor Jara</h2>
<p>Please done this project as soon possible.</p>
</div>
</a>
</li>
</ul>
<div class="message-view">
<a href="#">View All Messages</a>
</div>
</div>
</li>
<li class="nav-item"><a href="#" data-toggle="dropdown" role="button" aria-expanded="false" class="nav-link dropdown-toggle"><i class="fa fa-bell" aria-hidden="true"></i><span class="indicator-nt"></span></a>
<div role="menu" class="notification-author dropdown-menu animated zoomIn">
<div class="notification-single-top">
<h1>Notifications</h1>
</div>
<ul class="notification-menu">
<li>
<a href="#">
<div class="notification-icon">
<i class="icon nalika-tick" aria-hidden="true"></i>
</div>
<div class="notification-content">
<span class="notification-date">16 Sept</span>
<h2>Advanda Cro</h2>
<p>Please done this project as soon possible.</p>
</div>
</a>
</li>
<li>
<a href="#">
<div class="notification-icon">
<i class="icon nalika-cloud" aria-hidden="true"></i>
</div>
<div class="notification-content">
<span class="notification-date">16 Sept</span>
<h2>Sulaiman din</h2>
 <p>Please done this project as soon possible.</p>
</div>
</a>
</li>
<li>
<a href="#">
<div class="notification-icon">
<i class="icon nalika-folder" aria-hidden="true"></i>
</div>
<div class="notification-content">
<span class="notification-date">16 Sept</span>
<h2>Victor Jara</h2>
<p>Please done this project as soon possible.</p>
</div>
</a>
</li>
<li>
<a href="#">
<div class="notification-icon">
<i class="icon nalika-bar-chart" aria-hidden="true"></i>
</div>
<div class="notification-content">
<span class="notification-date">16 Sept</span>
<h2>Victor Jara</h2>
<p>Please done this project as soon possible.</p>
</div>
</a>
</li>
</ul>
<div class="notification-view">
<a href="#">View All Notification</a>
</div>
</div>
</li>
<li class="nav-item">
<a href="#" data-toggle="dropdown" role="button" aria-expanded="false" class="nav-link dropdown-toggle">
<i class="fa fa-user"></i>
<span class="admin-name">Advanda Cro</span>
<i class="fa fa-angle-down"></i>
</a>
<ul role="menu" class="dropdown-header-top author-log dropdown-menu animated zoomIn">
<li><a href="register.html"><span class="fa fa-home author-log-ic"></span> Register</a>
</li>
<li><a href="#"><span class="fa fa-user author-log-ic"></span> My Profile</a>
</li>
<li><a href="lock.html"><span class="icon nalika-diamond author-log-ic"></span> Lock</a>
</li>
 <li><a href="#"><span class="icon nalika-settings author-log-ic"></span> Settings</a>
</li>
<li><a href="login.html"><span class="icon nalika-unlocked author-log-ic"></span> Log Out</a>
</li>
</ul>
</li>
<li class="nav-item nav-setting-open"><a href="#" data-toggle="dropdown" role="button" aria-expanded="false" class="nav-link dropdown-toggle"><i class="fa fa-tasks"></i></a>
<div role="menu" class="admintab-wrap menu-setting-wrap menu-setting-wrap-bg dropdown-menu animated zoomIn">
<ul class="nav nav-tabs custon-set-tab">
<li class="active"><a data-toggle="tab" href="#Notes">News</a>
</li>
<li><a data-toggle="tab" href="#Projects">Activity</a>
</li>
<li><a data-toggle="tab" href="#Settings">Settings</a>
</li>
</ul>
<div class="tab-content custom-bdr-nt">
<div id="Notes" class="tab-pane fade in active">
<div class="notes-area-wrap">
<div class="note-heading-indicate">
<h2><i class="icon nalika-chat"></i> Latest News</h2>
<p>You have 10 New News.</p>
</div>
<div class="notes-list-area notes-menu-scrollbar">
<ul class="notes-menu-list">
<li>
<a href="#">
<div class="notes-list-flow">
<div class="notes-img">
<img src="${pageContext.request.contextPath }/resources/layout_admin/img/contact/4.jpg" alt="" />
</div>
<div class="notes-content">
<p> The point of using Lorem Ipsum is that it has a more-or-less normal.</p>
<span>Yesterday 2:45 pm</span>
</div>
</div>
</a>
</li>
<li>
<a href="#">
 <div class="notes-list-flow">
<div class="notes-img">
<img src="${pageContext.request.contextPath }/resources/layout_admin/img/contact/1.jpg" alt="" />
</div>
<div class="notes-content">
<p> The point of using Lorem Ipsum is that it has a more-or-less normal.</p>
<span>Yesterday 2:45 pm</span>
</div>
</div>
</a>
</li>
<li>
<a href="#">
<div class="notes-list-flow">
<div class="notes-img">
<img src="${pageContext.request.contextPath }/resources/layout_admin/img/contact/2.jpg" alt="" />
</div>
<div class="notes-content">
<p> The point of using Lorem Ipsum is that it has a more-or-less normal.</p>
<span>Yesterday 2:45 pm</span>
</div>
</div>
</a>
</li>
<li>
<a href="#">
<div class="notes-list-flow">
<div class="notes-img">
<img src="${pageContext.request.contextPath }/resources/layout_admin/img/contact/3.jpg" alt="" />
</div>
<div class="notes-content">
<p> The point of using Lorem Ipsum is that it has a more-or-less normal.</p>
<span>Yesterday 2:45 pm</span>
</div>
</div>
</a>
</li>
<li>
 <a href="#">
<div class="notes-list-flow">
<div class="notes-img">
<img src="${pageContext.request.contextPath }/resources/layout_admin/img/contact/4.jpg" alt="" />
</div>
<div class="notes-content">
<p> The point of using Lorem Ipsum is that it has a more-or-less normal.</p>
<span>Yesterday 2:45 pm</span>
</div>
</div>
</a>
</li>
<li>
<a href="#">
<div class="notes-list-flow">
<div class="notes-img">
<img src="${pageContext.request.contextPath }/resources/layout_admin/img/contact/1.jpg" alt="" />
</div>
<div class="notes-content">
<p> The point of using Lorem Ipsum is that it has a more-or-less normal.</p>
<span>Yesterday 2:45 pm</span>
</div>
</div>
</a>
</li>
<li>
<a href="#">
<div class="notes-list-flow">
<div class="notes-img">
<img src="${pageContext.request.contextPath }/resources/layout_admin/img/contact/2.jpg" alt="" />
</div>
<div class="notes-content">
<p> The point of using Lorem Ipsum is that it has a more-or-less normal.</p>
<span>Yesterday 2:45 pm</span>
</div>
</div>
</a>
</li>
 <li>
<a href="#">
<div class="notes-list-flow">
<div class="notes-img">
<img src="${pageContext.request.contextPath }/resources/layout_admin/img/contact/1.jpg" alt="" />
</div>
<div class="notes-content">
<p> The point of using Lorem Ipsum is that it has a more-or-less normal.</p>
<span>Yesterday 2:45 pm</span>
</div>
</div>
</a>
</li>
<li>
<a href="#">
<div class="notes-list-flow">
<div class="notes-img">
<img src="${pageContext.request.contextPath }/resources/layout_admin/img/contact/2.jpg" alt="" />
</div>
<div class="notes-content">
<p> The point of using Lorem Ipsum is that it has a more-or-less normal.</p>
<span>Yesterday 2:45 pm</span>
</div>
</div>
</a>
</li>
<li>
<a href="#">
<div class="notes-list-flow">
<div class="notes-img">
<img src="${pageContext.request.contextPath }/resources/layout_admin/img/contact/3.jpg" alt="" />
</div>
<div class="notes-content">
<p> The point of using Lorem Ipsum is that it has a more-or-less normal.</p>
<span>Yesterday 2:45 pm</span>
</div>
</div>
</a>
</li>
</ul>
</div>
</div>
</div>
<div id="Projects" class="tab-pane fade">
<div class="projects-settings-wrap">
<div class="note-heading-indicate">
<h2><i class="icon nalika-happiness"></i> Recent Activity</h2>
<p> You have 20 Recent Activity.</p>
</div>
<div class="project-st-list-area project-st-menu-scrollbar">
<ul class="projects-st-menu-list">
<li>
<a href="#">
<div class="project-list-flow">
<div class="projects-st-heading">
<h2>New User Registered</h2>
<p> The point of using Lorem Ipsum is that it has a more or less normal.</p>
<span class="project-st-time">1 hours ago</span>
</div>
</div>
</a>
</li>
<li>
<a href="#">
<div class="project-list-flow">
<div class="projects-st-heading">
<h2>New Order Received</h2>
<p> The point of using Lorem Ipsum is that it has a more or less normal.</p>
<span class="project-st-time">2 hours ago</span>
</div>
</div>
</a>
</li>
<li>
<a href="#">
<div class="project-list-flow">
<div class="projects-st-heading">
<h2>New Order Received</h2>
 <p> The point of using Lorem Ipsum is that it has a more or less normal.</p>
<span class="project-st-time">3 hours ago</span>
</div>
</div>
</a>
</li>
<li>
<a href="#">
<div class="project-list-flow">
<div class="projects-st-heading">
<h2>New Order Received</h2>
<p> The point of using Lorem Ipsum is that it has a more or less normal.</p>
<span class="project-st-time">4 hours ago</span>
</div>
</div>
</a>
</li>
<li>
<a href="#">
<div class="project-list-flow">
<div class="projects-st-heading">
<h2>New User Registered</h2>
<p> The point of using Lorem Ipsum is that it has a more or less normal.</p>
<span class="project-st-time">5 hours ago</span>
</div>
</div>
</a>
</li>
<li>
<a href="#">
<div class="project-list-flow">
<div class="projects-st-heading">
<h2>New Order</h2>
<p> The point of using Lorem Ipsum is that it has a more or less normal.</p>
<span class="project-st-time">6 hours ago</span>
</div>
</div>
 </a>
</li>
<li>
<a href="#">
<div class="project-list-flow">
<div class="projects-st-heading">
<h2>New User</h2>
<p> The point of using Lorem Ipsum is that it has a more or less normal.</p>
<span class="project-st-time">7 hours ago</span>
</div>
</div>
</a>
</li>
<li>
<a href="#">
<div class="project-list-flow">
<div class="projects-st-heading">
<h2>New Order</h2>
<p> The point of using Lorem Ipsum is that it has a more or less normal.</p>
<span class="project-st-time">9 hours ago</span>
</div>
</div>
</a>
</li>
</ul>
</div>
</div>
</div>
<div id="Settings" class="tab-pane fade">
<div class="setting-panel-area">
<div class="note-heading-indicate">
<h2><i class="icon nalika-gear"></i> Settings Panel</h2>
<p> You have 20 Settings. 5 not completed.</p>
</div>
<ul class="setting-panel-list">
<li>
<div class="checkbox-setting-pro">
<div class="checkbox-title-pro">
<h2>Show notifications</h2>
<div class="ts-custom-check">
 <div class="onoffswitch">
<input type="checkbox" name="collapsemenu" class="onoffswitch-checkbox" id="example">
<label class="onoffswitch-label" for="example">
<span class="onoffswitch-inner"></span>
<span class="onoffswitch-switch"></span>
</label>
</div>
</div>
</div>
</div>
</li>
<li>
<div class="checkbox-setting-pro">
<div class="checkbox-title-pro">
<h2>Disable Chat</h2>
<div class="ts-custom-check">
<div class="onoffswitch">
<input type="checkbox" name="collapsemenu" class="onoffswitch-checkbox" id="example3">
<label class="onoffswitch-label" for="example3">
<span class="onoffswitch-inner"></span>
<span class="onoffswitch-switch"></span>
</label>
</div>
</div>
</div>
</div>
</li>
<li>
<div class="checkbox-setting-pro">
<div class="checkbox-title-pro">
<h2>Enable history</h2>
<div class="ts-custom-check">
<div class="onoffswitch">
<input type="checkbox" name="collapsemenu" class="onoffswitch-checkbox" id="example4">
<label class="onoffswitch-label" for="example4">
<span class="onoffswitch-inner"></span>
<span class="onoffswitch-switch"></span>
</label>
</div>
</div>
</div>
</div>
</li>
 <li>
<div class="checkbox-setting-pro">
<div class="checkbox-title-pro">
<h2>Show charts</h2>
<div class="ts-custom-check">
<div class="onoffswitch">
<input type="checkbox" name="collapsemenu" class="onoffswitch-checkbox" id="example7">
<label class="onoffswitch-label" for="example7">
<span class="onoffswitch-inner"></span>
<span class="onoffswitch-switch"></span>
</label>
</div>
</div>
</div>
</div>
</li>
<li>
<div class="checkbox-setting-pro">
<div class="checkbox-title-pro">
<h2>Update everyday</h2>
<div class="ts-custom-check">
<div class="onoffswitch">
<input type="checkbox" name="collapsemenu" checked="" class="onoffswitch-checkbox" id="example2">
<label class="onoffswitch-label" for="example2">
<span class="onoffswitch-inner"></span>
<span class="onoffswitch-switch"></span>
</label>
</div>
</div>
</div>
</div>
</li>
<li>
<div class="checkbox-setting-pro">
<div class="checkbox-title-pro">
<h2>Global search</h2>
<div class="ts-custom-check">
<div class="onoffswitch">
<input type="checkbox" name="collapsemenu" checked="" class="onoffswitch-checkbox" id="example6">
<label class="onoffswitch-label" for="example6">
 <span class="onoffswitch-inner"></span>
<span class="onoffswitch-switch"></span>
</label>
</div>
</div>
</div>
</div>
</li>
<li>
<div class="checkbox-setting-pro">
<div class="checkbox-title-pro">
<h2>Offline users</h2>
<div class="ts-custom-check">
<div class="onoffswitch">
<input type="checkbox" name="collapsemenu" checked="" class="onoffswitch-checkbox" id="example5">
<label class="onoffswitch-label" for="example5">
<span class="onoffswitch-inner"></span>
<span class="onoffswitch-switch"></span>
</label>
</div>
</div>
</div>
</div>
</li>
</ul>
</div>
</div>
</div>
</div>
</li>
</ul>
</div>
</div>
</div>
</div>
</div>
</div>
</div>
</div>

			
			


		<jsp:invoke fragment="content"></jsp:invoke>

	
	
	

	
<div class="footer-copyright-area">
<div class="container-fluid">
<div class="row">
<div class="col-lg-12">
<div class="footer-copy-right">
<p>Copyright © 2018 <a href="https://colorlib.com/wp/templates/">Colorlib</a> All rights reserved.</p>
</div>
</div>
</div>
</div>
</div>
</div>

<script src="${pageContext.request.contextPath }/resources/layout_admin/js/vendor/jquery-1.12.4.min.js"></script>

<script src="${pageContext.request.contextPath }/resources/layout_admin/js/bootstrap.min.js"></script>

<script src="${pageContext.request.contextPath }/resources/layout_admin/js/wow.min.js"></script>

<script src="${pageContext.request.contextPath }/resources/layout_admin/js/jquery-price-slider.js"></script>

<script src="${pageContext.request.contextPath }/resources/layout_admin/js/jquery.meanmenu.js"></script>

<script src="${pageContext.request.contextPath }/resources/layout_admin/js/owl.carousel.min.js"></script>

<script src="${pageContext.request.contextPath }/resources/layout_admin/js/jquery.sticky.js"></script>

<script src="${pageContext.request.contextPath }/resources/layout_admin/js/jquery.scrollUp.min.js"></script>

<script src="${pageContext.request.contextPath }/resources/layout_admin/js/scrollbar/jquery.mCustomScrollbar.concat.min.js"></script>
<script src="${pageContext.request.contextPath }/resources/layout_admin/js/scrollbar/mCustomScrollbar-active.js"></script>

<script src="${pageContext.request.contextPath }/resources/layout_admin/js/metisMenu/metisMenu.min.js"></script>
<script src="${pageContext.request.contextPath }/resources/layout_admin/js/metisMenu/metisMenu-active.js"></script>

<script src="${pageContext.request.contextPath }/resources/layout_admin/js/sparkline/jquery.sparkline.min.js"></script>
<script src="${pageContext.request.contextPath }/resources/layout_admin/js/sparkline/jquery.charts-sparkline.js"></script>

<script src="${pageContext.request.contextPath }/resources/layout_admin/js/calendar/moment.min.js"></script>
<script src="${pageContext.request.contextPath }/resources/layout_admin/js/calendar/fullcalendar.min.js"></script>
<script src="${pageContext.request.contextPath }/resources/layout_admin/js/calendar/fullcalendar-active.js"></script>

<script src="${pageContext.request.contextPath }/resources/layout_admin/js/flot/jquery.flot.js"></script>
<script src="${pageContext.request.contextPath }/resources/layout_admin/js/flot/jquery.flot.resize.js"></script>
<script src="${pageContext.request.contextPath }/resources/layout_admin/js/flot/curvedLines.js"></script>
<script src="${pageContext.request.contextPath }/resources/layout_admin/js/flot/flot-active.js"></script>

<script src="${pageContext.request.contextPath }/resources/layout_admin/js/plugins.js"></script>

<script src="${pageContext.request.contextPath }/resources/layout_admin/js/main.js"></script>

<script async src="https://www.googletagmanager.com/gtag/js?id=UA-23581568-13"></script>
<script>
  window.dataLayer = window.dataLayer || [];
  function gtag(){dataLayer.push(arguments);}
  gtag('js', new Date());

  gtag('config', 'UA-23581568-13');
</script>



</body>
</html>