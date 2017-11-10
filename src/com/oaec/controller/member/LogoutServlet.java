package com.oaec.controller.member;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * 执行会员退出功能
 */
@WebServlet("/member/logout")
public class LogoutServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		// 把当前用户的会话失效
		request.getSession().invalidate();
		// 跳转到登录页面
		response.getWriter().write("已退出,2秒后跳转到登录界面");
		response.setHeader("Refresh", "2;URL="+request.getContextPath()+"/member_login.jsp");
		
		
		
		
	
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}

}
