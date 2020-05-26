<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ taglib prefix="sx" uri="/struts-dojo-tags"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>

<html>
<head>
<s:head theme="ajax"/>
<script src="<%=basePath%>js/jquery.js" language="JavaScript" ></script>
<script src="<%=basePath%>js/prototype-1.6.0.3.js" type="text/javascript"></script>
<script src="<%=basePath%>js/Validator.js" type="text/javascript"></script>
<script src="<%=basePath%>DatePicker/WdatePicker.js" type="text/javascript"></script>
<script src="<%=basePath%>js/myjs.js" type="text/javascript" ></script>
<script src="<%=basePath%>js/navbar.js" type="text/javascript"></script>
<link href="<%=basePath%>css/default.css" rel="stylesheet" type="text/css"/>
<link href="<%=basePath%>css/css.css" rel="stylesheet" type="text/css"/>
<link href="<%=basePath%>css/navbar-pix.css" rel="stylesheet" type="text/css" />
<script type="text/javascript">
function psdResponse(request)
{
	var data=request.responseText;
	alert(data);
	getPart('<%=basePath%>jsp/area_content/admin_index.jsp');
}
function adminResponse(request)
{
	var data=request.responseText;
	alert(data);
	getPart('<%=basePath%>jsp/area_content/grandchild13Id.jsp');
}

function fangchangshezhi()
{
	selectedTr = null;
	getPart('<%=basePath%>jsp/area_content/addHomes.jsp');
}
function renshidengji()
{   
	selectedTr = null;
    getPart('<%=basePath%>jsp/area_content/grandchild31Id.jsp');
}
function showaddwuyefei()
{
	var t = document.getElementById("shengchengwuyefei").style.display;
	if(t=="")document.getElementById("shengchengwuyefei").style.display="none";
	if(t=="none")document.getElementById("shengchengwuyefei").style.display="";
}

function addwuyefeiResponse(request)
{
	var data=request.responseText;
	alert(data);
	getPart("listWuyefei.action");
}

function submit_shengcheng_wuyefei()
{
	if(Validator.Validate(document.getElementById('demo'),3))
	{
	var url="shengcheng_wuyefei.action";
	var params=$("demo").serialize(); //Form.serialize('addWuyefei');
	var myAjax=new Ajax.Request(url,{method:'post',parameters:params,onComplete:addwuyefeiResponse,asynchronous:true});
	}
}

function shouquwuyefeiResponse(request)
{
	var data=request.responseText;
	alert(data);
	getPart("listWuyefei.action");
}

function showshouquwuyefei()
{
	 if(selectedTr!=null)
		{
			id =selectedTr.cells[0].getElementsByTagName("input")[0].value;
			var url="shouqu_wuyefei.action?id="+id;
			var myAjax=new Ajax.Request(url,{method:'post',onComplete:shouquwuyefeiResponse,asynchronous:true});
		}
	 else alert("请选择要收取的记录");
}
function showdetailwuyefei()
{
	if(selectedTr!=null)
	{
		id =selectedTr.cells[0].getElementsByTagName("input")[0].value;
		getPart('detail_wuyefei.action?id='+id);
		selectedTr = null;
	}
	 else alert("请选择要查看的详情");
}

</script>


<script language="javascript">
function upDownChange(divID){
	var indexcurrStyle=document.getElementById(divID).style.display;
	if(indexcurrStyle=="none"){
		document.getElementById(divID).style.display="";
		document.getElementById(divID+"Top").src="<%=basePath%>images/indexup.png";
	}else{
		document.getElementById(divID).style.display="none";
		document.getElementById(divID+"Top").src="<%=basePath%>images/indexdown.png";
	}
}

</script>

