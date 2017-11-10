package com.oaec.web.filter;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.swing.text.html.HTML;

import com.oaec.entity.Member;
@WebFilter("/view_cart.jsp")


public class CarFilter implements Filter  {

	@Override
	public void destroy() {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void doFilter(ServletRequest arg0, ServletResponse arg1,
			FilterChain arg2) throws IOException, ServletException {
		// TODO Auto-generated method stub
		
		arg0.setCharacterEncoding("UTF-8");
		arg1.setCharacterEncoding("UTF-8");
		arg1.setContentType("text/html;charset=utf-8");
		
		
		HttpServletRequest request = (HttpServletRequest)arg0;
		HttpServletResponse response = (HttpServletResponse)arg1;
		HttpSession session = request.getSession();
		
		Member mbr = (Member)session.getAttribute("curr_mbr");
		if(mbr != null){ 
			//登录后发起的请求，通过
			
			arg2.doFilter(request, response);
		}else{ 
			//未登录发起的请求，要阻止
			
			response.getWriter().print("请先登录,2秒后跳转到登录界面");
			response.setHeader("Refresh", "2;URL="+request.getContextPath()+"/member_login.jsp");
			return  ;
		
		}
		
	}

	@Override
	public void init(FilterConfig arg0) throws ServletException {
		// TODO Auto-generated method stub
		
	}

}
