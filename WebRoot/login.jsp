<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
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

  </head>
  
  <body>
    <form action="dologin.jsp" method="post">
    用户名：<input type="text" name="username" /><br/>
    密码：<input type="password"name= "password" /><br/>
    <input type="submit" value="提交"> 
    <h3><%=path %></h3>
    
    
    </form>
    <h2 color="#0000cc" ><%if(null!=session.getAttribute("error")) out.print(session.getAttribute("error"));
    session.removeAttribute("error");
    
     %></h2>
  </body>
</html>
