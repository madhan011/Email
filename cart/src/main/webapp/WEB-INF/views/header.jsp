<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<title>Mobiaces</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<!--[if ie]><meta content='IE=8' http-equiv='X-UA-Compatible'/><![endif]-->
<!-- bootstrap -->
<link href="<c:url value="/resources/bootstrap/css/bootstrap.min.css"/>"
	rel="stylesheet" />
<link
	href="<c:url value="/resources/bootstrap/css/bootstrap-responsive.min.css"/>"
	rel="stylesheet" />

<link href="<c:url value="/resources/themes/css/bootstrappage.css"/>"
	rel="stylesheet" />

<!-- global styles -->
<link href="<c:url value="/resources/themes/css/flexslider.css"/>"
	rel="stylesheet" />
<link href="<c:url value="/resources/themes/css/main.css"/>"
	rel="stylesheet" />

<!-- scripts -->
<script src="<c:url value="/resources/themes/js/jquery-1.7.2.min.js"/>"></script>
<script src="<c:url value="/resources/bootstrap/js/bootstrap.min.js"/>"></script>
<script src="<c:url value="/resources/themes/js/superfish.js"/>"></script>
<script
	src="<c:url value="/resources/themes/js/jquery.scrolltotop.js"/>"></script>
<!--[if lt IE 9]>			
			<script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
			<script src="js/respond.min.js"></script>
		<![endif]-->
</head>
<body>
	<div id="top-bar" class="container">
		<div class="row">
			<div class="span4">
				<form method="POST" class="search_form">
					<input type="text" class="input-block-level search-query"
						Placeholder="headphones">
				</form>
			</div>
			<div class="span8">
				<div class="account pull-right">
					<ul class="user-menu">
						<li><a href="viewall">View All</a></li>
						<li><a href="cart.html">Your Cart</a></li>
						<!--	<li><a href="checkout.html">Checkout</a></li>			-->
						<li><a href="#">Download App</a></li>
					</ul>
				</div>
			</div>
		</div>
	</div>
	</body></html>	