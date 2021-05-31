package com.bookcaine.web.controller.book;

import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bookcaine.web.entity.Book;
import com.bookcaine.web.entity.Review;
import com.bookcaine.web.service.JdbcBookService;
import com.bookcaine.web.service.JdbcReviewService;

@WebServlet("/books/detail")
public class DetailController extends HttpServlet{
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String id_ = request.getParameter("id");
		int id = Integer.parseInt(id_);

		JdbcBookService bookService = new JdbcBookService();
		Book book = bookService.get(id);
		
		List<Review> list = null;
		JdbcReviewService reviewService = new JdbcReviewService();
		try {
			list = reviewService.getList(id);
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		request.setAttribute("book", book);
		request.setAttribute("list", list);
		
		String url = "/WEB-INF/view/books/detail.jsp?id="+id_;
		
		//request.getRequestDispatcher("/WEB-INF/view/books/detail?.jsp").forward(request, response);
		request.getRequestDispatcher(url).forward(request, response);
		
	}
}
