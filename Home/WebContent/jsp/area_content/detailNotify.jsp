<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags" %>
<%
		String path = request.getContextPath();
		String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
	%>
<head>
</head>

<body>
<h1 align="center">查看新闻</h1>

<s:form  name="detailNotify" action="detailNotify" theme="simple" id="demo">
<s:iterator value="#attr.notify" status="st">
<table align="center" border="1" width="90%" cellpadding="5" cellspacing="0" bordercolor="#99CC33" bordercolorlight="white" bordercolordark="#4BD52B">
<s:hidden id="n_id" name="notifyID"/>
<tr>
<td>新闻标题:</td>
<td><input name="notify_title" value="<s:property value="notify_title"/>"/></td>
</tr>
<tr>
<td>新闻内容:</td>
<td><s:textarea  name="notify_content" rows="18" cols="70"/></td>
</tr>
</table>
</s:iterator>
<p align="center">
<input type="button" class="buttonstyle" value="返   回" onclick="getPart_yezhu('<%=basePath%>jsp/yezhu_content/yezhu_content.jsp')" />
</p>
</s:form>
</body>