package com.oaec.controller.member;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oaec.entity.Member;
import com.oaec.entity.Orders;
import com.oaec.entity.common.Page;
import com.oaec.service.OrdersService;

/**
 * 会员中心-->订单列表
 */
@WebServlet("/member/orders")
public class OrderListServlet extends HttpServlet {
	private static final long serialVersionUID = 2964566478709855605L;
	private OrdersService ordersService = new OrdersService();

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		req.setCharacterEncoding("utf-8");
		
		resp.setContentType("text/html;charset=UTF-8");	
		
		int number = 1;
		int size = 10;
		String n = req.getParameter("number");
		if(n != null && !"".equals(n)){
			number = Integer.parseInt(n);
		}
		if(number < 1){
			number = 1;
		}
		String s = req.getParameter("size");
		if(s != null && !"".equals(s)){
			size = Integer.parseInt(s);
		}
		if(size <= 0){
			size = 10;
		}
		
		Member curr_mbr = (Member)req.getSession().getAttribute("curr_mbr");
		
		Page<Orders> page = ordersService.findByBuyer(curr_mbr.getId(), number, size);
		req.setAttribute("page", page);
		req.getRequestDispatcher("/member/index.jsp").forward(req, resp);
	}
}
