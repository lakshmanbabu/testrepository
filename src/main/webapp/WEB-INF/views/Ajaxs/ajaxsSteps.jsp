<%@ page pageEncoding="ISO-8859-1"  contentType="text/html; charset=UTF-8" %>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ page session="false"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="f" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}"/>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Ajaxs Tutorial</title>
</head>
<body>
<div id="templatemo_content_wrapper">
    
    	<div id="templatemo_sidebar_wrapper">
    
            <div id="templatemo_sidebar_top"></div>
            <div id="templatemo_sidebar">
            
                <h2>Our Services</h2>
                
                <ul class="categories_list">
                 	<li><a href="javascript:void(0);">CoreJava Tutorials</a></li>
                    <li><a href="javascript:void(0);">Spring Tutorials</a></li>
                    <li><a href="javascript:void(0);">Hibernate Tutorials</a></li>
                    <li><a href="javascript:void(0);">Struts Tutorials</a></li>
                    <li><a href="javascript:void(0);">Android Tutorials</a></li>
                    <li><a href="javascript:void(0);">JSP Tutorials</a></li>
                    <li><a href="${contextPath}/u/ajaxsScreen">Ajaxs Tutorials</a></li>
                    <li><a href="javascript:void(0);">Jquery Tutorials</a></li>
                    <li><a href="javascript:void(0);">HTML Tutorials</a></li>
                    <li><a href="${contextPath}/u/angularJs">AngularJS Tutorials</a></li>
                </ul>
                
                <div class="cleaner_h30"></div>
                <div class="cleaner_h10"></div>
                <div class="cleaner_h10"></div>
                <h2>Newsletter</h2>
            
                <form action="#" method="get">
                    <label>Please enter your email address to subscribe our newsletter.</label>
                    <input type="text" value="" name="username" size="10" id="input_field" title="usernmae" />
                    <input type="submit" name="login" value="Subscribe" alt="login" id="submit_btn" title="Login" />
                </form>
                
                <div class="cleaner_h10"></div>
                
            </div>
            <div id="templatemo_sidebar_bottom"></div>
        
        </div>
    
		 <div id="templatemo_content">
		 <span style="float: right; margin-top: -77px; "><a href="<c:url value='/j_spring_security_logout' />" >LOGOUT</a></span>
		 <h1>AJAX Tutorial</h1>
        	<hr/>
           <h3>Table of Contents:</h3>
           
           <ul>
           		<li> <a href="${contextPath}/u/ajaxsMeans"> What is Ajaxs ? </a></li>
           		<li> <a href="${contextPath}/u/ajaxsFeatures"> What is Advantages/Features in Ajaxs ?</a></li>
           		<li><a href="${contextPath}/u/ajaxsExamples"> Ajaxs Examples </a></li>
           		<li><a href="${contextPath}/u/ajaxsTypes"> Ajaxs Types </a></li>
           		
           </ul>
        
        </div>
        
        <div class="cleaner"></div>
    
    </div>
    


</body>
</html>