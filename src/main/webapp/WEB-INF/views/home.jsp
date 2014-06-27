<%@ page pageEncoding="ISO-8859-1" contentType="text/html; charset=UTF-8 " %>

<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ page session="false"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="f" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}"/>

<html>
<head>
<title><spring:message code="label.home" /></title>
<link href='http://fonts.googleapis.com/css?family=Lato:400,700,900,300italic,400italic,700italic,900italic|Signika:400,700,300,600' rel='stylesheet' type='text/css'>
<link href="http://fonts.googleapis.com/css?family=Roboto:400,100,100italic,300,300italic,400italic,500,500italic,700,700italic,900,900italic|Roboto+Condensed:300italic,400italic,700italic,400,300,700" rel="stylesheet" type="text/css">
<link href="${contextPath}/resources/css/Lang-Style.css" rel="stylesheet">	
<%-- <link href="${contextPath}/resources/css/bootstrap.min.css" rel="stylesheet">
<link href="${contextPath}/resources/css/jquery-ui.css" rel="stylesheet">
<link href="${contextPath}/resources/css/jquery.multiselect.css" rel="stylesheet"> --%>

<script src="${contextPath}/resources/js/chosen.jquery.min.js"></script>
<script src="${contextPath}/resources/js/jquery-1.10.2.min.js"></script>
<script src="${contextPath}/resources/js/bootstrap.min.js"></script>
<script src="${contextPath}/resources/js/lang.js"></script>
<script type="text/javascript">


</script>

</head>

<body>
<%-- <div align="right">
<ul class="menu">
    <li class="dropdown">
        <a href="#" class="toplevel"><spring:message code="label.lang.language"/></a>
        <ul class="submenu">
            <li><a href="?locale=en"><spring:message code="label.lang.english"/></a></li>
            <li><a href="?locale=fr"><spring:message code="label,lang.french"/></a></li>
            <li><a href="?locale=de"><spring:message code="label,lang.german"/></a></li>
            <li><a href="?locale=te"><spring:message code="label,lang.telugu"/></a></li>
            <li><a href="?locale=zh_CN"><spring:message code="label,lang.chinese"/></a></li>
            
        </ul>
    </li>
</ul>
</div>
	 <a href="${contextPath}/hello"><spring:message code="label.title"></spring:message></a><br/>
	<a href="${contextPath}/contacts"><spring:message code="label.contacts.addcontact"></spring:message></a>
	 --%>
	 
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
                
                  <h2>Login</h2>
                   If your Already registered &nbsp;<a  href="${contextPath}/login">Login</a><br/><br/>
                   Register free Account &nbsp;<a href="${contextPath}/signup">Signup</a>
                   
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
        
        	<div class="content_section">
        
                <h2>Welcome to our Website</h2>
                
                <div class="float_l_image">
	                <img src="resources/images/java hd wallpapers, java image.png" alt="image" style="width: 243px; height: 200px;" />
                </div>
                
                <p><a href="javascript:void(0);" target="_parent">Free CSS Templates</a> are provided by <a href="javascript:void(0);" target="_parent">TemplateMo.com</a> for everyone. You can download, modify and apply any template for your own websites. Credits go to <a href="javascript:void(0);" target="_blank">Public Domain Pictures</a> and <a href="javascript:void(0);">Free Vectors</a>. Validate <a href="javascript:void(0);">XHTML</a> &amp; <a href="javascript:void(0);">CSS</a>.</p>
                
              <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla aliquet, ipsum bibendum pretium volutpat, diam magna facilisis ante, at lobortis nisl purus ac ipsum. Mauris purus augue, ullamcorper ac pharetra et, varius vitae sapien. Duis sed purus rutrum purus ultrices condimentum.</p>
                
            </div>
            
            <div class="content_section">
            
            	<div class="section_w260  float_l margin_r40">
                	
                    <h2>Gallery</h2>
                    
                    <ul class="gallery">
                    	<li><a href="javascript:void(0);"><img src="resources/images/java hd wallpapers, java image.png" alt="image 1" style="width: 80px; height: 80px;"/></a></li>
                        <li><a href="javascript:void(0);"><img src="resources/images/Spring.jpg" alt="image 2"style="width: 80px; height: 80px;" /></a></li>
                        <li><a href="javascript:void(0);"><img src="resources/images/ajaxs.jpg" alt="image 3"  style="width: 80px; height: 80px;"/></a></li>
                        <li><a href="javascript:void(0);"><img src="resources/images/SpringSecurity.jpg" alt="image 4" style="width: 80px; height: 80px;"/></a></li>
                         <li><a href="javascript:void(0);"><img src="resources/images/jquery_logo.png" alt="image 6" style="width: 80px; height: 80px;"/></a></li>
                        <li><a href="javascript:void(0);"><img src="resources/images/jsp.png" alt="image 5" style="width: 80px; height: 80px;"/></a></li>
                        <li><a href="javascript:void(0);"><img src="resources/images/android_tutorial.jpg" alt="image 9" style="width: 80px; height: 80px;"/></a></li>
                        <li><a href="javascript:void(0);"><img src="resources/images/hibernate2.png" alt="image 7" style="width: 80px; height: 80px;"/></a></li>
                        <li><a href="javascript:void(0);"><img src="resources/images/logo-dojo.jpg" alt="image 8" style="width: 80px; height: 80px;"/></a></li>
                        
                   </ul>
                   
                   <div class="cleaner_h20"></div>
                   <div class="button_01"><a href="javascript:void(0);">All Photos</a></div>
                    
                </div>
                
                <div class="section_w260 float_l">
                
                	<h2>Tutorials Story</h2>
                    
                    <h3>Spring MVC &amp; Spring Security</h3>
                    <p>Suspendisse adipiscing, mauris at pretium tincidunt, dui ligula venenatis odio, nec ultricies sapien felis in libero. Vivamus ut ante. Suspendisse rutrum ipsum est, sed iaculis.</p>
                    <div class="button_01"><a href="javascript:void(0);">Read more</a></div>
                    
                    <div class="cleaner_h20"></div>
                    
                    <h3>Ajaxs &amp; Spring Mvc</h3>
                    <p>Mauris dictum leo quis lacus venenatis at semper quam laoreet. Donec molestie libero id arcu laoreet ac consectetur enim blandit. Nulla ut nunc lorem, at porttitor nunc.</p>
                    <div class="button_01"><a href="javascript:void(0);">Read more</a></div>
                
                </div>
                
                <div class="cleaner"></div>
            
            </div>
        
        </div>
        
        <div class="cleaner"></div>
    
    </div>
</body>
</html>
