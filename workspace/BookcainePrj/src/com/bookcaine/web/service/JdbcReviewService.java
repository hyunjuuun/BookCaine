package com.bookcaine.web.service;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.bookcaine.web.entity.Review;

public class JdbcReviewService implements ReviewService {
	
	public List<Review> getList(int bookId) throws ClassNotFoundException, SQLException{
		List<Review> list = new ArrayList<>();
		
		String url = "jdbc:oracle:thin:@hi.namoolab.com:1521/xepdb1";
		// 필터링, 정렬, 그룹핑, ... -> SQL에서 담당
		String sql = "SELECT R.*, M.NICKNAME FROM REVIEW R LEFT JOIN MEMBER M "
				+ "ON R.WRITER_ID = M.ID WHERE BOOK_ID = " + bookId + " ORDER BY REGDATE DESC";

		Class.forName("oracle.jdbc.OracleDriver");
		Connection con = DriverManager.getConnection(url, "BOOK", "12345");
		
		Statement st = con.createStatement();
		ResultSet rs = st.executeQuery(sql);
		
		while(rs.next()) {
			Review review = new Review();
			int id = rs.getInt("id");
			String writerId = rs.getString("writer_id");
			String content = rs.getString("content");
			String nickname = rs.getString("nickname");
			
			review.setId(id);
			review.setWriterId(writerId);
			review.setBookId(bookId);
			review.setContent(content);
			review.setNickname(nickname);
			
			list.add(review);
		}
		
		rs.close();
		st.close();
		con.close();
		
		return list;
	}
	
	public int insert(Review review) throws ClassNotFoundException, SQLException {
		int result = 0;
		
		String sql = "INSERT INTO REVIEW(WRITER_ID, BOOK_ID, CONTENT) VALUES(?,?,?)";
		
		String url = "jdbc:oracle:thin:@hi.namoolab.com:1521/xepdb1";
		Class.forName("oracle.jdbc.OracleDriver");
		Connection con = DriverManager.getConnection(url, "BOOK", "12345");
		
		PreparedStatement st = con.prepareStatement(sql);
		st.setString(1, review.getWriterId());
		st.setInt(2, review.getBookId());
		st.setString(3, review.getContent());
		
		result = st.executeUpdate(); // ex.Query():Select, ex.Update(): UPdate/Delete/Insert
		// 업데이트된 개수를 반환
		
		st.close();
		con.close();
		
		return result;
	}
	
}
