<%@ page language="java" contentType="text/html; charset=ISO-8859-1"  pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html >
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>manage SpringMvc</title>
</head>
<body>
<script type="text/javascript" src="${contextPath}/resources/js/manageSpringMvc.js"></script>
<script src="//cdn.ckeditor.com/4.4.2/full/ckeditor.js"></script>
 <%-- <script type="text/javascript" src="${contextPath}/resources/js/ckeditor.js"></script>  --%>
 
 
	<h3 style="margin-top: 62px; margin-left: 151px;">Add SpringMvc Content</h3>
	
		<input type="hidden" id="contextPath" value="${contextPath}"/>
		  <div id="addSpringMvcDialog" style="margin-top: 25px;"> 
				<form id="springmvc-form">
				<input type="hidden" name="springId" id="springId" >
			    <div style="margin-left: 23px;">
			    	<table>
			    		<tr>
			    			<td style="width: 157px;">Topic</td>
			    			<td><input type="text" name="topic" class="form-control" id="topic" style="width: 910px;" required="required"><br/></td>
			    		</tr>
			    		<tr>
			    			<td style="width: 157px;">Heading</td>
			    			<td><input type="text" name="heading" class="form-control" id="heading" style="width: 910px;" required="required"><br/></td>
			    		</tr>
			    		<tr>
			    			<td style="width: 157px;">Heading Content</td>
			    			<td><textarea  name="headingContent"  id="headingContent" required="required"></textarea><br/></td>
			    		</tr>
			    		 <tr>
			    			<td style="width: 157px;">Title</td>
			    			<td><input type="text" name="title" class="form-control" id="title" style="width: 910px;" required="required"><br/></td>
			    		</tr>
			    		<tr>
			    			<td style="width: 157px;">Title Content</td>
			    			<td ><textarea  name="titleContent"  id="titleContent" required="required"></textarea><br/></td>
			    		</tr>
			    		<!-- <tr>
			    			<td style="width: 157px;">Sub Title</td>
			    			<td><input type="text" name="subTitle" class="form-control" id="subTitle" style="width: 910px;" required="required"><br/></td>
			    		</tr>
			    		<tr>
			    			<td style="width: 157px;">Sub Title Content</td>
			    			<td><textarea  name="subTitleContent"  id="subTitleContent"  required="required"></textarea><br/></td>
			    		</tr> -->
			    		
			    		<tr align="right">
			    			<td colspan="2">
				    			<button class="btn btn-primary" value="RESET"> RESET</button>
				    			<button type="button" id="submitSpringMvc" class="btn btn-primary" value="SUBMIT"> SUBMIT</button>
			    			</td>
			    		</tr> 
			    	</table>
			        </div>
			        <script type="text/javascript">
				//<![CDATA[

					// This call can be placed at any point after the
					// <textarea>, or inside a <head><script> in a
					// window.onload event handler.

					// Replace the <textarea id="editor"> with an CKEditor
					// instance, using default configurations.

				CKEDITOR.replace( 'headingContent' );
				CKEDITOR.replace( 'titleContent' );
				CKEDITOR.replace( 'subTitleContent' );

				//]]>
		</script>
			</form>
	</div>
	
	
	
</body>
</html>