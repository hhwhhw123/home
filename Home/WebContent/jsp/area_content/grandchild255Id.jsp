<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<html>
	<%
		String path = request.getContextPath();
		String basePath = request.getScheme() + "://"
				+ request.getServerName() + ":" + request.getServerPort()
				+ path + "/";
	%>
	<head>
	<SCRIPT type="text/javascript">
	//车辆信息分页
	function yfirstpage8() {
		alert(1)
	    selectedTr = null;
	    getPart_yezhu("ylistCars.action?p=first");
	}
	function ypriorpage8() {
	    selectedTr = null;
	    getPart_yezhu("ylistCars.action?p=prior");
	}
	function ynextpage8() {
	    selectedTr = null;
	    getPart_yezhu("ylistCars.action?p=next");
	}
	function ylastpage8() {
	    selectedTr = null;
	    getPart_yezhu("ylistCars.action?p=last");
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
	</SCRIPT>
	</head>
	
	<body>
		<h1 align="center">
			车辆列表
		</h1>

		<table align="center" border="1" cellspacing="0" width="90%"
			cellpadding="0" class="tablebgcolor" bordercolor="#99CC33"
			bordercolorlight="white" bordercolordark="#4BD52B">

			<tr bgcolor=#99CC33 class="text">
				<td class="td_relative" valign="top" align="center">
					ID编号
				</td>
				<td class="td_relative" valign="top" align="center">
					车主
				</td>
				<td class="td_relative" valign="top" align="center">
					手机号
				</td>
				<td class="td_relative" valign="top" align="center">
					门牌号
				</td>
				<td class="td_relative" valign="top" align="center">
					车牌号
				</td>
				<td class="td_relative" valign="top" align="center">
					停车管理费用
				</td>
				<td class="td_relative" valign="top" align="center">
					停车地点
				</td>
				<td class="td_relative" valign="top" align="center">
					到期时间
				</td>
			</tr>

			<s:form name="ylistCars" action="ylistCars" theme="simple"
				method="post">
				<s:iterator value="#attr.cars" status="st">
					<tr onclick="checked(this)">
						<td width="5%" valign="top" align="center" class="text">
							<input type="hidden" value="<s:property value="id"/>">
							<s:property value="id" />
						</td>
						<td width="8%" valign="top" align="center" class="text">
							<s:property value="carowner" />
						</td>
						<td width="8%" valign="top" align="center" class="text">
							<s:property value="contactway" />
						</td>

						<td width="8%" valign="top" align="center" class="text">
							<s:property value="housenumber" />
						</td>
						
						<td width="8%" valign="top" align="center" class="text">
							<s:property value="licensenumber" />
						</td>
						
						<td width="8%" valign="top" align="center" class="text">
							<s:property value="sfbz" />元
						</td>
						
						<td width="5%" valign="top" align="center" class="text">
							<s:property value="carspace" />
						</td>
						
						<td width="12%" valign="top" align="center" class="text">
							<s:date name="enddate" format="yyyy年MM月dd日" />
						</td>

					</tr>
				</s:iterator>
			</s:form>
		</table>
		<p align="center" style="color: red">
			当前第
			<s:property value="currentPage" />
			页
			<a href="#" onclick="yfirstpage8()">[首页]</a>
			<a href="#" onclick="ypriorpage8()">[上一页]</a>
			<a href="#" onclick="ynextpage8()">[下一页]</a>
			<a href="#" onclick="ylastpage8()">[尾页]</a> 共
			<s:property value="carsCount" />
			条
		</p>
	</body>
</html>