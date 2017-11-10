package com.oaec.controller.member;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oaec.entity.Member;
import com.oaec.service.MemberService;

/**
 * 会员的修改密码功能
 */
@WebServlet("/member/changepwd")
public class MemberChangePwdServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
			request.setCharacterEncoding("utf-8");
		
		response.setContentType("text/html;charset=UTF-8");	
		
		//获取请求中的参数数据
		String pwd = request.getParameter("pwd");
		String pwd2 = request.getParameter("pwd2");
		Member mbr = (Member)request.getSession().getAttribute("curr_mbr");
		if(mbr.getPwd().equals(pwd)){
			mbr.setPwd(pwd2);
			
			MemberService service = new MemberService();
			service.update(mbr);
			
			request.getSession().invalidate();
			response.sendRedirect(request.getContextPath() + "/member_login.jsp");
		}else{
			request.setAttribute("msg", "密码修改失败，原密码有误！");
			request.getRequestDispatcher("/member/updatepwd.jsp").forward(request, response);
		}
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}

}
