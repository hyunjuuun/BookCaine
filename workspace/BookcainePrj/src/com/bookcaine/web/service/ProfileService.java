package com.bookcaine.web.service;

import java.util.List;

import com.bookcaine.web.entity.Book;
import com.bookcaine.web.entity.Gathering;

public interface ProfileService {
	
	int getFollowerCount(String memberId);
	int getFollowingCount(String memberId);
	List<Gathering> getGatheringList(String memberId);
	int getBookCount(String memberId);
	List<Book> getBookList(String memberId);
	int getReviewCount(String memberId);	

}


