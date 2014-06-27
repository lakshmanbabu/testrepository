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
<title>AngularJS</title>
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
                    <li><a href="javascript:void(0);">AngularJS Tutorials</a></li>
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
        <h2>AngularJs</h2>
        <hr/><br/>
        <h3>Introduction to AngularJS</h3>
        <hr/>
        <p>
       <strong>AngularJS </strong> as it says is a Superheroic JavaScript MVW framework. It assists with running single-page applications. Its goal is to augment browser-based applications with model–view–controller (MVC) capability, in an effort to make both development and testing easier.
		AngularJS takes declarative programming to whole new level. It adapts and extends traditional HTML to better serve dynamic content through two-way data-binding that allows for the automatic synchronization of models and views.
        </p><br/>
    	<h3 style="color: black;">Hello World, AngularJS</h3>  <br/>
    	<p>Before we get into any theory, let us get our hands dirty with some actual Angular code. That way would learn a great deal of whats happening.
		In order to write a hello world application in Angular, all we have to do is it include Angular JS JavaScript in our HTML document.
		</p>
		<br/>
			<fieldset>
			<table border="0" cellpadding="0" cellspacing="0">
				<tbody>
					<tr>
						<td class="code"><div class="container">
								<div class="line number1 index0 alt2">
									<code class="xml plain">&lt;!</code>
									<code class="xml keyword">DOCTYPE</code>
									<code class="xml plain">html&gt;</code>
								</div>
								<div class="line number2 index1 alt1">
									<code class="xml plain">&lt;</code>
									<code class="xml keyword">html</code>
									<code class="xml plain">ng-app&gt;</code>
								</div>
								<div class="line number3 index2 alt2">
									<code class="xml plain">&lt;</code>
									<code class="xml keyword">head</code>
									<code class="xml plain">&gt;</code>
								</div>
								<div class="line number4 index3 alt1">
									<code class="xml spaces">&nbsp;&nbsp;&nbsp;&nbsp;</code>
									<code class="xml plain">&lt;</code>
									<code class="xml keyword">title</code>
									<code class="xml plain">&gt;Hello World, AngularJS&lt;/</code>
									<code class="xml keyword">title</code>
									<code class="xml plain">&gt;</code>
								</div>
								<div class="line number5 index4 alt2">
									<code class="xml spaces">&nbsp;&nbsp;&nbsp;&nbsp;</code>
									<code class="xml plain">&lt;</code>
									<code class="xml keyword">script</code>
									<code class="xml color1">type</code>
									<code class="xml plain">=</code>
									<code class="xml string">"text/javascript"</code>
								</div>
								<div class="line number6 index5 alt1">
									<code class="xml spaces">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</code>
									<code class="xml color1">src</code>
									<code class="xml plain">=</code>
									<code class="xml string">"//ajax.googleapis.com/ajax/libs/angularjs/1.0.7/angular.min.js"</code>
									<code class="xml plain">&gt;&lt;/</code>
									<code class="xml keyword">script</code>
									<code class="xml plain">&gt;</code>
								</div>
								<div class="line number7 index6 alt2">&nbsp;</div>
								<div class="line number8 index7 alt1">
									<code class="xml plain">&lt;/</code>
									<code class="xml keyword">head</code>
									<code class="xml plain">&gt;</code>
								</div>
								<div class="line number9 index8 alt2">
									<code class="xml plain">&lt;</code>
									<code class="xml keyword">body</code>
									<code class="xml plain">&gt;</code>
								</div>
								<div class="line number10 index9 alt1">
									<code class="xml spaces">&nbsp;&nbsp;&nbsp;&nbsp;</code>
									&nbsp;
								</div>
								<div class="line number11 index10 alt2">
									<code class="xml spaces">&nbsp;&nbsp;&nbsp;&nbsp;</code>
									<code class="xml plain">Write some text in textbox:</code>
								</div>
								<div class="line number12 index11 alt1">
									<code class="xml spaces">&nbsp;&nbsp;&nbsp;&nbsp;</code>
									<code class="xml plain">&lt;</code>
									<code class="xml keyword">input</code>
									<code class="xml color1">type</code>
									<code class="xml plain">=</code>
									<code class="xml string">"text"</code>
									<code class="xml color1">ng-model</code>
									<code class="xml plain">=</code>
									<code class="xml string">"sometext"</code>
									<code class="xml plain">/&gt;</code>
								</div>
								<div class="line number13 index12 alt2">&nbsp;</div>
								<div class="line number14 index13 alt1">
									<code class="xml spaces">&nbsp;&nbsp;&nbsp;&nbsp;</code>
									<code class="xml plain">&lt;</code>
									<code class="xml keyword">h1</code>
									<code class="xml plain">&gt;Hello { {sometext }}&lt;/</code>
									<code class="xml keyword">h1</code>
									<code class="xml plain">&gt;</code>
								</div>
								<div class="line number15 index14 alt2">
									<code class="xml spaces">&nbsp;&nbsp;&nbsp;&nbsp;</code>
									&nbsp;
								</div>
								<div class="line number16 index15 alt1">
									<code class="xml plain">&lt;/</code>
									<code class="xml keyword">body</code>
									<code class="xml plain">&gt;</code>
								</div>
								<div class="line number17 index16 alt2">
									<code class="xml plain">&lt;/</code>
									<code class="xml keyword">html</code>
									<code class="xml plain">&gt;</code>
								</div>
							</div></td>
					</tr>
				</tbody>
			</table>
			</fieldset>
			<br/>
		<h3>Online Demo</h3>
	      		Write some text in textbox:
			    <input type="text" ng-model="sometext" />
			 
			 <h1>Hello {{ sometext }}</h1>
			
			 <hr/>
			<br/>
			 <h3>ng-show / ng-hide </h3> <br/> 
		  
		   Now lets further modify our demo and add one more Angular attribute ng-show. In below code, we added attribute ng-show=”sometext” to &lt;h1&gt; tag.
		   <br/> <br/>
		   <fieldset>
  				<div class="line number5 index4 alt2">
						<code class="xml spaces"></code>
						<code class="xml plain">&lt;</code>
						<code class="xml keyword">script</code>
						<code class="xml color1">type</code>
						<code class="xml plain">=</code>
						<code class="xml string">"text/javascript"</code>
					</div>
  					<div class="line number6 index5 alt1">
						<code class="xml spaces">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</code>
						<code class="xml color1">src</code>
						<code class="xml plain">=</code>
						<code class="xml string">"//ajax.googleapis.com/ajax/libs/angularjs/1.0.7/angular.min.js"</code>
						<code class="xml plain">&gt;&lt;/</code>
						<code class="xml keyword">script</code>
						<code class="xml plain">&gt;</code>
					</div>
			</fieldset>
		 
      	 <br/>
     	And that’s pretty much it. Now define your HTML page like below.<br/>
     	 <br/>
     	<fieldset>
				<table border="0" cellpadding="0" cellspacing="0">
		<tbody>
			<tr>
				<td class="code"><div class="container">
						<div class="line number1 index0 alt2">
							<code class="xml plain">&lt;!</code>
							<code class="xml keyword">DOCTYPE</code>
							<code class="xml plain">html&gt;</code>
						</div>
						<div class="line number2 index1 alt1">
							<code class="xml plain">&lt;</code>
							<code class="xml keyword">html</code>
							<code class="xml plain">ng-app&gt;</code>
						</div>
						<div class="line number3 index2 alt2">
							<code class="xml plain">&lt;</code>
							<code class="xml keyword">head</code>
							<code class="xml plain">&gt;</code>
						</div>
						<div class="line number4 index3 alt1">
							<code class="xml spaces">&nbsp;&nbsp;&nbsp;&nbsp;</code>
							<code class="xml plain">&lt;</code>
							<code class="xml keyword">title</code>
							<code class="xml plain">&gt;Hello World, AngularJS&lt;/</code>
							<code class="xml keyword">title</code>
							<code class="xml plain">&gt;</code>
						</div>
						<div class="line number5 index4 alt2">
							<code class="xml spaces">&nbsp;&nbsp;&nbsp;&nbsp;</code>
							<code class="xml plain">&lt;</code>
							<code class="xml keyword">script</code>
							<code class="xml color1">type</code>
							<code class="xml plain">=</code>
							<code class="xml string">"text/javascript"</code>
						</div>
						<div class="line number6 index5 alt1">
							<code class="xml spaces">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</code>
							<code class="xml color1">src</code>
							<code class="xml plain">=</code>
							<code class="xml string">"//ajax.googleapis.com/ajax/libs/angularjs/1.0.7/angular.min.js"</code>
							<code class="xml plain">&gt;&lt;/</code>
							<code class="xml keyword">script</code>
							<code class="xml plain">&gt;</code>
						</div>
						<div class="line number7 index6 alt2">&nbsp;</div>
						<div class="line number8 index7 alt1">
							<code class="xml plain">&lt;/</code>
							<code class="xml keyword">head</code>
							<code class="xml plain">&gt;</code>
						</div>
						<div class="line number9 index8 alt2">
							<code class="xml plain">&lt;</code>
							<code class="xml keyword">body</code>
							<code class="xml plain">&gt;</code>
						</div>
						<div class="line number10 index9 alt1">
							<code class="xml spaces">&nbsp;&nbsp;&nbsp;&nbsp;</code>
							&nbsp;
						</div>
						<div class="line number11 index10 alt2">
							<code class="xml spaces">&nbsp;&nbsp;&nbsp;&nbsp;</code>
							<code class="xml plain">Write some text in textbox:</code>
						</div>
						<div class="line number12 index11 alt1">
							<code class="xml spaces">&nbsp;&nbsp;&nbsp;&nbsp;</code>
							<code class="xml plain">&lt;</code>
							<code class="xml keyword">input</code>
							<code class="xml color1">type</code>
							<code class="xml plain">=</code>
							<code class="xml string">"text"</code>
							<code class="xml color1">ng-model</code>
							<code class="xml plain">=</code>
							<code class="xml string">"someInput"</code>
							<code class="xml plain">/&gt;</code>
						</div>
						<div class="line number13 index12 alt2">&nbsp;</div>
						<div class="line number14 index13 alt1">
							<code class="xml spaces">&nbsp;&nbsp;&nbsp;&nbsp;</code>
							<code class="xml plain">&lt;</code>
							<code class="xml keyword">h1</code>
							<code class="xml color1">ng-show</code>
							<code class="xml plain">=</code>
							<code class="xml string">"someInput"</code>
							<code class="xml plain">&gt;Hello { { someInput }}&lt;/</code>
							<code class="xml keyword">h1</code>
							<code class="xml plain">&gt;</code>
						</div>
						<div class="line number15 index14 alt2">
							<code class="xml spaces">&nbsp;&nbsp;&nbsp;&nbsp;</code>
							&nbsp;
						</div>
						<div class="line number16 index15 alt1">
							<code class="xml plain">&lt;/</code>
							<code class="xml keyword">body</code>
							<code class="xml plain">&gt;</code>
						</div>
						<div class="line number17 index16 alt2">
							<code class="xml plain">&lt;/</code>
							<code class="xml keyword">html</code>
							<code class="xml plain">&gt;</code>
						</div>
					</div></td>
			</tr>
		</tbody>
		</table>

	</fieldset><br/>
		<h3>Online Demo</h3>   
		   
		   Write some text in textbox:
			<input type="text" ng-model="someInput" />
			 
			<h1  ng-show="someInput">Hello {{ someInput }}</h1>
			<br/><br/>
			<hr/>
			<h2>AngularJS Filters</h2>
			<br/>
			
			AngularJS provides powerful mechanism to modify the data on the go using Filters. Filters typically transform the data to a new data type, formatting the data in the process. The general syntax for using filter is:
			<fieldset>
			{ { expression | filter }}
			</fieldset>
			You can use more than filter on an expression by chaining them like:
			<fieldset>
			{ { expression | filter1 | filter2 }}
			</fieldset>
			AngularJS by default provide few filters that we can use in our app. It is also possible to define your own custom filters. For now we will just check filters that Angular provide with framework.
			
			<br/><br/>
			<h3>Filter <span style="color: red;">uppercase</span> and <span  style="color: red;">lowercase</span></h3>
			<br/>
			As its name suggest, this filter convert the expression into uppercase letters. Lets check a quick demo. Lets modify few lines from our above example and use <span style="color: red;">uppercase</span> filter.
			
			<br/>
		 <fieldset>
		<table border="0" cellpadding="0" cellspacing="0">
			<tbody>
			<tr>
				<td class="code"><div class="container">
						<div class="line number1 index0 alt2">
							<code class="xml plain">&lt;!</code>
							<code class="xml keyword">DOCTYPE</code>
							<code class="xml plain">html&gt;</code>
						</div>
						<div class="line number2 index1 alt1">
							<code class="xml plain">&lt;</code>
							<code class="xml keyword">html</code>
							<code class="xml plain">ng-app&gt;</code>
						</div>
						<div class="line number3 index2 alt2">
							<code class="xml plain">&lt;</code>
							<code class="xml keyword">head</code>
							<code class="xml plain">&gt;</code>
						</div>
						<div class="line number4 index3 alt1">
							<code class="xml spaces">&nbsp;&nbsp;&nbsp;&nbsp;</code>
							<code class="xml plain">&lt;</code>
							<code class="xml keyword">title</code>
							<code class="xml plain">&gt;Hello World, AngularJS&lt;/</code>
							<code class="xml keyword">title</code>
							<code class="xml plain">&gt;</code>
						</div>
						<div class="line number5 index4 alt2">
							<code class="xml spaces">&nbsp;&nbsp;&nbsp;&nbsp;</code>
							<code class="xml plain">&lt;</code>
							<code class="xml keyword">script</code>
							<code class="xml color1">type</code>
							<code class="xml plain">=</code>
							<code class="xml string">"text/javascript"</code>
						</div>
						<div class="line number6 index5 alt1">
							<code class="xml spaces">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</code>
							<code class="xml color1">src</code>
							<code class="xml plain">=</code>
							<code class="xml string">"//ajax.googleapis.com/ajax/libs/angularjs/1.0.7/angular.min.js"</code>
							<code class="xml plain">&gt;&lt;/</code>
							<code class="xml keyword">script</code>
							<code class="xml plain">&gt;</code>
						</div>
						<div class="line number7 index6 alt2">
							<code class="xml spaces">&nbsp;</code>
							&nbsp;
						</div>
						<div class="line number8 index7 alt1">
							<code class="xml plain">&lt;/</code>
							<code class="xml keyword">head</code>
							<code class="xml plain">&gt;</code>
						</div>
						<div class="line number9 index8 alt2">
							<code class="xml plain">&lt;</code>
							<code class="xml keyword">body</code>
							<code class="xml plain">&gt;</code>
						</div>
						<div class="line number10 index9 alt1">
							<code class="xml spaces">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</code>
							&nbsp;
						</div>
						<div class="line number11 index10 alt2">
							<code class="xml spaces">&nbsp;&nbsp;&nbsp;&nbsp;</code>
							<code class="xml plain">Write some text in textbox:</code>
						</div>
						<div class="line number12 index11 alt1">
							<code class="xml spaces">&nbsp;&nbsp;&nbsp;&nbsp;</code>
							<code class="xml plain">&lt;</code>
							<code class="xml keyword">input</code>
							<code class="xml color1">type</code>
							<code class="xml plain">=</code>
							<code class="xml string">"text"</code>
							<code class="xml color1">ng-model</code>
							<code class="xml plain">=</code>
							<code class="xml string">"sameValue"</code>
							<code class="xml plain">/&gt;</code>
						</div>
						<div class="line number13 index12 alt2">
							<code class="xml spaces">&nbsp;</code>
							&nbsp;
						</div>
						<div class="line number14 index13 alt1">
							<code class="xml spaces">&nbsp;&nbsp;&nbsp;&nbsp;</code>
							<code class="xml plain">&lt;</code>
							<code class="xml keyword">h1</code>
							<code class="xml plain">&gt;Hello { { sameValue }}&lt;/</code>
							<code class="xml keyword">h1</code>
							<code class="xml plain">&gt;</code>
						</div>
						<div class="line number15 index14 alt2">&nbsp;</div>
						<div class="line number16 index15 alt1">
							<code class="xml spaces">&nbsp;&nbsp;&nbsp;&nbsp;</code>
							<code class="xml plain">&lt;</code>
							<code class="xml keyword">h4</code>
							<code class="xml plain">&gt;Uppercase: { { sameValue |
								uppercase }}&lt;/</code>
							<code class="xml keyword">h4</code>
							<code class="xml plain">&gt;</code>
						</div>
						<div class="line number17 index16 alt2">
							<code class="xml spaces">&nbsp;&nbsp;&nbsp;&nbsp;</code>
							<code class="xml plain">&lt;</code>
							<code class="xml keyword">h4</code>
							<code class="xml plain">&gt;Lowercase: { { sameValue |
								lowercase }}&lt;/</code>
							<code class="xml keyword">h4</code>
							<code class="xml plain">&gt;</code>
						</div>
						<div class="line number18 index17 alt1">
							<code class="xml spaces">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</code>
							&nbsp;
						</div>
						<div class="line number19 index18 alt2">
							<code class="xml plain">&lt;/</code>
							<code class="xml keyword">body</code>
							<code class="xml plain">&gt;</code>
						</div>
						<div class="line number20 index19 alt1">
							<code class="xml plain">&lt;/</code>
							<code class="xml keyword">html</code>
							<code class="xml plain">&gt;</code>
						</div>
					</div></td>
			</tr>
		</tbody>
	</table>
