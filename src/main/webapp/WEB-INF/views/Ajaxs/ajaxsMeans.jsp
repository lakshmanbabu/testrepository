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
<title>Ajaxs Means</title>
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
        <h2> What is Ajaxs ?</h2>
        	 <hr/>
        <p>
        	AJAX = Asynchronous JavaScript and XML.<br/>

			AJAX is not a new programming language, but a new way to use existing standards.<br/>

			AJAX is the art of exchanging data with a server, and updating parts of a web page - without reloading the whole page.<br/>
			
			Classic web pages, (which do not use AJAX) must reload the entire page if the content should change.<br/>

				Examples of applications using AJAX: Google Maps, Gmail, Youtube, and Facebook tabs.
			<br/><br/>
			(or)<br/><br/>
			
			AJAX stands for Asynchronous JavaScript and XML. AJAX is a new technique for creating better, faster, and more interactive web applications with the help of XML, HTML, CSS and Java Script.
        
        <hr/><br/>
        <h2>How AJAX Works</h2>
        <img alt="how Ajaxs Works" src="${contextPath}/resources/images/Ajaxs/ajax1.gif"/>
        <hr/><br/>
        <h2>AJAX is Based on Internet Standards</h2>
        <p>AJAX is based on internet standards, and uses a combination of:</p>
        <ul>
			<li>XMLHttpRequest object (to exchange data asynchronously with a server)</li>
			<li>JavaScript/DOM (to display/interact with the information)</li>
			<li>CSS (to style the data)</li>
			<li>XML (often used as the format for transferring data)</li>
		</ul>

        </p>
        </div>
        
        <div class="cleaner"></div>
    
    </div>
</body>
</html>