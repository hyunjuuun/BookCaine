package com.bookcaine.web.controller;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bookcaine.web.entity.Review;
import com.bookcaine.web.service.JdbcReviewService;

@WebServlet("/books/reg")
public class RegController extends HttpServlet {
	
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		
		String id = request.getParameter("id");
		String content = request.getParameter("content");
		
		JdbcReviewService service = new JdbcReviewService();
		
		try {
			Review review = new Review();
			review.setBookId(Integer.parseInt(id));
			review.setContent(content);
			// 임시로 '이동진'으로 고정
			review.setWriterId("dong");
			service.insert(review);
			//service.insert(title, content);
			
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		response.sendRedirect("/books/detail?id=" + id);
	}
	
}