</fieldset>
<br/>
 <h3>Online Demo</h3>

 	 Write some text in textbox:
    <input type="text" ng-model="sameValue" />
  
    <h1>Hello {{ sameValue }}</h1>
 
    <h4>Uppercase: {{ sameValue | uppercase }}</h4>
    <h4>Lowercase: {{ sameValue | lowercase }}</h4>
	<br/>
	<hr/>
	<br/>
	<h2>What are Scopes?</h2>
	<br/>
	Before we get into Controllers let us understand Scopes. Scope is nothing but an object that Glues the View with Controller. They hold the Model data that we need to pass to view. Scope uses Angular’s two-way data binding to bind model data to view.
	Imaging $scope as an object that links Controller to the View. It is controllers responsibility to initialize the data that the view needs to display. This is done by making changes to $scope.
	Let us see a small Hello World application to understand $scope.
	<br/>
<fieldset>
	<table border="0" cellpadding="0" cellspacing="0">
		<tbody>
			<tr>
				<td class="code"><div class="container">
						<div class="line number1 index0 alt2">
							<code class="xml plain">&lt;!</code>
							<code class="xml keyword">DOCTYPE</code>
							<code class="xml plain">html&gt;</code>
						</div>
						<div class="line number2 index1 alt1">
							<code class="xml plain">&lt;</code>
							<code class="xml keyword">html</code>
							<code class="xml plain">ng-app&gt;</code>
						</div>
						<div class="line number3 index2 alt2">
							<code class="xml plain">&lt;</code>
							<code class="xml keyword">head</code>
							<code class="xml plain">&gt;</code>
						</div>
						<div class="line number4 index3 alt1">
							<code class="xml plain">&lt;</code>
							<code class="xml keyword">title</code>
							<code class="xml plain">&gt;Hello World, AngularJS &lt;/</code>
							<code class="xml keyword">title</code>
							<code class="xml plain">&gt;</code>
						</div>
						<div class="line number5 index4 alt2">
							<code class="xml plain">&lt;</code>
							<code class="xml keyword">script</code>
							<code class="xml color1">type</code>
							<code class="xml plain">=</code>
							<code class="xml string">"text/javascript"</code>
						</div>
						<div class="line number6 index5 alt1">
							<code class="xml spaces">&nbsp;&nbsp;&nbsp;&nbsp;</code>
							<code class="xml color1">src</code>
							<code class="xml plain">=</code>
							<code class="xml string">"http://ajax.googleapis.com/ajax/libs/angularjs/1.0.7/angular.min.js"</code>
							<code class="xml plain">&gt;&lt;/</code>
							<code class="xml keyword">script</code>
							<code class="xml plain">&gt;</code>
						</div>
						<div class="line number7 index6 alt2">
							<code class="xml plain">&lt;/</code>
							<code class="xml keyword">head</code>
							<code class="xml plain">&gt;</code>
						</div>
						<div class="line number8 index7 alt1">
							<code class="xml plain">&lt;</code>
							<code class="xml keyword">body</code>
							<code class="xml plain">&gt;</code>
						</div>
						<div class="line number9 index8 alt2">
							<code class="xml plain">&lt;</code>
							<code class="xml keyword">div</code>
							<code class="xml color1">ng-controller</code>
							<code class="xml plain">=</code>
							<code class="xml string">"ContactController"</code>
							<code class="xml plain">&gt;</code>
						</div>
						<div class="line number10 index9 alt1">
							<code class="xml spaces">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</code>
							<code class="xml plain">Email:&lt;</code>
							<code class="xml keyword">input</code>
							<code class="xml color1">type</code>
							<code class="xml plain">=</code>
							<code class="xml string">"text"</code>
							<code class="xml color1">ng-model</code>
							<code class="xml plain">=</code>
							<code class="xml string">"newcontact"</code>
							<code class="xml plain">/&gt;</code>
						</div>
						<div class="line number11 index10 alt2">
							<code class="xml spaces">&nbsp;&nbsp;&nbsp;&nbsp;</code>
							<code class="xml plain">&lt;</code>
							<code class="xml keyword">button</code>
							<code class="xml color1">ng-click</code>
							<code class="xml plain">=</code>
							<code class="xml string">"add()"</code>
							<code class="xml plain">&gt;Add&lt;/</code>
							<code class="xml keyword">button</code>
							<code class="xml plain">&gt;</code>
						</div>
						<div class="line number12 index11 alt1">
							<code class="xml spaces">&nbsp;&nbsp;&nbsp;&nbsp;</code>
							<code class="xml plain">&lt;</code>
							<code class="xml keyword">h2</code>
							<code class="xml plain">&gt;Contacts&lt;/</code>
							<code class="xml keyword">h2</code>
							<code class="xml plain">&gt;</code>
						</div>
						<div class="line number13 index12 alt2">&nbsp;</div>
						<div class="line number14 index13 alt1">
							<code class="xml spaces">&nbsp;&nbsp;&nbsp;&nbsp;</code>
							<code class="xml plain">&lt;</code>
							<code class="xml keyword">ul</code>
							<code class="xml plain">&gt;</code>
						</div>
						<div class="line number15 index14 alt2">
							<code class="xml spaces">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</code>
							<code class="xml plain">&lt;</code>
							<code class="xml keyword">li</code>
							<code class="xml color1">ng-repeat</code>
							<code class="xml plain">=</code>
							<code class="xml string">"contact in contacts"</code>
							<code class="xml plain">&gt; {{ contact }} &lt;/</code>
							<code class="xml keyword">li</code>
							<code class="xml plain">&gt;</code>
						</div>
						<div class="line number16 index15 alt1">
							<code class="xml spaces">&nbsp;&nbsp;&nbsp;&nbsp;</code>
							<code class="xml plain">&lt;/</code>
							<code class="xml keyword">ul</code>
							<code class="xml plain">&gt;</code>
						</div>
						<div class="line number17 index16 alt2">&nbsp;</div>
						<div class="line number18 index17 alt1">
							<code class="xml plain">&lt;/</code>
							<code class="xml keyword">div</code>
							<code class="xml plain">&gt;</code>
						</div>
						<div class="line number19 index18 alt2">
							<code class="xml plain">&lt;</code>
							<code class="xml keyword">script</code>
							<code class="xml color1">type</code>
							<code class="xml plain">=</code>
							<code class="xml string">"text/javascript"</code>
							<code class="xml plain">&gt;</code>
						</div>
						<div class="line number20 index19 alt1">
							<code class="xml spaces">&nbsp;&nbsp;&nbsp;&nbsp;</code>
							<code class="xml plain">function
								ContactController($scope) {</code>
						</div>
						<div class="line number21 index20 alt2">
							<code class="xml spaces">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</code>
							<code class="xml plain">$scope.contacts =
								["hi@email.com", "hello@email.com"];</code>
						</div>
						<div class="line number22 index21 alt1">&nbsp;</div>
						<div class="line number23 index22 alt2">
							<code class="xml spaces">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</code>
							<code class="xml plain">$scope.add = function() {</code>
						</div>
						<div class="line number24 index23 alt1">
							<code class="xml spaces">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</code>
							<code class="xml plain">$scope.contacts.push($scope.newcontact);</code>
						</div>
						<div class="line number25 index24 alt2">
							<code class="xml spaces">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</code>
							<code class="xml plain">$scope.newcontact = "";</code>
						</div>
						<div class="line number26 index25 alt1">
							<code class="xml spaces">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</code>
							<code class="xml plain">}</code>
						</div>
						<div class="line number27 index26 alt2">
							<code class="xml spaces">&nbsp;&nbsp;&nbsp;&nbsp;</code>
							<code class="xml plain">}</code>
						</div>
						<div class="line number28 index27 alt1">
							<code class="xml plain">&lt;/</code>
							<code class="xml keyword">script</code>
							<code class="xml plain">&gt;</code>
						</div>
						<div class="line number29 index28 alt2">
							<code class="xml plain">&lt;/</code>
							<code class="xml keyword">body</code>
							<code class="xml plain">&gt;</code>
						</div>
						<div class="line number30 index29 alt1">
							<code class="xml plain">&lt;/</code>
							<code class="xml keyword">html</code>
							<code class="xml plain">&gt;</code>
						</div>
					</div></td>
			</tr>
		</tbody>
	</table>
