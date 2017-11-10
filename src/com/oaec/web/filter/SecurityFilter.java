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

import com.oaec.entity.Member;


/**
 * 操作进行安全验证的过滤器
 */
@WebFilter("/member/*")
public class SecurityFilter implements Filter {

	@Override
	public void destroy() {
	}

	@Override
	public void doFilter(ServletRequest req, ServletResponse res, FilterChain chain)
			throws IOException, ServletException {
		
		HttpServletRequest request = (HttpServletRequest)req;
		HttpServletResponse response = (HttpServletResponse)res;
		HttpSession session = request.getSession();
		
		Member mbr = (Member)session.getAttribute("curr_mbr");
		if(mbr != null){ 
			//登录后发起的请求，通过
			chain.doFilter(request, response);
		}else{ 
			//未登录发起的请求，要阻止
			response.getWriter().write("请先登录,2秒后跳转到登录界面");
			response.setHeader("Refresh", "2;URL="+request.getContextPath()+"/member_login.jsp");
			return  ;
			
			
			
			/*session.setAttribute("msg", "会员的相关操作，需要登录！");
			
			response.sendRedirect(request.getContextPath() + "/member_login.jsp");*/
		}
		
	}

	@Override
	public void init(FilterConfig arg0) throws ServletException {
	}

}