<script language="javascript">
function upDownChange(divID){
	var indexcurrStyle=document.getElementById(divID).style.display;
	if(indexcurrStyle=="none"){
		document.getElementById(divID).style.display="";
		document.getElementById(divID+"Top").src="<%=basePath%>images/indexup.png";
	}else{
		document.getElementById(divID).style.display="none";
		document.getElementById(divID+"Top").src="<%=basePath%>images/indexdown.png";
	}
}
</script>
<script language="javascript" type="text/javascript">    
  function  changeLeft()    
  {    
  left=document.getElementById("leftMenu");    
  mid=document.getElementById("menuSwitch");    
  right=document.getElementById("rightMenu");
  if(left.style.display   ==   ''){    
  left.style.display   =  'none';   
  mid.style.width='2%';
  right.style.width='100%';
  mid.style.backgroundImage="url('<%=basePath%>images/botton_image_out.gif')";
  mid.style.backgroundRepeat = "no-repeat";
  mid.style.backgroundPosition = "center";
  }    
  else{    
  left.style.display   = '';       
  mid.style.width='2%';
  right.style.width='80%';
  mid.style.background="url('<%=basePath%>images/botton_image_in.gif')";
  mid.style.backgroundRepeat = "no-repeat";
  mid.style.backgroundPosition = "center";
  }    
  }    
</script>
 

<script language="JavaScript" type="text/JavaScript">
getPart('<%=basePath%>jsp/yezhu_content/admin_content.jsp');
</script>
</head>
<body style="background-color: #ffffff;text-align:center;vertical-align:middle;">
<div style="margin:0 auto;margin-top:50px;">
<div>
<img alt="Uhome" src="<%=basePath%>images/loginlogo.png" style="float：left;">
</div>
<table border="0" align="center" width="950px" style="background-color:transparent;margin:auto;">
<tr>
<td align="center" width="100%" colspan="2">
<div>
</div>
<div id=menu_out>
<div id=menu_in>
<div id=menu>
<UL id=nav>
<LI class="menu_line"></LI><LI><a onmouseover="javascript:qiehuan(0)" id="mynav0" class="nav_on" onclick="getPart('<%=basePath%>jsp/yezhu_content/admin_content.jsp')" ><span>首页</span></a></LI>
<LI class="menu_line"></LI><LI><a onmouseover="javascript:qiehuan(1)" id="mynav1" class="nav_off"><span>用户系统</span></a></LI>
<LI class="menu_line"></LI><li><a onmouseover="javascript:qiehuan(2)" id="mynav2" class="nav_off"><span>房屋系统</span></a></li>
<LI class="menu_line"></LI><li><a onmouseover="javascript:qiehuan(3)" id="mynav3" class="nav_off"><span>车位系统</span></a></li>
<%-- <li class="menu_line"></li><li><a onmouseover="javascript:qiehuan(4)" id="mynav4" class="nav_off"><span>员工管理</span></a></li>
 --%><li class="menu_line"></li><li><a onmouseover="javascript:qiehuan(4)" id="mynav4" class="nav_off"><span>投诉反馈</span></a></li>
<%--<li class="menu_line"></li><li><a onmouseover="javascript:qiehuan(5)" id="mynav5" class="nav_off"><span>保卫绿化</span></a></li>--%>
<li class="menu_line"></li><li><a onmouseover="javascript:qiehuan(5)" id="mynav5" class="nav_off"><span>缴费系统</span></a></li>
<li class="menu_line"></li><li><a onmouseover="javascript:qiehuan(6)" id="mynav6" class="nav_off"><span>系统功能</span></a></li>
</UL>
 
<div id=menu_con>
<div id=qh_con0 style="DISPLAY: block">

</div> 
<div id=qh_con1 style="DISPLAY: none">
<UL>
  <LI><A href="#" onclick="getPart('<%=basePath%>jsp/area_content/grandchild13Id.jsp')"><span>个人信息</span></A></LI><LI class=menu_line2></LI>
  <LI><A href="#" onclick="getPart('listNotify.action');selectedTr = null;"><span>新闻管理</span></A></LI><LI class=menu_line2></LI>
</UL>
</div> 
<div id=qh_con2 style="DISPLAY: none"><UL>
  <LI><a href="#" onclick="getPart('<%=basePath%>jsp/area_content/addHomes.jsp')"><span>房产设置</span></A></LI><LI class=menu_line2></LI>
  <LI><A href="#" onclick="getPart('listHomes.action');selectedTr = null;"><SPAN>房产管理</SPAN></A></LI><LI class=menu_line2></LI>
  <LI><A href="#" onclick="getPart('listYezhu.action');selectedTr = null;"><SPAN>业主查询</SPAN></A></LI><LI class=menu_line2></LI>
