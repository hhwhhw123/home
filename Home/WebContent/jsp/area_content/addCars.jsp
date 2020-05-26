<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags" %>
<%
		String path = request.getContextPath();
		String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
	%>
<head>


</head>
<body>
<h1 align="center">车辆登记表</h1>
<p align="center">
<s:form name="addCars" action="addCars" id="demo" method="post" theme="simple">
<table align="center" border="1" width="70%" cellpadding="5" cellspacing="0" bordercolor="#99CC33" bordercolorlight="white" bordercolordark="#4BD52B">
<tr>
<td align="center"><s:text name="">车牌号</s:text></td>
<td><s:textfield name="licensenumber" /><span>*</span></td>
<td align="center"><s:text name="">门牌号</s:text></td>
<td><s:textfield name="housenumber" /><span>*</span></td>
</tr>
<tr>
<td align="center"><s:text name="">车主姓名</s:text></td>
<td><s:textfield name="carowner" /><span>*</span></td>
<td align="center"><s:text name="">手机号码</s:text></td>
<td><s:textfield name="contactway" /><span>*</span></td>
</tr>
<tr>
<td align="center"><s:text name="">停车地点</s:text></td>
<td><s:textfield name="carspace" /><span>*</span></td>
<td align="center"><s:text name="">到期时间</s:text></td>
<td><input name="enddate" class="Wdate" type="text" onClick="WdatePicker()"/></td>
</tr>
<tr>
<td align="center" colspan="1"><s:text name="">车辆描述</s:text></td>
<td ><s:textarea name="carmsg" ></s:textarea></td>
<td align="center" colspan="1"><s:text name="">停车管理费用</s:text></td>
<td ><input name="sfbz" value="<s:property value="sfbz"/>"/>元</td>
</tr>
</table>
<input type="button" value="登  记" class="buttonstyle" onclick="addCar()"/>
<input type="reset" value="重   置" class="buttonstyle"/>
<input type="button" value="返  回" class="buttonstyle" onclick="getPart('listCars.action')"/>
</s:form>
</p>
</body>
