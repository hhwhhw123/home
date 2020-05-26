<%@ page language="java" contentType="text/html;charset=UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">

<head>
<s:head theme="ajax"/>
<link href="<%=basePath%>css/style.css" rel="stylesheet" type="text/css"/>
<script src="<%=basePath%>js/jquery.js" language="JavaScript" ></script>
<script src="<%=basePath%>js/cloud.js" type="text/javascript"></script>
<script language="javascript">
$(function(){
    $('.loginbox').css({'position':'absolute','left':($(window).width()-692)/2});
	$(window).resize(function(){  
    $('.loginbox').css({'position':'absolute','left':($(window).width()-692)/2});
    })
});  
</script>
</head>
<body style="background-color:#1c77ac; background-image:url(images/light.png); background-repeat:no-repeat; background-position:center top; overflow:hidden;">
    <div id="mainBody">
      <div id="cloud1" class="cloud"></div>
      <div id="cloud2" class="cloud"></div>
    </div>
	<div class="logintop">    
    <span>欢迎登录小区物业管理系统</span>
    </div>
    <div class="loginbody">
    <span class="systemlogo"></span> 
    <div class="loginbox">
    <ul>
    <s:form action="checkLogin" theme="simple">
    <li><s:textfield name="loginname" size="20" cssClass="loginuser" /></li>
    <li><s:password name="pwd"  size="22" cssClass="loginpwd"/></li>
    <li><label><s:submit value="登   录" cssClass="loginbtn"/><s:radio name="check" list="#{'admin':'管理员','custom':'住户'}" value="'admin'"></s:radio></label>
	</li>
	</s:form>
    </ul>
    </div>
    </div>
    <div class="loginbm">版权所有  小区物业管理系统</div>
</body>  
</html>