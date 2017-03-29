<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'Regist.jsp' starting page</title>
      <meta http-equiv="Content-Type"content="text/html charset=UTF-8">
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body>
    This is my JSP page. <br>
    <p align="center">注册</p>
	     <form action="<%=request.getContextPath()%>/servlet/Regist" method="post">
	         <table align="center" border="0" width="500">  
                        <tr>  
                            <td align="right" width="30%">账户：</td>  
                            <td><input type="text" name="username"></td>  
                        </tr>  
                        <tr>  
                            <td align="right">密 码：</td>  
                            <td><input type="password" name="password"></td>  
                        </tr>  
                        <tr>  
                            <td align="right">确认密码：</td>  
                            <td><input type="password" name="twopassword"></td>  
                        </tr>  
                        <tr>   
                            <td align="right">性 别：</td>  
                            <td>  
                                <input type="radio" name="sex" value="男" checked="checked">男  
                                <input type="radio" name="sex" value="女">女  
                            </td>  
                        </tr>  
                        <tr>  
                            <td align="right">手机号：</td>  
                            <td><input type="text" name="phone"></td>  
                        </tr>   
                        <tr>  
                            <td align="right">邮 箱：</td>  
                            <td><input type="text" name="email"></td>  
                        </tr>  
                        <tr>  
                            <td colspan="2" align ="center" height="40">  
                                <input type="submit" value="注 册">  
                                <input type="reset" value="重 置">  
                            </td>  
                        </tr>  
                    </table> 
	     </form> 
  </body>
</html>
