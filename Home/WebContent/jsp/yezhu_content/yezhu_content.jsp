<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<html>
<head>
<s:action name="new_notify" executeResult="false"></s:action>
<s:action name="new_wuyefei" executeResult="false"></s:action>
</head>

<body>
<div class="work">
<div class="work_top">
<div style="float:left;">
<img src="<%=basePath%>images/indexdown.png" id="daibangongzuoTop" onClick="upDownChange('daibangongzuo')"/> 
<strong onClick="upDownChange('daibangongzuo')">最新已审核通过新闻</strong>
</div>
<div class="more">
<%--<a onclick=""><img src="<%=basePath%>images/icon_shux.gif" align="absmiddle">刷新</a>--%>
<%--<a onclick=""><img src="<%=basePath%>images/icon_more.gif" align="absmiddle">更多</a>--%>
</div>
</div>
<div id="daibangongzuo" >
<table style="background:transparent;width:100%;">
<tr align="center">
<th>新闻标题</th>
<th>新闻内容</th>
<th>发布日期</th>
</tr>
<s:iterator value="#attr.notify" status="st">
<tr align="center">
<td><s:property value="notify_title" /></td>
<td><s:property value="notify_content" /></td>
<td><s:date name="notify_date" format="yyyy年MM月dd日"/></td>
<%--<td><input type="button" value="查看详情" class="buttonstyle" onclick="detailnotifytain(<s:property value="notifyID"/>)"/></td>--%>
</tr>
</s:iterator>
</table>
</div>
</div>
<div class="star">
<div class="star_top">
<div style="float:left;">
    <img src="<%=basePath%>images/indexup.png" id="AchievementTop" onClick="upDownChange('Achievement');"/> 
	<strong onClick="upDownChange('Achievement');">财务提醒</strong>
</div>
</div>
<div id="Achievement" >
<table style="background:transparent;width:100%;">
<tr><th colspan="8">物业费缴纳通知</th></tr>
<tr align="center" style="background-color:#D3F7DE;">
<td>门牌号</td>
<td>业主</td>
<td>物业费单价</td>
<td>物业费状态</td>
<td>年份</td>
<td>月份</td>
<td>总价</td>
<td>备注</td>
</tr>
<s:iterator value="#attr.wuyefei" status="st">
<tr align="center" style="background-color:white;">
<td><s:property value="wuyefei_homes_number"/></td>
<td><s:property value="wuyefei_yezhu"/></td>
<td><s:property value="wuyefei_danjia"/>元</td>
<td><s:property value="wuyefei_status"/></td>
<td><s:property value="wuyefei_year"/></td>
<td><s:property value="wuyefei_month"/></td>
<td><s:property value="wuyefei_money"/>元</td>
<td><s:property value="wuyefei_memo"/></td>
</tr>
</s:iterator>
</table>
</div>
</div>
</body>
</html>