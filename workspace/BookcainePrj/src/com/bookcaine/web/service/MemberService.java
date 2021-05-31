package com.bookcaine.web.service;

import java.sql.SQLException;
import java.util.List;

import com.bookcaine.web.entity.Member;

public interface MemberService {

	List<Member> getList() throws ClassNotFoundException, SQLException;
	int insert(Member member) throws ClassNotFoundException, SQLException;
	
}
