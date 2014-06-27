<%@ page pageEncoding="ISO-8859-1"
	contentType="text/html; charset=UTF-8"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ page session="false"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="f" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />

<!DOCTYPE html >
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Signup page</title>
</head>
<body>

	<div id="templatemo_content_wrapper">
		<div id="templatemo_sidebar_wrapper">
			<ul>
				<li>This is tutorial site free registration</li>
				<li>Easy explanation</li>
				<li>Download important documents</li>
			</ul>
		</div>

		<div id="templatemo_content" >
			<span style="float: right;"><a href="${contextPath}/login" >LOGIN</a> | <a href="${contextPath}/signup" >SIGNUP</a></span>
			
			<p id="form-success"></p>
			<h2 style="padding-left: 81px; margin-left: 124px;">Registration</h2>
			<form id="signup-form">
				<fieldset style="width: 474px; ">
					<table style="margin-left: 120px; margin-top: 10px;">
						<tr>
							<td><label name="username"><spring:message
										code="label.user.username" /></label></td>
							<td><input name="username" /></td>
						</tr>
						<tr>
							<td><label name="password"><spring:message
										code="label.user.password" /></label></td>
							<td><input type="password" name="password" /></td>
						</tr>
						<tr>
							<td><label name="firstname"><spring:message
										code="label.user.firstname" /></label></td>
							<td><input type="text" name="firstname" /></td>
						</tr>
						<tr>
							<td><label name="lastname"><spring:message
										code="label.user.lastname" /></label></td>
							<td><input type="text" name="lastname" /></td>
						</tr>
						<tr>
							<td><label name="email"><spring:message
										code="label.user.email" /></label></td>
							<td><input type="email" name="email" /></td>
						</tr>
						<tr>
							<td><label name="phoneno"><spring:message
										code="label.user.telephone" /></label></td>
							<td><input type="text" name="contactno" /></td>
						</tr>
						<tr>
							<td><label name="gender"><spring:message
										code="label.user.gender" /></label></td>
							<td><input type="radio" name="gender" value="male" /> Male
								<input type="radio" name="gender" value="female" /> Female</td>
						</tr>
						<tr>
							<td><label name="city">City</label></td>
							<td><input type="text" name="city" id="city" /></td>
						</tr>
						<tr>
							<td><label name="state">State</label></td>
							<td><input type="text" name="state"  id="state"/></td>
						</tr>
						<tr>
							<td><label name="country">Country</label></td>
							<td><input type="text" name="country" id="country" /></td>
						</tr>
						<tr>
							<td colspan="2"><button type="button" class="button" id="signup" style="margin-left: 81px;">Register</button></td>
						</tr>
					</table>

				</fieldset>
			</form>

		</div>

		<div class="cleaner"></div>

	</div>

<script type="text/javascript">

$(document).ready(function(){
	
	$("#signup").click(function(){
		
		 $("#form-success").html("");
		 
		 $.post("${contextPath}/saveUserDetails",($("#signup-form").serialize()),function(data){
			 
			 $("#form-success").html(data.message);
			 $("#signup-form")[0].reset();
		 });
	});
	
	
	
});// Main Jquery end

</script>
</body>
</html>