</fieldset>
<br/>
<h3>1.1. Online Demo</h3>
Enter an email address in below textbox and press Add button:<br/><br/>
	<div ng-controller="ContactController">
	     Email:<input type="text" ng-model="newcontact"/>
	    <button ng-click="add()">Add</button>
	    <h3>Contacts</h3>
	 
	    <ul>
	        <li ng-repeat="contact in contacts"> {{ contact }} </li>
	    </ul>
	 
	</div>
	<br/>
	<h3>1.2. ng-controller</h3>
	This attribute defines a Controller to be bound with the view. In this case we defined a controller called ContactController in DIV using ng-controller attribute. Thus whatever we put inside that DIV, the ContactController will have its influence on it.<br/><br/>
	ContactController is nothing but a plain vanilla JavaScript function. In the demo we defined it as function. Also see the definition of ContactController function. There is an object $scope which we pass as an argument. This object is used to bind the controller with view. When AngularJS initialize this controller, it automatically creates and injects the $scope object to this function using dependency injection (More on dependency injection in coming tutorials). For now just note that the $scope object is created by Angular and injected in this controller function.
	<br/><br/>
	<h3>1.3. ng-repeat</h3>
		Notice how we displayed a list of <span style="color: red;"> contacts </span>using an attribute <span style="color: red;"> ng-repeat.</span>
		<fieldset>
		
			&lt;li ng-repeat="contact in contacts" &gt;{ { contact }}&lt;/li&gt;
		
		</fieldset>
		<br/>
		ngRepeat is one of the most used AngularJS attribute. It iterate through an array and bind the view with each element. So in our example it creates &lt;li&gt; tag for each item within contacts array. ngRepeat takes expression as argument. In our case “contact in contacts” where  <span style="color: red;">contact</span> is user defined variable and <span style="color: red;"> contacts </span> is an array within $scope.
		<br/><br/>
		In our final demo in this tutorial, we will use <span style="color: red;"> ng-repeat </span> to iterate through an array of objects and paint each property in a table.

	</div>
   <div class="cleaner"></div>
</div>
 
 <script type="text/javascript">
    function ContactController($scope) {
        $scope.contacts = ["hi@email.com", "hello@email.com"];
 
        $scope.add = function() {
        $scope.contacts.push($scope.newcontact);
        $scope.newcontact = "";
        }
    }
</script> 
</body>
</html>