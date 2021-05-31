package com.bookcaine.web.controller.admin;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bookcaine.web.entity.Book;
import com.bookcaine.web.entity.TypeView;
import com.bookcaine.web.service.BookService;
import com.bookcaine.web.service.JdbcBookService;
import com.bookcaine.web.service.JdbcTypeViewService;

@WebServlet("/Admin/book/add")
@MultipartConfig(
	    fileSizeThreshold = 1024*1024,
	    maxFileSize = 1024*1024*50, 
	    maxRequestSize = 1024*1024*50*5 
	)
public class BookAddController extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.getRequestDispatcher("/WEB-INF/view/Admin/book/add.jsp").forward(request, response);
		
	}
	
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		request.setCharacterEncoding("UTF-8");
		
		String category_ = request.getParameter("category");
		int category = Integer.parseInt(category_);
//		JdbcTypeViewService typeVIewService = new JdbcTypeViewService();
//		TypeView typeView = new TypeView();
//		typeView.setName(name);
//		typeVIewService.insert(typeView);
		
		String title = request.getParameter("title");
		String author = request.getParameter("author");
		String bookDetails = request.getParameter("bookDetails");
//		String authorDetails = request.getParameter("authorDetails");
		String yn = request.getParameter("yn");
		String files = request.getParameter("file");

		BookService bookService = new JdbcBookService();
		Book book = new Book();
		
		book.setCategory_id(category);
		book.setTitle(title);
		book.setAuthor(author);
		book.setDetails(bookDetails);
		book.setYn(yn);
		book.setFiles(files);
		
		try {
			bookService.insert(book);
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		System.out.println(book);
		
		
		// 파일 부분
		
		response.sendRedirect("/Admin/list/total");

	}

}
