<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>${productModel.name}</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
  <link href="<c:url value="/resources/css/bootstrap.min.css"/>" rel="stylesheet">
	<link href="<c:url value="/resources/css/custom.css"/>" rel="stylesheet">
	<script src="<c:url value="/resources/js/respond.js"/>"></script>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
    <script src="<c:url value="/resources/js/bootstrap.min.js"/>"></script>
    <script src="<c:url value="/resources/js/respond.js"/>"></script>
    
</head>
<body>
<%@include file="Navigaton.jsp"%>
<c:forEach items="${productmodelList}" var="productModel">
	<div class="row">
	<div class="col-md-4">
	</div>
		<div class="col-md-6">
		
				<img
						src="<c:url value="resources/admin/upload/${productModel.imagename}.jpg"/>"
						class="img-responsive">
		<div class="col-md-6">
			<center><h1>${productModel.category}-${productModel.name}</h1></center>
			<hr>
			<center><h3>RS${productModel.price}</h3></center>
			<hr>
			<div class="col-md-6">
				<a href="#" class="btn btn-default "> Buy</a>
			</div>
			<div class="col-md-6">
				<a href="<c:url value="user/addtocart/${productModel.id}"/>" class="btn btn-default"> <span class="glyphicon glyphicon-shopping-cart"></span> Add to cart</a>
			</div>
		</div>
	</div>

	
	<div class="row">
		<div class="col-xs-12">
			<ul id="myTab" class="nav nav-tabs nav_tabs">
				<li class="active"><a href="#" data-toggle="tab">DESCRIPTION</a></li>
			
			</ul>
		</div>	
	</div>
	
	<div class="row">
		<div class="col-xs-12">					
			<ul>${productModel.description}</ul>
			</div>
	</div>
</div>
</c:forEach>
</body>
</html>