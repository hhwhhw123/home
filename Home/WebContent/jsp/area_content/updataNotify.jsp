<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags" %>
<%
		String path = request.getContextPath();
		String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
	%>
<head>
</head>

<body>
<h1 align="center">修改新闻</h1>

<s:form  name="updataNotify" action="updataNotify" theme="simple" id="demo">
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
<tr>
<td width="15%" align="center">
新闻类别
</td>
<td>
<s:autocompleter list="#{'小区新闻':'小区新闻','政法新闻':'政法新闻','经济新闻':'经济新闻','娱乐新闻':'娱乐新闻'}" theme="simple" name="lb" listKey="key" listValue="value" />
</td>
</tr>
<tr>
<td width="15%" align="center">
审核状态
</td>
<td>
<s:autocompleter list="#{'通过':'通过','不通过':'不通过'}" theme="simple" name="zt" listKey="key" listValue="value"  />
</td>
</tr>
</table>
</s:iterator>
<p align="center">
<input type="button" class="buttonstyle" value="修   改" onclick="updatanotify()"/>
<input type="reset"  class="buttonstyle" value="重   置"/>
<input type="button" class="buttonstyle" value="返   回" onclick="getPart('listNotify.action')" />
</p>
</s:form>
</body>