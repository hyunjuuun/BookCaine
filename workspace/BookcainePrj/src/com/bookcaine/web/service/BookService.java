package com.bookcaine.web.service;

import java.sql.SQLException;
import java.util.List;

import com.bookcaine.web.entity.Book;

public interface BookService {

	List<Book> getList() throws ClassNotFoundException, SQLException;
	List<Book> getList(String query);
	List<Book> getList(int page, String field, String query) throws ClassNotFoundException, SQLException;
	Book get(int id);
	int getCount(String field, String query) throws ClassNotFoundException, SQLException;
	int update (Book book) throws ClassNotFoundException, SQLException;
	int insert(Book book) throws ClassNotFoundException, SQLException;
	int delete(int id) throws ClassNotFoundException, SQLException;
	
}
