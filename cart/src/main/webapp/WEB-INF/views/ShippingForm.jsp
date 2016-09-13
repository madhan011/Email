<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page session="true"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Shipping Conformation</title>
</head>
<body>
<center><h1>SHIPPING DETAILS</h1></center>
<div>
<form:form action="<c:url value="user/orderplaced"/>" method="POST" modelAttribute="ordet">
		<form:input input path="sname" pattern="[a-zA-Z\s]{3,30}" required="true"
						class="form-control input-lg" placeholder="Name"/>

		<form:input path="Addr1"  required="true"
						class="form-control input-lg" placeholder="Enter the address line"/>
		<form:input path="Addr2"  required="true"
						class="form-control input-lg" placeholder="Enter the Address Line 2"/>
		<form:input path="Addr3"  required="true"
						class="form-control input-lg" placeholder="Enter the Address Line 3"/>
		<div class="col-md-6">
		<form:select  class="define" path="City" name="City">
			 <form:option value="Chennai">Chennai</form:option>
   			<form:option value="Madurai">Madurai</form:option>
   			<form:option value="Thuttukudi">Thuttukudi</form:option>
  		 	<form:option value="Kannaayakumari">Kannayakumari</form:option>
  		 	<form:option value="Thirunelveli">Thirunelveli</form:option>
  		 	<form:option value="Thanjavur">Thanjavur</form:option>
  		 	<form:option value="Trichy">Trichy</form:option>
			</form:select>
		</div>
		<div class="col-md-6">	
		<form:input path="pincode" required="true"
								class="form-control input-lg" placeholder="PinCode" pattern="{10}"/>		
		</div>
		<form:input path="PhoneNumber" required="true"
								class="form-control input-lg" placeholder="phone number" pattern="[789][0-9]{9}"/>				
</form:form>
</div>

</body>
</html>