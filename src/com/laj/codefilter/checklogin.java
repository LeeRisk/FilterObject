package com.laj.codefilter;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class checklogin implements Filter {

	public void destroy() {
		// TODO Auto-generated method stub

	}

	public void doFilter(ServletRequest request, ServletResponse response,
			FilterChain chain) throws IOException, ServletException {
		HttpServletRequest req = (HttpServletRequest) request;
		HttpServletResponse res = (HttpServletResponse) response;
		String currentURL = req.getRequestURI(); // ȡ�ø�Ŀ¼����Ӧ�ľ���·��:
		String targetURL = currentURL.substring(currentURL.indexOf("/", 1),
				currentURL.length()); // ��ȡ����ǰ�ļ������ڱȽ�
		HttpSession session = req.getSession(false);
	//if (!"/login.jsp".equals(targetURL)) {
		if(session!=null){
			if(null!=session.getAttribute("sessionid"))
			
				req.getRequestDispatcher("success.jsp");
		
				return;
			} else {
				// req.getSession().setAttribute("error", "sessionʧЧ");
				session = req.getSession();
				//res.sendRedirect("login.jsp");
			//	chain.doFilter(req, res);
				return;
			}
	//	}
	
	
	
		//chain.doFilter(req, res);
		
		
	}

	public void init(FilterConfig filterConfig) throws ServletException {
		// TODO Auto-generated method stub

	}

}
