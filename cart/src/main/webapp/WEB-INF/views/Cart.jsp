<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%@include file="Navigaton.jsp"%>
<table border="1">
<tr>
			<th>Quantity</th>
			<th>NAME</th>
			<th>DESCRIPTION</th>
			<th>PRICE</th>
			<th>CATEGORY</th>
			<th>Total Prize</th>
		<!--  	<th>EDIT</th>
			<th>DELETE</th>-->
			<c:forEach items="${cartlist}" var="cart">
				<tr>
					<td>${cart.quantity}</td>
					<td>${cart.product.name}</td>
					<td>${cart.product.description}</td>
					<td>${cart.product.price}</td>
					<td>${cart.product.category}</td>
					<td>${cart.totalprice}</td>
			</tr></c:forEach>
</body>
</html>