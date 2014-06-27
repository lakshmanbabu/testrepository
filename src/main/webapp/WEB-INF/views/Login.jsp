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
<title>login page</title>

</head>
<body>
<div id="templatemo_content_wrapper">
	<div id="templatemo_sidebar_wrapper">
	  
	  </div>
	<div id="templatemo_content" style="height: 300px;">
	<span style="float: right;"><a href="${contextPath}/login" >LOGIN</a> | <a href="${contextPath}/signup" >SIGNUP</a></span>
        
            <c:if test="${not empty error}">
				 <div class="alert fade in" style="width:250px; margin-left: 170px;">
	                 <!-- <button type="button" class="close" data-dismiss="alert">×</button> -->           
	         
					<c:set var="msg" value='${sessionScope["SPRING_SECURITY_LAST_EXCEPTION"].message}'/>
					<c:if test="${msg == 'User is disabled'}">User is not activated</c:if>	
					<c:if test="${msg != 'User is disabled'}"><span style="color: red;">Incorrect password or username</span></c:if>			 
				 </div>	
			 </c:if>
			 
        <h2 style="padding-left: 158px;">Login</h2>
        
      <form action="<c:url value='j_spring_security_check' />" name="loginForm" method='POST'>
      
       <fieldset id="field" style="width:376px; height:137px;">
		<table style="margin-left: 61px; margin-top: 10px;">
			<tr>
				<td><label> <strong><spring:message	code="label.username" /></strong>
				</label></td>
				<td><input type="text" name="j_username" id="username"/></td>
			</tr>
			<tr>
				<td><label> <strong><spring:message	code="label.password" /></strong></label></td>
				<td><input type="password" name="j_password" id="password"/></td>
			</tr>
			<tr>
				<spring:message code="label.submit" var="labelSubmit"></spring:message>
				<td colspan="2"><input type="submit" class="btn btn-primary"  value="Sign in" style="margin-top: 22px; margin-left: 83px;" />  <a href="#">forget password</a> </td>
			</tr>
		</table>
		 <div class="cleaner"></div>
		 	  
		</fieldset>
	</form> 
      
        </div>
        
        <div class="cleaner"></div>
    
    </div> 
    
    
</body>
</html>