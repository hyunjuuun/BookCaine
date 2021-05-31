package com.bookcaine.web.service;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;


public class JdbcSignoutService {
	
	@SuppressWarnings("resource")
	public int deleteMember(String id, String pwd) throws ClassNotFoundException, SQLException {
		
		String url = "jdbc:oracle:thin:@hi.namoolab.com:1521/xepdb1";
		Class.forName("oracle.jdbc.OracleDriver");
		
		Connection con = null;
		PreparedStatement st = null;
		ResultSet rs = null;

		
		int x = -1;
		try {
			//비밀번호 조회
			StringBuffer query1 = new StringBuffer();
            query1.append("SELECT PASSWORD FROM MEMBER WHERE ID=?");
            //회원 삭제
            StringBuffer query2 = new StringBuffer();
            query2.append("DELETE FROM MEMBER WHERE ID=?");

            con = DriverManager.getConnection(url, "book", "12345");
            con.setAutoCommit(false);//자동커밋방지
            
            //아이디해당 비번조회
			st = con.prepareStatement(query1.toString());
			st.setString(1, id);
			rs = st.executeQuery();
			
			if(rs.next()) {
				String dbpw = rs.getString("password");
				if(dbpw.equals(pwd)) {//비번 같을 경우 회원삭제
					st = con.prepareStatement(query2.toString());
					st.setString(1, id);
					st.executeUpdate();
                    con.commit(); 
                    x = 1; // 삭제 성공
                } else {
                    x = 0; // 비밀번호 비교결과 - 다름
                }

			}
			return x;
			
		}catch (Exception sqle) {
            try {
                con.rollback(); // 오류시 롤백
            } catch (SQLException e) {
                e.printStackTrace();
            }
            throw new RuntimeException(sqle.getMessage());
        } finally {
			try {
				if(st != null) { st.close(); st = null;}
				if(con != null) { con.close(); con = null;}
			}catch(Exception e) {
				throw new RuntimeException(e.getMessage());
			}
		}


	}
}
