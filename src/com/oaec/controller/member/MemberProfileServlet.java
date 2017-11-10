package com.oaec.controller.member;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oaec.entity.Member;
import com.oaec.service.MemberService;

/**
 * 会员的个人资料修改功能------>处理的是异步请求
 */
@WebServlet("/member/profile")
public class MemberProfileServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		request.setCharacterEncoding("utf-8");
		
		response.setContentType("text/html;charset=UTF-8");	
		
		
		String nick_name = request.getParameter("nick_name");
		String real_name = request.getParameter("real_name");
		String genderStr = request.getParameter("gender");
		String email = request.getParameter("email");
	
		Member mbr = (Member)request.getSession().getAttribute("curr_mbr");
		mbr.setNick_name(nick_name);
		mbr.setReal_name(real_name);
		mbr.setEmail(email);
		mbr.setGender(Boolean.parseBoolean(genderStr));
		
		MemberService service = new MemberService();
		service.update(mbr);
		
	
		response.setContentType("text/html;charset=UTF-8");
		PrintWriter out = response.getWriter();
		out.print("ok");
		out.flush();
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}

}
