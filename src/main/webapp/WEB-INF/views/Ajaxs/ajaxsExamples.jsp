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
        <h2> AJAX Examples </h2>
        <hr/>
       <h3 style="color: black;">Difference in AJAX and Conventional CGI Program</h3><br/>
    
		<p>Try these two examples one by one and you will feel the difference. While trying AJAX example you do not feel any discontinuation and you get response very quickly but when you try standard GCI example then you would have to wait for the response and your page also get refreshed.</p>
		<%-- <p><b>AJAX Example:</b></p>
		<form name="form1" action="" onsubmit="return ajax_call()">
			<input type="text" name="num1" id="num1"></input> *
			<input type="text" name="num2" id="num2"></input> = 
			<input type="text" id="result1"></input>
		
			<br><br>
			<input type="submit" value="AJAX"></input>
		</form>
		<!-- -->
		<br><br>
		<p><b>Standard Example:</b></p>
		<form name="form1" action="${contextPath}/u/ajaxsCalucation1">
		  <input type="text" name="num1" id="num3" ></input> *
		        <input type="text" name="num2" id="num4" ></input> =
		        <input type="text"  id="result2" ></input>
			<br><br>
			<input type="submit" value="Standard"></input>
		</form> --%>

        </div>
        
        <div class="cleaner"></div>
    
    </div>
    
<script type="text/javascript">
var xmlhttp=false;

function ajax_call() {
   try{
      // Opera 8.0+, Firefox, Safari
      xmlhttp = new XMLHttpRequest();
   } catch (e){
      // Internet Explorer Browsers
      try{
         xmlhttp = new ActiveXObject("Msxml2.XMLHTTP");
      } catch (e) {
         try{
            xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
         } catch (e){
            // Something went wrong
            alert("Your browser broke!");
            return false;
         }
      }
   }
   xmlhttp.open("GET", '${contextPath}/u/ajaxsCalucation?num1=' + 
					document.getElementById('num1').value + 
						'&num2=' + document.getElementById('num2').value , true);
   xmlhttp.onreadystatechange= function() {
      if (xmlhttp.readyState==4) {
         document.getElementById('result1').value = xmlhttp.resultText;
      }
   }
   xmlhttp.send(null)
   return false;
}
</script>
    
</body>
</html>