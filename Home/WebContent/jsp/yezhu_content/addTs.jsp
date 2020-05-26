<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags" %>
<%
		String path = request.getContextPath();
		String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
	%>
<head>
<s:head theme="ajax"/>
</head>

<body>
<h1 align="center">投诉登记</h1>
<p align="center">
<form name="addTs" action="addTs" id="demo" method="post" onSubmit="return Validator.Validate(this,2)">
<table align="center" border="1" width="50%" cellpadding="0" cellspacing="0" bordercolor="#99CC33" bordercolorlight="white" bordercolordark="#4BD52B">
<tr>
<td align="center">门牌号:</td>
<td><input name="tsyhm" id="tsyhm" disabled="disabled" value="<%=(String)session.getAttribute("yezhu_number")%>"/></td>
</tr>
<tr>
<td align="center">投诉内容:</td>
<td><textarea name="tsnr" dataType="Require" msg="请输入投诉原因" cols="32" rows="6"></textarea></td>
</tr>
<tr>
<td align="center">投诉状态:</td>
<td><input name="ts_status" dataType="Require" msg="请输入投诉物品" /></td>
</tr>
</table>
<p align="center">
<input type="button" value="投 诉" class="buttonstyle" onclick="addTs()"/>
<input type="reset" value="重   置" class="buttonstyle"/>
<input type="button" value="返   回"  class="buttonstyle" onclick="getPart_yezhu('<%=basePath%>jsp/yezhu_content/yezhu_content.jsp')"/>
</form>

</body>