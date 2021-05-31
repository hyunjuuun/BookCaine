package com.bookcaine.web.controller.admin;

import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bookcaine.web.entity.Book;
import com.bookcaine.web.service.BookService;
import com.bookcaine.web.service.JdbcBookService;

@WebServlet("/Admin/list/total")
public class BookTotalController extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.setCharacterEncoding("UTF-8");
		
	    String p = request.getParameter("p");
	    String f = request.getParameter("f");
	    String q = request.getParameter("q");
	
	    int page_ = 1;
	    String field = "title";
	    String query = "";
	
	    if (p!= null && !p.equals(""))
	       	page_ = Integer.parseInt(p);
	    if (f!= null && !f.equals(""))
	        field = f;
	    if (q!= null && !q.equals(""))
	        query = q;
	
	    BookService bookService = new JdbcBookService();
	    List<Book> list = null;
		try {
			list = bookService.getList(page_, field, query);
		} catch (ClassNotFoundException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		} catch (SQLException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}
	    
	    // count 관련 처리
	    
	    int count = 0;
	    
	    try {
			count = bookService.getCount(field, query);
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		request.setAttribute("list", list);
		request.setAttribute("count", count);
		
		
		request.getRequestDispatcher("/WEB-INF/view/Admin/list/total.jsp").forward(request, response);
	}
	
	
}
