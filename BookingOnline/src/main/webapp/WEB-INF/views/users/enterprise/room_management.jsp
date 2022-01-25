<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@ taglib prefix="mt" tagdir="/WEB-INF/tags" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!doctype html>
<html lang="en">
<head>
  <meta charset="utf-8" />
  <link rel="icon" type="image/png" href="${pageContext.request.contextPath }/webapp/static/layout_room_management/img/favicon.ico">
  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />

  <title>Room management</title>

  <meta content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0" name="viewport" />

  <!-- Canonical SEO -->
  <link rel="canonical" href="https://www.creative-tim.com/product/fresh-bootstrap-table"/>

  <!--  Social tags    -->
  <meta name="keywords" content="creative tim, html table, html css table, web table, freebie, free bootstrap table, bootstrap, css3 table, bootstrap table, fresh bootstrap table, frontend, modern table, responsive bootstrap table, responsive bootstrap table">

  <meta name="description" content="Probably the most beautiful and complex bootstrap table you've ever seen on the internet, this bootstrap table is one of the essential plugins you will need.">

  <!-- Schema.org markup for Google+ -->
  <meta itemprop="name" content="Fresh Bootstrap Table by Creative Tim">
  <meta itemprop="description" content="Probably the most beautiful and complex bootstrap table you've ever seen on the internet, this bootstrap table is one of the essential plugins you will need.">

  <meta itemprop="image" content="http://s3.amazonaws.com/creativetim_bucket/products/31/original/opt_fbt_thumbnail.jpg">
  <!-- Twitter Card data -->

  <meta name="twitter:card" content="product">
  <meta name="twitter:site" content="@creativetim">
  <meta name="twitter:title" content="Fresh Bootstrap Table by Creative Tim">

  <meta name="twitter:description" content="Probably the most beautiful and complex bootstrap table you've ever seen on the internet, this bootstrap table is one of the essential plugins you will need.">
  <meta name="twitter:creator" content="@creativetim">
  <meta name="twitter:image" content="http://s3.amazonaws.com/creativetim_bucket/products/31/original/opt_fbt_thumbnail.jpg">
  <meta name="twitter:data1" content="Fresh Bootstrap Table by Creative Tim">
  <meta name="twitter:label1" content="Product Type">
  <meta name="twitter:data2" content="Free">
  <meta name="twitter:label2" content="Price">

  <!-- Open Graph data -->
  <meta property="og:title" content="Fresh Bootstrap Table by Creative Tim" />
  <meta property="og:type" content="article" />
  <meta property="og:url" content="https://wenzhixin.github.io/fresh-bootstrap-table/full-screen-table.html" />
  <meta property="og:image" content="http://s3.amazonaws.com/creativetim_bucket/products/31/original/opt_fbt_thumbnail.jpg"/>
  <meta property="og:description" content="Probably the most beautiful and complex bootstrap table you've ever seen on the internet, this bootstrap table is one of the essential plugins you will need." />
  <meta property="og:site_name" content="Creative Tim" />


  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.4.1/css/bootstrap.min.css">
  <link href="${pageContext.request.contextPath }/webapp/static/layout_room_management/css/fresh-bootstrap-table.css" rel="stylesheet" />
  <link href="${pageContext.request.contextPath }/webapp/static/layout_room_management/css/demo.css" rel="stylesheet" />

  <!--   Fonts and icons   -->
  <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.6.3/css/all.css" integrity="sha384-UHRtZLI+pbxtHCWp1t77Bi1L4ZtiqrqD80Kn4Z8NTSRyMA2Fd33n5dQ8lWUE00s/" crossorigin="anonymous">
  <link href="http://fonts.googleapis.com/css?family=Roboto:400,700,300" rel="stylesheet" type="text/css">

  <script src="https://code.jquery.com/jquery-3.3.1.min.js" integrity="sha256-FgpCb/KJQlLNfOu91ta32o/NMZxltwRo8QtmkMRdAu8=" crossorigin="anonymous"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.4.1/js/bootstrap.min.js"></script>
  <script src="https://unpkg.com/bootstrap-table/dist/bootstrap-table.js"></script>

  <!--  Just for demo purpose, do not include in your project   -->
  <script src="${pageContext.request.contextPath }/webapp/static/layout_room_management/js/demo/gsdk-switch.js"></script>
  <script src="${pageContext.request.contextPath }/webapp/static/layout_room_management/js/demo/jquery.sharrre.js"></script>
  <script src="${pageContext.request.contextPath }/webapp/static/layout_room_management/js/demo/demo.js"></script>