</UL></div> 
<div id=qh_con3 style="DISPLAY: none"><UL>
	<LI><a href="#" onclick="getPart('<%=basePath%>jsp/area_content/addCars.jsp')"><span>车辆登记</span></A></LI><LI class=menu_line2></LI>
  <LI><a href="#" onclick="getPart('listCars.action');selectedTr = null;"><span>停车管理</span></A></LI><LI class=menu_line2></LI>
</UL>
</div> 
<%-- <div id=qh_con4 style="DISPLAY: none"><UL>
  <LI><a href="#" onclick="getPart('<%=basePath%>jsp/area_content/grandchild31Id.jsp')"><span>员工登记</span></A></LI><LI class=menu_line2></LI>
<!--   <LI><A href="#" onclick="getPart('listPersonnel.action');selectedTr = null;"><SPAN>员工管理</SPAN></A></LI><LI class=menu_line2></LI>
 --></UL></div>  --%>
<div id=qh_con4 style="DISPLAY: none"><UL>
  <LI><a href="#" onclick="getPart('<%=basePath%>jsp/area_content/addMaintain.jsp')"><span>投诉反馈登记</span></A></LI><LI class=menu_line2></LI>
  <LI><A href="#" onclick="getPart('listMaintain.action');selectedTr = null;"><SPAN>投诉反馈查询</SPAN></A></LI><LI class=menu_line2></LI>
  <LI><A href="#" onclick="getPart('unMaintain.action');selectedTr = null;"><SPAN>安排处理</SPAN></A></LI><LI class=menu_line2></LI>
  <LI><A href="#" onclick="getPart('goMaintain.action');selectedTr = null;"><SPAN>处理结果</SPAN></A></LI><LI class=menu_line2></LI>
</UL></div> 
<%--<div id=qh_con5 style="DISPLAY: none"><UL>--%>
<%--  <LI><a href="#" onclick="getPart('listXuncha.action')"><span>保安巡查</span></A></LI><LI class=menu_line2></LI>--%>
<%--  <LI><A href="#" onclick="getPart('listLvhua.action')"><SPAN>保洁绿化</SPAN></A></LI><LI class=menu_line2></LI>--%>
<%--</UL></div>--%>
<div id=qh_con5 style="DISPLAY: none"><UL>
  <LI><a href="#" onclick="getPart('listWuyefei.action');selectedTr = null;"><span>物业费管理</span></A></LI><LI class=menu_line2></LI>   
<%--  <LI><A href="#" onclick="getPart('<%=basePath%>jsp/area_content/grandchild62Id.jsp')"><SPAN>水电费管理</SPAN></A></LI><LI class=menu_line2></LI>--%>
<%--  <LI><A href="#" onclick="getPart('<%=basePath%>jsp/area_content/grandchild63Id.jsp')"><SPAN>罚款费管理</SPAN></A></LI><LI class=menu_line2></LI>--%>
<%--  <LI><A href="#" onclick="getPart('<%=basePath%>jsp/area_content/grandchild64Id.jsp')"><SPAN>工资管理</SPAN></A></LI><LI class=menu_line2></LI>--%>
</UL>
</div>
<div id=qh_con6 style="DISPLAY: none">
<UL>
  <LI><A href="#" onclick="getPart('<%=basePath%>jsp/area_content/grandchild12Id.jsp')"><span>修改密码</span></A></LI><LI class=menu_line2></LI>
  <LI><A href="<%=basePath%>jsp/index.jsp"><span>重新登录</span></A></LI><LI class=menu_line2></LI>
  <LI><A href="#" onclick="window.close();"><span>退出系统</span></A></LI><LI class=menu_line2></LI>
</UL>
</div>
</div></div></div></div>
</td>
</tr>
<tr>
<td height="400px" width="100%" id="tdcolor">
<!-- 主页显示区域 -->
<div id="area_content">

</div>
</td>
</tr>
<tr>    
<td  height="70px"   style="background-color:#72cbc6;" colspan="2">
<div align="center" style="padding:15px;">
<table style="background:transparent;font-size:13px;">
<tr>
<td>
关于我 | About Me | 版权所有  小区物业管理系统
</td>
</tr>
</table>
</div>
</td>    
</tr>
</table>
</div>
</body>
</html>