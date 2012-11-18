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

public class codefilter implements Filter {

	public void destroy() {
		// TODO Auto-generated method stub

	}

	public void doFilter(ServletRequest reques, ServletResponse respons,
			FilterChain chain) throws IOException, ServletException {
	HttpServletRequest request=(HttpServletRequest) reques;
	HttpServletResponse response=(HttpServletResponse)respons;
	request.setCharacterEncoding("utf-8");
	chain.doFilter(request, response);
	}

	public void init(FilterConfig arg0) throws ServletException {
		// TODO Auto-generated method stub

	}

}
