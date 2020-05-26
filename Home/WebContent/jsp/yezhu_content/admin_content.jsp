<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<html>

<head>
<link href="<%=basePath%>css/style.css" rel="stylesheet" type="text/css" />
<script src="<%=basePath%>js/jquery.js" language="JavaScript" ></script>
<s:action name="unMaintain" executeResult="false"></s:action>
</head>
<body>
<%--<div class="work">--%>
<%--				<div class="work_top">--%>
<%--				<div>--%>
<%--				<img src="<%=basePath%>images/indexdown.png" id="daibangongzuoTop" onClick="upDownChange('daibangongzuo')"/> --%>
<%--				<strong onClick="upDownChange('daibangongzuo')">待办工作</strong>--%>
<%--				<img src="<%=basePath%>images/icon_work.gif" align="absmiddle"/>--%>
<%--				</div>--%>
<%--				<div class="more">--%>
<%--					--%>
<%--				</div>--%>
<%--				</div>--%>
<%--				<div id="daibangongzuo" class="work_content">--%>
<%--				 <table style="background:transparent;width:95%;" align="center">--%>
<%--					<tr><th colspan="4">待安排处理信息</th></tr>--%>
<%--					<tr align="center" style="background-color:#D3F7DE;">--%>
<%--					<td>门牌号</td>--%>
<%--					<td>投诉反馈类别</td>--%>
<%--					<td>投诉反馈时间</td>--%>
<%--					<td><a href="#" onclick="getPart('listMaintain.action');selectedTr = null;" style="color: red;">查看更多</a></td>--%>
<%--					</tr>--%>
<%--					--%>
<%--					<s:iterator value="#attr.maintain" status="st">--%>
<%--					<tr align="center" style="background-color:white;">--%>
<%--					<td>--%>
<%--					<s:property value="maintain_homesnumber"/>--%>
<%--					</td>--%>
<%--					<td><s:property value="maintain_thing" /></td>--%>
<%--					<td><s:date name="maintain_sdate" format="yyyy年MM月dd日"/></td>--%>
<%--					<td>--%>
<%--					<a href="#" onclick="getPart('unMaintain.action');selectedTr = null;" style="color:red;">立即处理</a>--%>
<%--					</td>--%>
<%--					</tr>--%>
<%--					</s:iterator>--%>
<%--					</table>--%>
<%--					--%>
<%--					<table style="background:transparent;width:95%;" align="center">--%>
<%--					<tr align="center"><th colspan="7">收取物业费</th></tr>--%>
<%--					<tr align="center" style="background-color:#D3F7DE;">--%>
<%--					<td>门牌号</td>--%>
<%--					<td>业主</td>--%>
<%--					<td>缴纳状态</td>--%>
<%--					<td>年份</td>--%>
<%--					<td>月份</td>--%>
<%--					<td>物业费总价</td>--%>
<%--					<td><a href="#" onclick="getPart('listWuyefei.action');selectedTr = null;" style="color: red;">查看更多</a></td>--%>
<%--					</tr>--%>
<%--					--%>
<%--					--%>
<%--					<tr align="center" style="background-color:white;">--%>
<%--					<td>B001</td>--%>
<%--					<td>张达明</td>--%>
<%--					<td>未缴纳</td>--%>
<%--					<td>2010年</td>--%>
<%--					<td>二月</td>--%>
<%--					<td>84.0元</td>--%>
<%--					<td><a href="#" style="color: red;">查看详细</a></td>--%>
<%--					</tr>--%>
<%--					<tr align="center" style="background-color:white;">--%>
<%--					<td>B002</td>--%>
<%--					<td>章大妈</td>--%>
<%--					<td>未缴纳</td>--%>
<%--					<td>2010年</td>--%>
<%--					<td>二月</td>--%>
<%--					<td>117.0元</td>--%>
<%--					<td><a href="#" style="color: red;">查看详细</a></td>--%>
<%--					</tr>--%>
<%--					</table>--%>
<%--					--%>
<%--					<table style="background:transparent;width:95%;" align="center">--%>
<%--					<tr align="center"><th colspan="7">收取水电费</th></tr>--%>
<%--					<tr align="center" style="background-color:#D3F7DE;">--%>
<%--					<td>门牌号</td>--%>
<%--					<td>业主</td>--%>
<%--					<td>缴纳状态</td>--%>
<%--					<td>年份</td>--%>
<%--					<td>月份</td>--%>
<%--					<td>水电费总价</td>--%>
<%--					<td><a href="#" style="color: red;">查看更多</a></td>--%>
<%--					</tr>--%>
<%--					--%>
<%--					--%>
<%--					<tr align="center" style="background-color:white;">--%>
<%--					<td>B001</td>--%>
<%--					<td>张达明</td>--%>
<%--					<td>未缴纳</td>--%>
<%--					<td>2010年</td>--%>
<%--					<td>二月</td>--%>
<%--					<td>5.0元</td>--%>
<%--					<td><a href="#" style="color: red;">查看详细</a></td>--%>
<%--					</tr>--%>
<%--					--%>
<%--					<tr align="center" style="background-color:white;">--%>
<%--					<td>B002</td>--%>
<%--					<td>章大妈</td>--%>
<%--					<td>未缴纳</td>--%>
<%--					<td>2010年</td>--%>
<%--					<td>二月</td>--%>
<%--					<td>7.0元</td>--%>
<%--					<td><a href="#" style="color: red;">查看详细</a></td>--%>
<%--					</tr>--%>
<%--					</table>--%>
<%--					--%>
<%--				</div>--%>
<%--</div>--%>
<%--   --%>
<%--<div class="star">--%>
<%--				 <div class="star_top">--%>
<%--				 <div>--%>
<%--			     <img src="<%=basePath%>images/indexup.png" id="AchievementTop" onClick="upDownChange('Achievement');"/> --%>
<%--			     <strong onClick="upDownChange('Achievement');">小区动态</strong>--%>
<%--			     <img src="<%=basePath%>images/icon_star.gif" align="absmiddle"/>--%>
<%--				 </div>--%>
<%--	--%>
<%--				 <div class="more">--%>
<%--				 <a onclick=""><img src="<%=basePath%>images/icon_more.gif" align="absmiddle">更多</a>--%>
<%--				 </div>--%>
<%--				 </div>--%>
<%--				 <div id="Achievement" class="star_content">--%>
<%--				 <table style="background:transparent;width:95%;" align="center">--%>
<%--					<tr><th colspan="5">新入住业主</th></tr>--%>
<%--					<tr align="center" style="background-color:#D3F7DE;">--%>
<%--					<td>楼栋</td>--%>
<%--					<td>门牌号</td>--%>
<%--					<td>业主姓名</td>--%>
<%--					<td>入住时间</td>--%>
<%--					<td><a href="#" style="color: red;">查看更多</a></td>--%>
<%--					</tr>--%>
<%--					--%>
<%--					<tr align="center" style="background-color:white;">--%>
<%--					<td>A栋楼</td>--%>
<%--					<td>A023</td>--%>
<%--					<td>朱得勇</td>--%>
<%--					<td>2010年5月23日</td>--%>
<%--					<td><a href="#" style="color: red;">详细信息</a></td>--%>
<%--					</tr>--%>
<%--					<tr align="center" style="background-color:white;">--%>
<%--					<td>B栋楼</td>--%>
<%--					<td>B026</td>--%>
<%--					<td>曹梦</td>--%>
<%--					<td>2010年5月22日</td>--%>
<%--					<td><a href="#" style="color: red;">详细信息</a></td>--%>
<%--					</tr>--%>
<%--					<tr align="center" style="background-color:white;">--%>
<%--					<td>B栋楼</td>--%>
<%--					<td>B027</td>--%>
<%--					<td>刘备得</td>--%>
<%--					<td>2010年5月22日</td>--%>
<%--					<td><a href="#" style="color: red;">详细信息</a></td>--%>
<%--					</tr>--%>
<%--					<tr align="center" style="background-color:white;">--%>
<%--					<td>A栋楼</td>--%>
<%--					<td>A008</td>--%>
<%--					<td>张敏</td>--%>
<%--					<td>2010年5月21日</td>--%>
<%--					<td><a href="#" style="color: red;">详细信息</a></td>--%>
<%--					</tr>--%>
<%--					<tr align="center" style="background-color:white;">--%>
<%--					<td>A栋楼</td>--%>
<%--					<td>A027</td>--%>
<%--					<td>杨成玉</td>--%>
<%--					<td>2010年5月20日</td>--%>
<%--					<td><a href="#" style="color: red;">详细信息</a></td>--%>
<%--					</tr>--%>
<%--					</table>--%>
<%--					--%>
<%--				 </div>--%>
<%--			    </div>--%>
<div class="mainindex">
    <div id="div1"> </div>
    
    <div class="welinfo">
    <span><img src="<%=basePath%>images/sun.png" alt="天气" /></span>
    <b>早上好，欢迎你管理员:<%
									out.print((String) session.getAttribute("user"));
								%>使用小区物业管理系统</b>
    <a href="#" onclick="getPart('<%=basePath%>jsp/area_content/grandchild12Id.jsp')">帐号设置</a>
    </div>
    
<%--    <div class="welinfo">--%>
<%--    <span><img src="<%=basePath%>images/time.png" alt="时间" /></span>--%>
<%--    <i>年份：2018 --%>
<%--    </i>--%>
<%--    </div>--%>
    
    <div class="xline"></div>
    
    <ul class="iconlist">
    <li><img src="<%=basePath%>images/ico01.png" /><p><a href="#" onclick="getPart('<%=basePath%>jsp/area_content/addHomes.jsp')">房产设置</a></p></li>
<%--     <li><img src="<%=basePath%>images/ico02.png" /><p><A href="#" onclick="getPart('listPersonnel.action');selectedTr = null;">员工管理</A></p></li>
 --%>    <li><img src="<%=basePath%>images/ico03.png" /><p><A href="#" onclick="getPart('listMaintain.action');selectedTr = null;">投诉反馈查询</A></p></li>
<%--    <li><img src="<%=basePath%>images/ico04.png" /><p><a href="#" onclick="getPart('listXuncha.action')">保安巡查</A></p></li>--%>
    <li><img src="<%=basePath%>images/ico06.png" /><p><a href="#" onclick="getPart('listWuyefei.action');selectedTr = null;">物业费管理</A></p></li> 
    </ul>
</body>
</html>