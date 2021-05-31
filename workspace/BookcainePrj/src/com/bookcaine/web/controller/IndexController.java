package com.bookcaine.web.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bookcaine.web.entity.Book;
import com.bookcaine.web.entity.Member;
import com.bookcaine.web.service.JdbcBookService;

@WebServlet("/index")
public class IndexController extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String q = request.getParameter("q");

		String query = "";

		if (q != null && !q.equals(""))
			query = q;

		JdbcBookService bookService = new JdbcBookService();
		List<Book> list = bookService.getList(query);

		Member member = (Member) request.getSession().getAttribute("loginMember");
		
		request.setAttribute("list", list);
		request.setAttribute("member", member);
		
		request.getRequestDispatcher("WEB-INF/view/index.jsp").forward(request, response);
		
	}
}
