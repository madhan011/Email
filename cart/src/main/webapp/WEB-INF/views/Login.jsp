<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page session="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<title>Login Page</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
  <link href="<c:url value="/resources/css/bootstrap.min.css"/>" rel="stylesheet">
	<link href="<c:url value="/resources/css/custom.css"/>" rel="stylesheet">
	<script src="<c:url value="/resources/js/respond.js"/>"></script>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
    <script src="<c:url value="/resources/js/bootstrap.min.js"/>"></script>
<style>
h3{
text-align:center;
color:#DEA573;
}
body,
a {
  font-family: calibri;
  font-size: 14px;
  font-weight: normal;
  color: #3B424F;
}
.main-wrap {
  background:#DEA573;
  width: 100%;
  height: 100%;
  position: absolute;
}
.login-main {
  width: 300px;
  height: 200px;
  position: absolute;
  margin: auto;
  top: 0;
  bottom: 0;
  left: 0;
  right: 0;
  background: #000000;
  padding: 10px;
  -webkit-border-radius: 10px;
  -moz-border-radius: 10px;
  -ms-border-radius: 10px;
  -o-border-radius: 10px;
  border-radius: 10px;
}
.login-main p {
  text-indent: 10px;
}
.box1 {
  background: #DEA573;
  height: 40px;
  text-indent: 10px;
  width: 90%;
  margin-bottom: 2px;
  color: #3B424D;
  font-size: 15px;
  font-weight: 400;
}
.border1 {
  -webkit-border-radius: 5px 5px 0 0;
  -moz-border-radius: 5px 5px 0 0;
  -ms-border-radius: 5px 5px 0 0;
  -o-border-radius: 5px 5px 0 0;
  border-radius: 5px 5px 0 0;
}
.border2 {
  -webkit-border-radius: 0px 0 5px 5px;
  -moz-border-radius: 0px 0 5px 5px;
  -ms-border-radius: 0px 0 5px 5px;
  -o-border-radius: 0px 0 5px 5px;
  border-radius: 0px 0 5px 5px;
}
.send {
  width: 60px;
  height: 60px;
  -webkit-border-radius: 50%;
  -moz-border-radius: 50%;
  -ms-border-radius: 50%;
  -o-border-radius: 50%;
  border-radius: 50%;
  position: absolute;
  right: 9px;
  top: 77px;
  border: 5px solid #DEA573;
  background: #000000;
  font-size: 18px;
  color: #DEA573;
  font-weight: normal;
  text-shadow: 1px 1px 2px #000;
  box-sizing: border-box;
  -webkit-box-sizing: border-box;
}
.send:hover {
  animation: spin 0.3s ease-in-out;
  -webkit-animation: spin 0.3s ease-in-out;
  -moz-animation: spin 0.3s ease-in-out;
  -ms-animation: spin 0.3s ease-in-out;
  -o-animation: spin 0.3s ease-in-out;
  cursor: pointer;
}
@keyframes spin {
  from {
    transform: rotate(0deg);
  }
  to {
    transform: rotate(360deg);
  }
}
@-webkit-keyframes spin {
  from {
    -webkit-transform: rotate(0deg);
  }
  to {
    -webkit-transform: rotate(360deg);
  }
}
@-moz-keyframes spin {
  from {
    -moz-transform: rotate(0deg);
  }
  to {
    -moz-transform: rotate(360deg);
  }
}
@-o-keyframes spin {
  from {
    -o-transform: rotate(0deg);
  }
  to {
    -o-transform: rotate(360deg);
  }
}
.button1{
margin-top:10px;
background-color:#000000;
color:#DEA573;

}

.button1:hover{
color:#000000;
background-color:#DEA573;
border:1px solid #000000;
}
</style>
</head>
<body >
		<form name='loginForm'
			action="<c:url value='j_spring_security_check' />" method='POST'>


    <div class="main-wrap">
        <div class="login-main">
        	<h3>LOGIN</h3>
            <input type="text" placeholder="username" name="username" class="box1 border1">
            <input type="password" placeholder="password" name="password" class="box1 border2">
            <input type="submit" class="send" value="Go">
             <a class="btn button1" href="<c:url value="/memberShip.obj"/>">Sign Up</a>   
        	 <a class="btn button1 Pull-right" style="margin-right:30px"href="<c:url value="/home"/>">Home</a>
        </div>
        
    </div>
  </form>  
</body>
</html>