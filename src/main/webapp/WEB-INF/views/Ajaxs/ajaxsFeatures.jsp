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
<title>Ajaxs Features</title>
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
        <h2>Features/Advantages : </h2>
        <hr/><br/> 
       
       	 <ul>
			<li>Reduce the traffic travels between the client and the server.</li>
			<li>Response time is faster so increases performance and speed.</li>
			<li>You can use JSON (JavaScript Object Notation) which is alternative to XML. JSON is key value pair and works like an array.</li>
			<li>You can use Firefox browser with an add-on called as Firebug to debug all Ajax calls.</li>
			<li>Ready Open source JavaScript libraries available for use – JQuery, Prototype, Scriptaculous, etc.</li>
			<li>AJAX communicates over HTTP Protocol.</li>
		</ul>
      
       <hr/><br/>
       <h2>Disadvantages :</h2>
       <hr/>
        <ul>
			<li>It can increase design and development time.</li>
			<li>More complex than building classic web application</li>
			<li>Security is less in AJAX application as all files are downloaded at client side.</li>
			<li>Search Engine like Google cannot index AJAX pages.</li>
			<li>JavaScript disabled browsers cannot use the application.</li>
			<li>Due to security constraints, you can only use it to access information from the host that served the initial page. If you need to display information from another server, it is not possible within the AJAX.</li>
		</ul>
		
        </div>
        
        <div class="cleaner"></div>
    
    </div>
</body>
</html>