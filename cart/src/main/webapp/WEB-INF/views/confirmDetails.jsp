<%@taglib prefix="sf" uri="http://www.springframework.org/tags/form"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Spring Mvc WebFlow Demo</title>
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
	<div class="content">
		
			<h1 style="text-align:center" >REGISTRATION</h1>
			<!-- for triggering webflow events using links,
					 the eventId to be triggered is given in "href" attribute as:
				 -->
			
			<br />
			<div class="view col-md-4">
			<sf:form modelAttribute="newuser">
				<sf:label path="fname">UserName:</sf:label>${newuser.fname}
					<br />
				<br />
				<sf:label path="email">Email Id:</sf:label>${newuser.email}
					<br />
				<br />
				<sf:label path="age">Age :</sf:label>${newuser.age}
					<br />
				<br />
				<sf:label path="username">Username:</sf:label>${newuser.username}
					<br />
				<br />
			<!--  	<sf:label path="password">Password	:</sf:label>${newuser.password}
					<br />
				<br />
				<sf:label path="cPassword">Conformation password:</sf:label>${newuser.cPassword}
					<br />
				<br /> -->
				<sf:label path="phnumber">Phonenumber:</sf:label>${newuser.phnumber}
					<br />
				<br />
				<!-- for triggering webflow events using form submission,
					 the eventId to be triggered is given in "name" attribute as:
					-->
				<input name="_eventId_edit" type="submit" value="Edit" />
				<input name="_eventId_submit" type="submit" value="Confirm Details" />
				<br />
			</sf:form>
		</div>
	</div>
</body>
</html>