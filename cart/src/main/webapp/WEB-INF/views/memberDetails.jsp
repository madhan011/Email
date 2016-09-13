<%@taglib prefix="sf" uri="http://www.springframework.org/tags/form"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>REGISTRATION</title>
<link href="style.css" rel="stylesheet" type="text/css" />
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="<c:url value="/resources/css/bootstrap.min.css"/>"
	rel="stylesheet">
<link href="<c:url value="/resources/css/custom.css"/>" rel="stylesheet">
<script src="<c:url value="/resources/js/respond.js"/>"></script>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
<script src="<c:url value="/resources/js/bootstrap.min.js"/>"></script>
<script src="<c:url value="/resources/js/respond.js"/>"></script>
</head>
<style>
body{
background-color:#DEA573;
}
.every
{
border:5px;
border-color:#00000;
}
.fuck{
position:center;
}
</style>
<body>
	<div class="container" id="wrap">
		<div class="row top-buffer">
			<div class="every col-md-6 col-md-offset-3">


				<sf:form modelAttribute="newuser" accept-charset="utf-8"
					class="form" role="form">
					<h1>Sign Up</h1>
					<p></p>
					<sf:label path="fname">Name:</sf:label>
					<br>
					<sf:input path="fname" pattern="[a-zA-Z\s]{3,30}" required="true"
						class="form-control input-lg" placeholder="Name" />

					<!-- to display validation messages -->
					<c:forEach
						items="${flowRequestContext.messageContext.getMessagesBySource('fname')}"
						var="err">
						<div>
							<span>${err.text}</span>
						</div>
					</c:forEach>
					<br>
					<sf:label path="email">Email Id: </sf:label>
					<br>
					<sf:input path="email"
						pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,3}$" required="true"
						class="form-control input-lg" placeholder="Your Email" />

					<c:forEach
						items="${flowRequestContext.messageContext.getMessagesBySource('email')}"
						var="err">
						<div>
							<span>${err.text}</span>
						</div>
					</c:forEach>
					<br>
					<div class="row">
						<div class="col-xs-4">
							<sf:label path="age">Age</sf:label>
							<br>
							<sf:input path="age" required="true"
								class="form-control input-lg" placeholder="Your Age" />
							<br />
							<c:forEach
								items="${flowRequestContext.messageContext.getMessagesBySource('age')}"
								var="err">
								<div>
									<span>${err.text}</span>
								</div>
							</c:forEach>
						</div>
						<div class="col-xs-8">
							<sf:label path="phnumber">Phone Number:</sf:label>
							<br>
							<sf:input path="phnumber" required="true"
								class="form-control input-lg" placeholder="phone number" pattern="[789][0-9]{9}"/>

							<!-- to display validation messages -->
							<c:forEach
								items="${flowRequestContext.messageContext.getMessagesBySource('phnumber')}"
								var="err">
								<div>
									<span>${err.text}</span>
								</div>
							</c:forEach>
						</div>
					</div>
					<sf:label path="username">Username</sf:label>
					<br>
					<sf:input path="username" required="true"
						class="form-control input-lg" placeholder="Username" />
					<br />
					<!-- to display validation messages -->
					<c:forEach
						items="${flowRequestContext.messageContext.getMessagesBySource('username')}"
						var="err">
						<div>
							<span>${err.text}</span>
						</div>
					</c:forEach>
					<div class="row">
						<div class="col-xs-6">
							<sf:label path="password">Password:</sf:label>
							<sf:input path="password" type="password" required="true"
								class="form-control input-lg" placeholder="Password" />
							<br />
							<!-- to display validation messages -->
							<c:forEach
								items="${flowRequestContext.messageContext.getMessagesBySource('password')}"
								var="err">
								<div>
									<span>${err.text}</span>
								</div>
							</c:forEach>
						</div>
						<div class="col-xs-6">
							<sf:label path="cPassword">Conformtion Password </sf:label>
							<br>
							<sf:input path="cPassword" type="password" required="true"
								class="form-control input-lg" placeholder="cre typr password" />
							<br />
							<!-- to display validation messages -->
							<c:forEach
								items="${flowRequestContext.messageContext.getMessagesBySource('cPassword')}"
								var="err">
								<div>
									<span>${err.text}</span>
								</div>
							</c:forEach>
						</div>
					</div>

					<br />
					<!-- for triggering webflow events using form submission,
					 the eventId to be triggered is given in "name" attribute as:
					-->
					<div class="row">
						
							<div class="col-xs-3 fuck" >
							
								<button align="center" class="btn btn-md btn-success btn-block signup-btn"
									name="_eventId_submit" type="submit" value="Submit" onclick="return validatePassword()">Sign
									Up</button>

							</div></div></sf:form>
							<br><div class="row">
							<div class="col-xs-3">
								<button class="btn btn-md btn-danger btn-block signup-btn"
									type="reset">Reset</button>

							</div>
							<div class="col-xs-3">
								<a href="<c:url value="login"/>"><button class="btn btn-md btn-warning btn-block signup-btn">
								Login</button></a>

							</div><div class="col-xs-3">
								<a href="<c:url value="home"/>"><button class="btn btn-md btn-primary btn-block signup-btn">
								Home</button></a>

							</div>
				
						
					</div>
				
			</div>
		</div>
	</div>
	<script type="text/javascript">
	function validatePassword(){
	var password = document.getElementById("password").value;
    var confirmPassword = document.getElementById("cPassword").value;
    if (password != confirmPassword) {
        alert("Passwords do not match.");
        return false;
    }
    return true;
}

		
	</script>
</body>
</html>