package com.bookcaine.web.controller.admin;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bookcaine.web.entity.Author;
import com.bookcaine.web.entity.Book;
import com.bookcaine.web.service.AuthorService;
import com.bookcaine.web.service.BookService;
import com.bookcaine.web.service.JdbcAuthorService;
import com.bookcaine.web.service.JdbcBookService;

@WebServlet("/Admin/book/edit")
public class BookEditController extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String id_ = request.getParameter("id");
		int id = Integer.parseInt(id_);
//		String bD = request.getParameter("bookDetails");
//		String aD = request.getParameter("authorDetails");
	
	    BookService bookService = new JdbcBookService();
	    Book book = bookService.get(id); 
//	    book.setDetails(bD);
	    
	    AuthorService authorService = new JdbcAuthorService();
	    Author author = authorService.get(id);
//	    author.setDetails(aD);
	    
	    request.setAttribute("book", book);
	    request.setAttribute("author", author);
	    request.getRequestDispatcher("/WEB-INF/view/Admin/book/edit.jsp").forward(request, response);
	}
	
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		request.setCharacterEncoding("UTF-8");
		
		String id_ = request.getParameter("id");
		int id = Integer.parseInt(id_);
		String bD = request.getParameter("bookDetails");
		String aD = request.getParameter("authorDetails");
	
	    BookService bookService = new JdbcBookService();
	    Book book = bookService.get(id); 
	    book.setDetails(bD);
	    try {
			bookService.update(book);
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	    
	    AuthorService authorService = new JdbcAuthorService();
	    Author author = authorService.get(id);
	    author.setDetails(aD);
	    try {
			authorService.update(author);
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	    
	    
//	    request.setAttribute("book", book);
//	    request.setAttribute("author", author);
//	    request.getRequestDispatcher("edit.jsp").forward(request, response);
	  
		response.sendRedirect("/Admin/book/detail?id="+id);
		
		
	
	}
}
