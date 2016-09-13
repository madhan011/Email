<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page session="true"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Product upload</title>
<meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link href="<c:url value="/resources/css/bootstrap.min.css"/>" rel="stylesheet">
	<link href="<c:url value="/resources/css/custom.css"/>" rel="stylesheet">
	<script src="<c:url value="/resources/js/respond.js"/>"></script>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
    <script src="<c:url value="/resources/js/bootstrap.min.js"/>"></script>
<style>
.button1{
background-color:#DEA573;
color:#000000;
border:1px solid #000000;
}
.button1:hover{
color:#DEA573;
background-color:#000000;
}
tr{

height:40px;
color:#DEA573;
}
table {
    border-collapse: collapse;
   background-color: #000000;
   width:65%;
    margin-top:5px;
    border:5px solid #DEA573; 
  
}

th, td {
    text-align: center;
   	font-family:CURSIVE;
   	font-weight: bold;
   	font-size:16px;
    padding:8px;
}
.define{
color:#000000;
width:360px
}
tr:nth-child(even){background-color: #DEA573;color:#000000}
</style>
</head>
<body>
<%@include file="Navigaton.jsp"%>
<div class="col-md-12">
<h1 style="text-align:center">Product Upload</h1>

	<center><form:form action="productmodel" method="POST" modelAttribute="ob" enctype="multipart/form-data" >
		<table >
		
		<tr>
			<td>Product ID</td>
			<td><form:input path="id" class="define"/></td>
			<td><form:errors path="id" cssStyle="color : red;"/></td>
		</tr>
		
		<tr>
			<td>Product Name</td>
			<td><form:input path="name" class="define"/></td>
			<td><form:errors path="name" cssStyle="color : red;"/></td>
		</tr>
		
		<tr>
			<td>Product Brand</td>
			<td><form:input path="brand" class="define"/></td>
			<td><form:errors path="brand" cssStyle="color : red;"/></td>
		</tr>

		<tr>
		<td> Image Name</td><td><form:input path="imagename"  type="text" class="define"></form:input></td>
		<td><form:errors path="imagename" cssStyle="color : red;"/></td></tr>
		<tr><td>Select Image</td><td><center><form:input path="filename" type="file"/></center></td>
		
		</tr>
		
		<tr>
			<td>CATEGORY</td>
		<td>	<form:select  class="define" path="category" name="CATEGORY">
			 <form:option value="NONE" label="--- Select ---"/>
   			<form:option value="Headphones">HEADPHONES</form:option>
   			<form:option value="Chargers">CHARGERS</form:option>
  		 	<form:option value="Cases">CASES</form:option>
  		 	<form:option value="Screenguards">SCREEN GUARDS</form:option>
  		 	<form:option value="Cables">CABLES</form:option>
  		 	<form:option value="Storage">STORAGE</form:option>
			</form:select></td>
			<td><form:errors path="category" cssStyle="color : red;"/></td>
		</tr>
		
		<tr>
			<td>Product Description</td>
			<td><form:input path="description" class="define"/></td>
			<td><form:errors path="description" cssStyle="color : red;"/></td>
		</tr>
		
		<tr>
			<td>Price</td>
			<td><form:input path="price" type="number" class="define"/></td>
			<td><form:errors path="price" cssStyle="color : red;"/></td>
		
		</tr>
		
		<tr>
			<td>Quantity</td>
			<td><form:input path="quantity" type="number" class="define"  /></td>
			<td><form:errors path="quantity" cssStyle="color : red;"/></td>
		
		</tr>
		
		
		</table>
		<br>
		<center><input type="submit" class="btn btn-lg button1"  name="action" value="Add" />
				<input type="submit" class="btn btn-lg button1"  name="action" value="Update" /> </center>
		
	</form:form></center>
</div>

</body>
</html>