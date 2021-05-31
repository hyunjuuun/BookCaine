package com.bookcaine.web.service;

import java.util.List;

import com.bookcaine.web.entity.Book;
import com.bookcaine.web.entity.Gathering;

public class JdbcProfileService implements ProfileService {

	@Override
	public int getFollowerCount(String memberId) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int getFollowingCount(String memberId) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public List<Gathering> getGatheringList(String memberId) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int getBookCount(String memberId) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public List<Book> getBookList(String memberId) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int getReviewCount(String memberId) {
		// TODO Auto-generated method stub
		return 0;
	}
	
}
