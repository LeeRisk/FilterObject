<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
//request.setCharacterEncoding("utf-8");
String name=request.getParameter("username");
if(name==null||name.equals(""))
{
  session.setAttribute("error","非法入侵！");
  response.sendRedirect("login.jsp");
}

String currentURL = request.getRequestURI(); // 取得根目录所对应的绝对路径:

String targetURL = currentURL.substring(currentURL.indexOf("/", 1),
				currentURL.length()); // 截取到当前文件名用于比较
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>

    
    <title>My JSP 'success.jsp' starting page</title>
    
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
   <h3 style="color:#0000cc">欢迎你，  <%=name %></h3>
      <h3 style=" color:#0000cc">  <%=session.getAttribute("sessionid") %></h3>
      <h3 style=" color:#0000cc">  <%=targetURL %></h3>
  
  </body>
</html>
