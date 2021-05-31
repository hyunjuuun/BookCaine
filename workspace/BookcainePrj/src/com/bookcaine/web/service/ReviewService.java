package com.bookcaine.web.service;

import java.sql.SQLException;
import java.util.List;

import com.bookcaine.web.entity.Review;

public interface ReviewService {

	List<Review> getList(int bookId) throws ClassNotFoundException, SQLException;
	int insert(Review review) throws ClassNotFoundException, SQLException;
	
}
