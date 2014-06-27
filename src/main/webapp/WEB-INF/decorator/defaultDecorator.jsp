
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="f" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html lang="en"  ng-app>               
  <head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title><sitemesh:write property='title'/></title>
<meta name="keywords" content="wedding store, free web templates, free css templates" />
<meta name="description" content="Wedding Store is a free web template for everyone. Download this template from templatemo.com" />
<link href="${contextPath}/resources/css/templatemo_style.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" href="${contextPath}/resources/css/jquery-ui.css" />
<link rel="stylesheet" href="${contextPath}/resources/css/Lang-Style.css" />
<link rel="stylesheet" href="${contextPath}/resources/css/jquery.dataTables.css" />

<script type="text/javascript" src="${contextPath}/resources/js/jquery-1.10.2.min.js"></script>
<script type='text/javascript' src="${contextPath}/resources/js/lang.js"></script>
<script type='text/javascript' src="${contextPath}/resources/js/chosen.jquery.min.js"></script>
<script type="text/javascript" src="${contextPath}/resources/js/bootstrap.min.js"></script>
<script type="text/javascript" src="${contextPath}/resources/js/angular.min.js"></script>
 	
<script language="javascript" type="text/javascript">
function clearText(field)
{
    if (field.defaultValue == field.value) field.value = '';
    else if (field.value == '') field.value = field.defaultValue;
}
</script>
</head>
<body>

<div id="templatemo_wrapper_outter">

	<div id="templatemo_wrapper_inner">
    
    	<div id="templatemo_header" style="margin-top: -55px;">
    
            <div id="site_title">
            
                <h1><a href="javascript:void(0);" target="_parent">
                  Tutorials Site <!--  <img src="/resources/images/templatemo_logo.png" alt="Toturials Site" /> -->
                    <span>free online tutorials </span>
                </a></h1>
                
            </div> <!-- end of site_title -->
    
    </div> <!-- end of templatemo_header -->
    
    <div id="templatemo_menu">
    
        <ul>
            <li><a href="${contextPath}/">Home</a></li>
            <li><a href="javascript:void(0);" target="_parent">Spring Tutorials</a></li>
            <li><a href="javascript:void(0);">Hibernate</a></li>
            <li><a href="javascript:void(0);" target="_parent">Jquery Tutorials</a></li>
            <li><a href="${contextPath}/u/ajaxsScreen" target="_parent">Ajaxs Tutorials</a></li>
            <li class="last_menu"><a href="javascript:void(0);">Contact</a></li>
            
        </ul>    	
    
    </div> <!-- end of templatemo_menu -->
      
    
    
 <sitemesh:write property='body'/>
 
 <div id="templatemo_footer">

        <ul class="footer_menu">
            <li><a href="${contextPath}/">Home</a></li>
            <li><a href="javascript:void(0);" target="_parent">Spring Tutorials</a></li>
            <li><a href="javascript:void(0);">Hibernate</a></li>
            <li><a href="javascript:void(0);" target="_parent">Jquery Tutorials</a></li>
            <li><a href="${contextPath}/u/ajaxsScreen" target="_parent">Ajaxs Tutorials</a></li>
            <li class="last_menu"><a href="javascript:void(0);">Contact</a></li>
        </ul>
    
        Copyright © 2048 <a href="#">Tutorial Site</a> | 
        <a href="javascript:void(0);" target="_parent">Website Templates</a> by <a href="javascript:void(0);" target="_parent">Free CSS Templates</a></div> 
    <!-- end of footer -->
    
    </div> <!-- end of templatemo_wrapper_inner -->

</div> <!-- end of templatemo_wrapper_outter -->

<div align=center>This template  downloaded form <a href='javascript:void(0);'>free website templates</a></div></body>
 
 <sitemesh:write property="footer"/>
 
 </body>
</html>