</head>
<body>

<div class="wrapper">
   <!--   Creative Tim Branding   -->
  <a href="${pageContext.request.contextPath }/enterprise/profile">
    <div class="logo-container full-screen-table-demo">
      <div class="logo">
        <img width="70px" height="50px" src="${pageContext.request.contextPath }/webapp/assets/uploads/${account.avatar}">
      </div>
      <div class="brand ">
        ${account.name } Hotel
      </div>
    </div>
  </a>

  <div class="fresh-table toolbar-color-orange full-screen-table">
  <!--
    Available colors for the full background: full-color-blue, full-color-azure, full-color-green, full-color-red, full-color-orange
    Available colors only for the toolbar: toolbar-color-blue, toolbar-color-azure, toolbar-color-green, toolbar-color-red, toolbar-color-orange
  -->
    <table id="fresh-table" class="table">
      <thead>
        <th data-field="id">ID Room</th>
        <th data-field="img">Image</th>
        <th data-field="name" data-sortable="true">Check in</th>
        <th data-field="salary" data-sortable="true">Check out</th>
        <th data-field="country" data-sortable="true">Adult</th>
        <th data-field="city">Children</th>
        <th data-field="status">Status</th>
        <th data-field="actions" >Actions</th>
      </thead>
      <tbody>
      <c:forEach var="allroom" items="${allrooms }">
        <tr>
          <td>${allroom.idRoom }</td>
          <td >
          <img class="rounded" width="100px" height="100px" src="${pageContext.request.contextPath }/webapp/assets/uploadRoom/${allroom.imgRoom }"/>
          
          </td>
          <td>${allroom.checkIn }</td>
          <c:if test="${allroom.checkOut < datenow}">
			              <td style="color: red;">${allroom.checkOut}<br>
			              <small>you need to update this room !!</small>
			              </td>
			              </c:if>
			              <c:if test="${allroom.checkOut > datenow}">
			              <td >${allroom.checkOut}</td>
			              </c:if>
          <td>${allroom.guestAdult }</td>
          <td>${allroom.guestChildren }</td>
          <c:if test="${allroom.status == true }">
			              <td><button type="button" class="btn btn-success">Available now</button></td>
			              </c:if>
			              <c:if test="${allroom.status != true }">
			              <td><button type="button" class="btn btn-warning">Not Available</button></td>
			              </c:if>
          <td>
          <a href="${pageContext.request.contextPath }/enterprise/edit-room?idRoom=${allroom.idRoom}"><i style="color: green;" class="fa fa-edit fa-2x"></i></a>|
          <a href="${pageContext.request.contextPath }/enterprise/delete-room/${allroom.idRoom}"><i style="color: orange;" class="fa fa-trash fa-2x"></i></a> |
          <c:forEach var="reservation" items="${reservations }">
          
	          <c:if test="${reservation.infoRoom.idRoom == allroom.idRoom}" >
	          <a href="${pageContext.request.contextPath }/enterprise/invoice-idRoom/${allroom.idRoom}"><i style="color: red;" class="fa fa-info-circle fa-2x"><sup>new</sup></i></a>
	          </c:if>
          </c:forEach>
          </td>
        </tr>
      </c:forEach>  
      </tbody>
    </table>
  </div>

  
</div>


