<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
	//request.setCharacterEncoding("utf-8");
	String name = request.getParameter("username");
	String pwd = request.getParameter("password");
	if (name.equals("张")) {
		session.setAttribute("sessionid", session.getId());
		session.setAttribute("username", name);
		request.setAttribute("username", name);
		request.getRequestDispatcher("success.jsp").forward(request,
				response);

	} else {

		session.setAttribute("error", name + "不存在");
	//	response.sendRedirect("login.jsp");
	response.sendRedirect("index.jsp");

	}
%>


