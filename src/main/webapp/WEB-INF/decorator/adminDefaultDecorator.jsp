<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}"/>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"  pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title><sitemesh:write property='title'/></title>
<meta name="keywords" content="wedding store, free web templates, free css templates" />
<meta name="description" content="Wedding Store is a free web template for everyone. Download this template from templatemo.com" />
<link href="http://fonts.googleapis.com/css?family=Lato:400,700,900,300italic,400italic,700italic,900italic|Signika:400,700,300,600" rel="stylesheet" type="text/css">
<link href="http://fonts.googleapis.com/css?family=Roboto:400,100,100italic,300,300italic,400italic,500,500italic,700,700italic,900,900italic|Roboto+Condensed:300italic,400italic,700italic,400,300,700" rel="stylesheet" type="text/css">


 <link rel="stylesheet" href="${contextPath}/resources/css/jquery-ui.css" /> 
 <link rel="stylesheet" href="${contextPath}/resources/css/bootstrap.css" />
 <link rel="stylesheet" href="${contextPath}/resources/css/bootstrap-multiselect.css" /> 
 <link rel="stylesheet" href="${contextPath}/resources/css/demo_page.css" /> 
 <link rel="stylesheet" href="${contextPath}/resources/css/demo_table.css" />
 <link rel="stylesheet" href="${contextPath}/resources/css/bootstrap-multiselect.css" /> 

<script type="text/javascript" src="${contextPath}/resources/js/jquery-1.10.2.min.js"></script>
<script type='text/javascript' src="${contextPath}/resources/js/lang.js"></script>
<script type='text/javascript' src="${contextPath}/resources/js/chosen.jquery.min.js"></script>
<script type="text/javascript" src="${contextPath}/resources/js/bootstrap.min.js"></script>
<script type="text/javascript" src="${contextPath}/resources/js/bootbox.js"></script>
<script type="text/javascript" src="${contextPath}/resources/js/bootstrap.js"></script>
<script type="text/javascript" src="${contextPath}/resources/js/jquery.dataTables.min.js"></script>
<script type="text/javascript" src="${contextPath}/resources/js/jquery-ui.js"></script>
<script type="text/javascript" src="${contextPath}/resources/js/jquery.blockUI.js"></script>


<style type="text/css">

.active {
	/* background-color: #e7e7e7; */
	background-color: #CCCCE5;
}

.container {
	margin-right: 0;
	margin-left: 0;
}

</style>
</head>
<body>

	<c:url var="adminHomeUrl" value="/admin/adminHome" />
	<c:url var="manageCorejava" value="/admin/manageCorejava" />
	<c:url var="manageSpringMvc" value="/admin/manageSpringMvc" />
	<c:url var="manageUsers" value="/admin/manageUsers" />
	
	<c:url var="loginUrl" value="/admin/login" />
<!-- Header Part Start -->
	<div class="navbar navbar-default navbar-fixed-top">
		<div class="container">
			<div class="navbar-header">
				 <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
					<span class="sr-only"></span> <span class="icon-bar"></span> <span class="icon-bar"></span> 
					<span class="icon-bar"></span>
				</button> 
				<a class="navbar-brand" href="${adminHomeUrl}"><img src="${contextPath}/resources/images/SSIS-Logo.png" style="height:30px"/></a>
			</div>
			<div class="navbar-collapse collapse">
				<ul class="nav navbar-nav navbar-right" style="margin-right:30px;">
				
					 <sec:authorize access="isAuthenticated()">	
								
					<sec:authorize access="hasRole('ADMIN')">
				    <li><a href="${contextPath}/admin/addAdmin">DDD</a></li>
					</sec:authorize>	
					
				    <li><a href="<c:url value="/admin/j_spring_security_logout" />">Logout</a></li>
					<li>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</li>
				    <li style="margin-top:15px"><b>Welcome   <sec:authentication property="principal.username" /></b></li>
					
					</sec:authorize>
				</ul>
			</div>
			<!--/.nav-collapse -->
		</div>
	</div>
	
	
		<!-- Content Part Start -->
	<div class="container">

		<div class="page-header" id="banner">
			<div class="row">
				<div class="col-lg-2">
				<sec:authorize access="isAuthenticated()">
						<div class="list-group">
							<ul class="list-group" style="margin-top: 45px;">
								  <li class="list-group-item active"> <a href="${adminHomeUrl}"> Dashboard </a></li>
								  <li class="list-group-item "> <a href="${manageUsers}">Manage Users </a></li>
								  <li class="list-group-item"> <a href="javascritpt:void(0);"> CoreJava Tutorial </a></li>
								  <li class="list-group-item"> <a href="${manageSpringMvc}"> Spring Tutorials </a></li>
								  <li class="list-group-item"> <a href="javascritpt:void(0);"> Hibernate Tutorials </a></li>
								  <li class="list-group-item"> <a href="javascritpt:void(0);"> Ajaxs Tutorials </a></li>
								  <li class="list-group-item"> <a href="javascritpt:void(0);"> Struts Tutorials </a></li>
								  <li class="list-group-item"> <a href="javascritpt:void(0);"> Android Tutorials </a></li>
								  <li class="list-group-item"> <a href="javascritpt:void(0);"> JSP Tutorials </a></li>
								  <li class="list-group-item"> <a href="javascritpt:void(0);"> Jquery Tutorials </a></li>
								  <li class="list-group-item"> <a href="javascritpt:void(0);"> AngularJS Tutorials </a></li>
								  <li class="list-group-item"> <a href="javascritpt:void(0);"> HTML Tutorials </a></li>
							</ul>
						</div>
						</sec:authorize>
				</div>
				
					<div class="col-lg-10">

						<sitemesh:write property='body'/>

					</div>
				
				
			</div>
		</div>
	</div>

	<!-- Content Part End -->
	


</body>
</html>