<div class="fixed-plugin" style="top: 300px">
  <div class="dropdown open">
    <a href="#" data-toggle="dropdown">
    <i class="fa fa-cog fa-2x"> </i>
    </a>
    <ul class="dropdown-menu">
      <li class="header-title">Adjustments</li>
      <li class="adjustments-line">
        <a href="javascript:void(0)" class="switch-trigger">
          <p>Full Background</p>
          <div class="switch"
            data-off-label="OFF"
            data-on-label="ON">
            <input type="checkbox" checked data-target="section-header" data-type="parallax"/>
          </div>
          <div class="clearfix"></div>
        </a>
      </li>
      <li class="adjustments-line">
        <a href="javascript:void(0)" class="switch-trigger">
          <p>Colors</p>
          <div class="pull-right">
            <span class="badge filter badge-blue" data-color="blue"></span>
            <span class="badge filter badge-azure" data-color="azure"></span>
            <span class="badge filter badge-green" data-color="green"></span>
            <span class="badge filter badge-orange active" data-color="orange"></span>
            <span class="badge filter badge-red" data-color="red"></span>
          </div>
          <div class="clearfix"></div>
        </a>
      </li>
      <li class="header-title">Layouts</li>
        <li class="active">
        <a class="img-holder" href="${pageContext.request.contextPath }/enterprise/room-management-salary">
          <img src="${pageContext.request.contextPath }/webapp/static/layout_room_management/img/compact.jpg">
          <h5>Compact Highest Salary</h5>
        </a>
      </li>
        
    </ul>
  </div>
</div>

<script>
  var $table = $('#fresh-table')

  window.operateEvents = {
    'click .like': function (e, value, row, index) {
      alert('You click like icon, row: ' + JSON.stringify(row))
      console.log(value, row, index)
    },
    'click .edit': function (e, value, row, index) {
      alert('You click edit icon, row: ' + JSON.stringify(row))
      console.log(value, row, index)
    },
    'click .remove': function (e, value, row, index) {
      $table.bootstrapTable('remove', {
        field: 'id',
        values: [row.id]
      })
    }
  }

  function operateFormatter(value, row, index) {
    return [
      '<a rel="tooltip" title="Like" class="table-action like" href="javascript:void(0)" title="Like">',
        '<i class="fa fa-heart"></i>',
      '</a>',
      '<a rel="tooltip" title="Edit" class="table-action edit" href="javascript:void(0)" title="Edit">',
        '<i class="fa fa-edit"></i>',
      '</a>',
      '<a rel="tooltip" title="Remove" class="table-action remove" href="javascript:void(0)" title="Remove">',
        '<i class="fa fa-remove"></i>',
      '</a>'
    ].join('')
  }

  $(function () {
    $table.bootstrapTable({
      classes: 'table table-hover table-striped',
      toolbar: '.toolbar',

      search: true,
      showRefresh: true,
      showToggle: true,
      showColumns: true,
      pagination: true,
      striped: true,
      sortable: true,
      height: $(window).height(),
      pageSize: 25,
      pageList: [25, 50, 100],

      formatShowingRows: function (pageFrom, pageTo, totalRows) {
        return ''
      },
      formatRecordsPerPage: function (pageNumber) {
        return pageNumber + ' rows visible'
      }
    })


    $(window).resize(function () {
      $table.bootstrapTable('resetView', {
        height: $(window).height()
      })
    })
  })

  $('#sharrreTitle').sharrre({
    share: {
      twitter: true,
      facebook: true
    },
    template: '',
    enableHover: false,
    enableTracking: true,
    render: function (api, options) {
      $("#sharrreTitle").html('Thank you for ' + options.total + ' shares!')
    },
    enableTracking: true,
    url: location.href
  })

  $('#twitter').sharrre({
    share: {
      twitter: true
    },
    enableHover: false,
    enableTracking: true,
    buttons: { twitter: {via: 'CreativeTim'}},
    click: function (api, options) {
      api.simulateClick()
      api.openPopup('twitter')
    },
    template: '<i class="fa fa-twitter"></i> {total}',
    url: location.href
  })

  $('#facebook').sharrre({
    share: {
      facebook: true
    },
    enableHover: false,
    enableTracking: true,
    click: function (api, options) {
      api.simulateClick()
      api.openPopup('facebook')
    },
    template: '<i class="fa fa-facebook-square"></i> {total}',
    url: location.href
  })
</script>

<script>
  (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
  (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
  m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
  })(window,document,'script','//www.google-analytics.com/analytics.js','ga')

  ga('create', 'UA-46172202-1', 'auto')
  ga('send', 'pageview')

</script>

</body>

</html>
