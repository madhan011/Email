<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<nav class="navbar navbar-inverse">
			<div class="container-fluid">
				<div class="navbar-header">
					<button type="button" class="navbar-toggle" data-toggle="collapse"
						data-target="#myNavbar">
						<span class="icon-bar"></span> <span class="icon-bar"></span> <span
							class="icon-bar"></span>
					</button>
					<a class="navbar-brand" href="#"><p style="color:#DEA573">MOBIACES</p></a>
				</div>
				<div class="collapse navbar-collapse" id="myNavbar">
					<ul class="nav navbar-nav">
						<li><a href="<c:url value="/home"/>">Home</a></li>
					
					<li><a href="<c:url value="/viewall"/>">View All</a></li> 
				
				<!--  	<li><a href="registration.htm">regvalid</a></li>-->
				
					</ul>
					
					<ul class="nav navbar-nav navbar-right">
					<c:if test="${pageContext.request.userPrincipal.name!=null}">
						<li>${pageContext.request.userPrincipal.name}</li>
					   <li><a href="<c:url value="/logout"/>">LOGOUT</a></li>
					 </c:if>
					 <c:if test="${pageContext.request.userPrincipal.name == null}">
						<li><a href="<c:url value="/memberShip.obj"/>"><span class="glyphicon glyphicon-user"></span> Sign Up</a></li>
						<li><a href="<c:url value="/login"/>"><span
								class="glyphicon glyphicon-log-in"></span> Login</a></li>
					</c:if>
					</ul>
				</div>
			</div>
		</nav>
	