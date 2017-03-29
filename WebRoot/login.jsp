<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'login.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<script type="text/javascript">
		//刷新验证码
		function changeImg() {
			document.getElementById("validateCodeImg").src = "${pageContext.request.contextPath}/servlet/RandomImage?"
					+ Math.random();
		}
	</script>
  </head>
  
  <body>
    This is my JSP page. <br>
    <p align="center">登录</p>
	     <form action="<%=request.getContextPath()%>/servlet/Login" method="post">
	     <table align="center" border="0" width="500"> 
	         <tr>
	         	<td align="right">账号:</td>
	         	<td align="right"><input type="text" name="username" /></td>
	         </tr>
	         <tr>
	         	<td align="right">密码:</td>
	         	<td align="right"><input type="password" name="password" /></td>
	         </tr>
	         <tr>	
			 	<td align="right">验证码:</td>
			 	<td align="right"><input type="text" name="validateCode" /></td>
			 	<td> 
					 <img alt="验证码看不清，换一张"
					 src="${pageContext.request.contextPath}/servlet/RandomImage"
					 id="validateCodeImg" onclick="changeImg(this,'nl')"><a
					 href="javascript:void(0)" onclick="changeImg()">看不清，换一张</a>
			 	</td>
	         <tr>
	         	<td colspan="2" align ="center" height="40">
	         		<input type="submit" value="登录" />
	         		<input type="reset" value="重置" />
	         	</td>
	         </tr>
	         </table>
	     </form> 
  </body>
</html>
