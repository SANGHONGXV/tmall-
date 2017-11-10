package com.oaec.web.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oaec.entity.News;
import com.oaec.entity.common.Page;
import com.oaec.service.NewsService;

/**
 * 公告的列表页
 */
@WebServlet("/news/list")
public class NewsListServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//每页要显示的记录条数
		int size = 10; 
		 //要查询第number页
		int number = 1;
		String numberStr = request.getParameter("number");
		if(numberStr != null && !"".equals(numberStr)){
			number = Integer.parseInt(numberStr);
		}
		if(number < 1){
			number = 1;
		}
		
		NewsService newsService = new NewsService();
		Page<News> page = newsService.findByPublic(number, size);
		request.setAttribute("newsPage", page);
		request.getRequestDispatcher("/news_list.jsp").forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
