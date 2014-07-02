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
<title>admin Login</title>
</head>
<body>
 
	
	 <c:if test="${not empty error}">
	    <div class="alert alert-error" ><span style="color: red;" >  ${sessionScope['SPRING_SECURITY_LAST_EXCEPTION'].message}</span></div>
	</c:if> 
			
	
	
 <div align="center" style="width: 631px; margin-top: 54px;">
	<h3 align="center" style="margin-left: 102px;">Admin Login</h3>
		<form name='f' action="<c:url value='/admin/j_spring_security_check' />" method='POST'>
	      
	       <fieldset id="field">
			<table style="margin-left: 61px; margin-top: 10px;">
				<tr>
					<td><spring:message	code="label.username" />  &nbsp;</td>
					<td><input type="text" class="form-control"  name="j_username" id="username" placeholder="Username" style="margin-top: 7px; width: 250px;"/></td>
				</tr>
				
				<tr>
					<td> <spring:message	code="label.password" /> &nbsp;</td>
					<td><input type="password" class="form-control"  name="j_password" id="password" placeholder="Password" style=" width: 250px;"/></td>
				</tr>
				<tr>
					<spring:message code="label.submit" var="labelSubmit"></spring:message>
					<td colspan="2">
						<input type="reset" class="btn btn-primary"  value="Reset" style="margin-top: 22px; margin-left: 100px; " />
						<input type="submit" class="btn btn-primary"  value="Sign in" style="margin-top: 22px; margin-left: 19px;" />
					 </td>
				</tr>
			</table>
			 <div class="cleaner"></div>
			 	  
			</fieldset>
		</form>
		</div>  
	
<%-- <div class="container">
    <div class="row">
        <div class="col-sm-6 col-md-4 col-md-offset-4" style="margin-left: 231px;">
            <h1 class="text-center login-title">Admin Login</h1>
            <div class="account-wall">
                <img class="profile-img" src="https://lh5.googleusercontent.com/-b0-k99FZlyE/AAAAAAAAAAI/AAAAAAAAAAA/eu7opA4byxI/photo.jpg?sz=120" width="43" height="43" alt="admin login">
                <form action="<c:url value='j_spring_security_check' />" name="loginForm" method='POST' class="form-signin">
	                <input type="text" name="j_username" id="username" class="form-control" placeholder="Email" required autofocus><br/>
	                <input type="password"  name="j_password" id="password" class="form-control" placeholder="Password" required><br/>
	                 <button class="btn btn-lg btn-primary" type="reset" style="margin-top: 39px; margin-left: -6px;">Reset</button>
	                <button class="btn btn-lg btn-primary" type="submit" style="margin-top: 39px; margin-left: 20px;">Sign in</button>
	                <label class="checkbox pull-left">
	                    <input type="checkbox" value="remember-me">
	                    Remember me
	                </label>
                	
                </form>
            </div>
           
        </div>
    </div>
</div> --%>
	
</body>
</html>