package com.oaec.web.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oaec.entity.Product;
import com.oaec.entity.common.Page;
import com.oaec.service.ProductService;

/**
 * 处理 根据 商品名 模糊查询商品的Servlet
 */
@WebServlet("/search")
public class SearchServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		
		//
		String keyword = request.getParameter("keyword");
		
		int number = 1;
		int size = 10;
		String numberStr = request.getParameter("number");
		if(numberStr != null && !"".equals(numberStr)){
			number = Integer.parseInt(numberStr);
		}
		if(number < 1){
			number = 1;
		}
		
		//
		ProductService service = new ProductService();
		Page<Product> page = service.findByLikeName(keyword, number, size);
		
		//
		request.setAttribute("page", page);
		request.getRequestDispatcher("/result.jsp").forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
