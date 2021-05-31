package com.bookcaine.web.service;

import java.sql.SQLException;

import com.bookcaine.web.entity.Author;
import com.bookcaine.web.entity.Book;

public interface AuthorService {

	Author get (int id);
	int update (Author author) throws ClassNotFoundException, SQLException;
	
}
