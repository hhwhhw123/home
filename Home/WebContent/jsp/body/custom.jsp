<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>

<head>
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
var xmlhttp;
try{
    xmlhttp= new ActiveXObject("Msxml2.XMLHTTP");
}catch(e){
    try{
        xmlhttp= new ActiveXObject("Microsoft.XMLHTTP");
    }catch(e){
        try{
            xmlhttp= new XMLHttpRequest();
        }catch(e){}
    }
}
function getPart_yezhu(url){
    xmlhttp.open("get",url,true);
    xmlhttp.onreadystatechange = function(){
        if(xmlhttp.readyState == 4)
        {
            if(xmlhttp.status == 200)
            {   
                //alert(xmlhttp.responseText);
                if(xmlhttp.responseText!=""){
                    document.getElementById("yezhu_content").innerHTML = unescape(xmlhttp.responseText);        
                }
            }
            else{
                document.getElementById("yezhu_content").innerHTML = "数据载入出错";
            }
        }
    };
    xmlhttp.setRequestHeader("If-Modified-Since","0");
    xmlhttp.send(null);
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
var show = true;
var hide = false;
//修改菜单的上下箭头符号
function my_on(head,body)
{
	var tag_a;
	for(var i=0;i<head.childNodes.length;i++)
	{
		if (head.childNodes[i].nodeName=="A")
		{
			tag_a=head.childNodes[i];
			break;
		}
	}
	tag_a.className="on";
}
function my_off(head,body)
{
	var tag_a;
	for(var i=0;i<head.childNodes.length;i++)
	{
		if (head.childNodes[i].nodeName=="A")
		{
			tag_a=head.childNodes[i];
			break;
		}
	}
	tag_a.className="off";
}
//添加菜单	
window.onload=function()
{
	m1 =new Menu("menu1",'menu1_child','dtu','1',show,my_on,my_off);
	m1.init();
	m2 =new Menu("menu2",'menu2_child','dtu','1',hide,my_on,my_off);
	m2.init();
	m3 =new Menu("menu3",'menu3_child','dtu','1',hide,my_on,my_off);
	m3.init();
	m4 =new Menu("menu4",'menu4_child','dtu','1',hide,my_on,my_off);
	m4.init();
	m5 =new Menu("menu5",'menu5_child','dtu','1',hide,my_on,my_off);
	m5.init();
	m6 =new Menu("menu6",'menu6_child','dtu','1',hide,my_on,my_off);
	m6.init();
	m7 =new Menu("menu7",'menu7_child','dtu','1',show,my_on,my_off);
	m7.init();
}

function modify_custom_psdResponse(request)
{
	var data=request.responseText;
	if(data =="旧密码不正确")
	{
	alert(data);
	document.getElementById("custom_oldpsd").value="";
	}
	else
	{
	alert(data);
	getPart_yezhu('<%=basePath%>jsp/yezhu_content/yezhu_content.jsp');
	}
}

function modifypassword()
{   
	if(Validator.Validate(document.getElementById('demo'),3))
    {
		var url="modify_custom_psd.action";
		var params=Form.serialize('modify_custom_psd');
		var myAjax=new Ajax.Request(url,{method:'post',parameters:params,onComplete:modify_custom_psdResponse,asynchronous:true});
    }
}

function modifyyezhuResponse(request)
{
	var data=request.responseText;
	alert(data);
	var id =document.getElementById("yezhuID").value;
	getPart_yezhu('yezhu_info.action?id='+id);
}
function submit_modify_yezhu()
{
	if(Validator.Validate(document.getElementById('demo'),3))
	{
	var url="submit_modify.action";
	var params = $("demo").serialize(); //Form.serialize('modifyYezhu');
	var myAjax=new Ajax.Request(url,{method:'post',parameters:params,onComplete:modifyyezhuResponse,asynchronous:true});
	}
}

function maintainResponse(request){
	var data=request.responseText;
	alert(data);
	getPart_yezhu('yezhu_maitain.action');
}

//添加新闻
function  addmaintain(){
	if(Validator.Validate(document.getElementById('demo'),3))
	{
	document.getElementById("maintain_homesnumber").disabled=false;
	
	var url="addMaintain.action";
	var params = $("demo").serialize(); //Form.serialize('addMaintain');
	var myAjax=new Ajax.Request(url,{method:'post',parameters:params,onComplete:maintainResponse,asynchronous:true});
	}
}
function addTs() {
    if (Validator.Validate(document.getElementById('demo'), 3)) {
        //请求的地址
        var url = "addTs.action";
        //将表单中的数据系列化
        var params = $("demo").serialize(); //Form.serialize('addMaintain');
        //向服务器发出请求
        var myAjax = new Ajax.Request(url, {
            method: 'post',
            parameters: params,
            onComplete: maintainResponse,
            asynchronous: true
        });
    }
}
getPart_yezhu('<%=basePath%>jsp/yezhu_content/yezhu_content.jsp');
</script>


</head>    
<body style="background-color: #ffffff;text-align:center;vertical-align:middle;">
<div style="margin:0 auto;margin-top:50px;">
<div>
<img alt="Uhome" src="<%=basePath%>images/loginlogo.png" style="float：left;">
</div>
<table align="center" width="950px" style="border:2px solid #ADD8E6;background-color;margin:auto;">
<tr>    
<td colspan="3">
<div align="center">
</div>
<div class="menu_navcc">
<div class="menu_nav clearfix">
<ul class="nav_content">
<li class="current"><a href="#" onclick="getPart_yezhu('<%=basePath%>jsp/yezhu_content/yezhu_content.jsp')"><span>首页</span></a></li>
<li><a href="#" onclick="getPart_yezhu('yezhu_info.action?id=<%=session.getAttribute("yezhu_id")%>')"><span>个人信息</span></a></li>
<li><a href="#" onclick="getPart_yezhu('yezhu_maitain.action');selectedTr = null;"><span>社区服务查询</span></a></li>
<li><a href="#" onclick="getPart_yezhu('<%=basePath%>jsp/yezhu_content/addMaintain.jsp')"><span>社区服务登记</span></a></li>
<%--<li><a href="#" onclick="getPart_yezhu('yezhu_ts.action');selectedTr = null;"><span>投诉查询</span></a></li>--%>
<%--<li><a href="#" onclick="getPart_yezhu('<%=basePath%>jsp/yezhu_content/addTs.jsp')"><span>举报投诉</span></a></li>--%>
<%--<li><a href="#" onclick="getPart_yezhu('ylistCars.action');selectedTr = null;"><span>车位查询</span></a></li>--%>
<%--<li style="position:relative;"><a href="#" onclick="getPart_yezhu('listNotify.action');selectedTr = null;"><span style="">最新通知</span></a><em></em></li>--%>
<li><a href="<%=basePath%>jsp/index.jsp"><span>退出登录</span></a><em></em></li>
</ul>
<div class="menu_nav_right">
</div>
</div>
</div>
</td>    
</tr> 
<tr>
<td id="rightMenu" style="height:70%;">
<div id="yezhu_content" style="width:100%;">
</div>
</td>
</tr>
</table>
<%--<table align="center" width="950px">--%>
<%--<tr>    --%>
<%--<td  height="50px" colspan="3" style="">--%>
<%----%>
<%--</td>    --%>
<%--</tr>  --%>
<%--</table>--%>
<div align="center" style="width:938px;background-color:lightblue;margin:0 auto;padding:15px;">
<table style="background:transparent;font-size:13px;">
<tr>
<td style="height:10px;">
关于我 | About Me | 版权所有  小区物业管理系统
</td>
</tr>
</table>
</div>  
</div>
</body>    
</html>