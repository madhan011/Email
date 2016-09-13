<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="security" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>ViewAll</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
  <link href="<c:url value="/resources/css/bootstrap.min.css"/>" rel="stylesheet">
	<link href="<c:url value="/resources/css/custom.css"/>" rel="stylesheet">
	<script src="<c:url value="/resources/js/respond.js"/>"></script>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
    <script src="<c:url value="/resources/js/bootstrap.min.js"/>"></script>
    <script src="<c:url value="/resources/js/respond.js"/>"></script>
</head>
<body>
<script
 src="http://ajax.googleapis.com/ajax/libs/angularjs/1.2.23/angular.min.js"></script>
<script type="text/javascript">
angular.module("myApp",[]).controller('mainController',function($scope,$http){
alert("hi");
console.log("wahts is this");
$http({method:'GET',
	url:'wat'}).success(function(data,status,header,config){
	alert("Welcome");
	$scope.prod=data;
	console.log("len"+prod.length);
	for(var c=0;c<$scope.prod.length;c++)
		{
		var d=$scope.prod[c];
		console.log(d);
		console.log($scope.prod);
		return $scope.prod;
		}
});
});

</script>


<%@include file="Navigaton.jsp"%>
<div ng-app="myApp" ng-controller="mainController">
<table >



<tr ng-repeat="ce in prod">

					<td>{{ce.id}}</td>
					<td>{{ce.name}}</td>
					<td>{{ce.description}}</td>
					<td>{{ce.price}}</td>
					<td>{{ce.category}}</td>


</tr>

</table>
</div>
</body>
</html>