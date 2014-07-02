<%@ page language="java" contentType="text/html; charset=ISO-8859-1"  pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Manage SpringMvc Tutorial</title>
</head>
<body>
 <script type="text/javascript" src="${contextPath}/resources/js/manageSpringMvc.js"></script>
 
<h3 style="margin-top: 62px; margin-left: 151px;">Manage SpringMvc Tutorial</h3>

<a href="${contextPath}/admin/2014/002/addSpringContent"><button class="btn btn-primary" style="margin-left: 990px;">Add</button></a><br/>
	<span id="successMsg"></span>
	<hr/>
	
	<table style="width: 100%; overflow: scroll;" border="1" cellpadding="0" cellspacing="0" id="manageSpringMvcTable" class="display">

		<thead>
			<tr style="background-color: hsl(206, 51%, 85%);" align="center">
				<th>S.No</th>
				<th>Topic</th>
				<th>Heading</th>
				<th>Heading Content</th>
				<th>Title</th>
				<th>Title Content</th>
				<th>Sub Title</th>
				<th>Sub TitleContent</th>
			</tr>
		</thead>
		<tbody>
		<c:forEach items="${springlist}" var="springlist" varStatus="status">
				<tr>
					<td style="padding: 2px;">${status.count}</td>
					<td style="padding: 2px;">${springlist.topic}</td>
					<td style="padding: 2px;">${springlist.heading}</td>
					<td style="padding: 2px;">${springlist.headingContent}</td>
					<td style="padding: 2px;">${springlist.title}</td>
					<td style="padding: 2px;">${springlist.titleContent}</td>
					<td style="padding: 2px;">${springlist.subTitle}</td>
					<td style="padding: 2px;">${springlist.subTitleContent}</td>
				</tr>
			</c:forEach>
		
		</tbody>
	</table>

<input type="hidden" id="contextPath" value="${contextPath}"/>
<%--   <div id="addSpringMvcDialog" title="Spring Mvc" style="display: none; width: 700px; min-height: 16px; max-height: none; height: auto;"> 
				<form id="springmvc-form">
				<input type="hidden" name="springId" id="springId" >
			    <div style="margin-left: 23px;">
			    	<table>
			    		<tr>
			    			<td style="width: 157px;">First Name</td>
			    			<td><input type="text" name="firstname" class="form-control" id="firstname" style="width: 261px;" required="required"></td>
			    		</tr>
			    		<tr>
			    			<td style="width: 157px;">Last Name</td>
			    			<td><input type="text" name="lastname" class="form-control" id="lastname" style="width: 261px;" required="required"></td>
			    		</tr>
			    		<tr>
			    			<td style="width: 157px;">User Name</td>
			    			<td><input type="text" name="username" class="form-control" id="username" style="width: 261px;" required="required"></td>
			    		</tr>
			    		<tr>
			    			<td style="width: 157px;">Email</td>
			    			<td><input type="text" name="email" class="form-control" id="email" style="width: 261px;" required="required"></td>
			    		</tr>
			    		<tr>
			    			<td style="width: 157px;">Password</td>
			    			<td ><input type="password" name="password" class="form-control" id="password" style="width: 261px;" required="required"></td>
			    		</tr>
			    		<tr>
			    			
			    			<td colspan="2"><input type="hidden" name="userRole" class="form-control" id="userRole" style="width: 261px;" required="required"></td>
			    		</tr>
			    		<tr>
			    			<td style="width: 157px;">Status </td>
			    			<td><input type="hidden" id="he"/>
			    				<select name="enabled" id="enabled" class="form-control" required="required">
			    					<option value="" selected="selected">Select Status</option>
			    					<option value="1">ACTIVE</option>
			    					<option value="0">PENDING</option>
			    				</select>
			    			</td>
			    		</tr>
			    			<tr>
			    			<td style="width: 157px;">Gender </td>
			    			<td><input type="hidden" id="he"/>
			    				<select name="gender" id="gender" class="form-control" required="required">
			    					<option value="" selected="selected">Select gender</option>
			    					<option value="male">Male</option>
			    					<option value="female">Female</option>
			    				</select>
			    			</td>
			    		</tr>
			    		<tr>
			    			<td style="width: 157px;">Contact Number</td>
			    			<td><input type="text" name="contactno" class="form-control" id="contactno" style="width: 261px;" required="required"></td>
			    		</tr>
			    		<tr>
			    			<td style="width: 157px;">City</td>
			    			<td><input type="text" name="city" class="form-control" id="city" style="width: 261px;" required="required"></td>
			    		</tr>
			    		<tr>
			    			<td style="width: 157px;">State</td>
			    			<td><input type="text" name="state" class="form-control" id="state" style="width: 261px;" required="required"></td>
			    		</tr>
			    		<tr>
			    			<td style="width: 157px;">Country</td>
			    			<td><input type="text" name="country" class="form-control" id="country" style="width: 261px;" required="required"></td>
			    		</tr>
			    	</table>
			        </div>
			</form>
	</div> --%>
	
<div id="springDialogSuccess" title="Delete User">
 Are you sure want to delete?
</div>
</body>
</html>