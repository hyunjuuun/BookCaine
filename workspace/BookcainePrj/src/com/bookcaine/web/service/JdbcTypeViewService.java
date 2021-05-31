package com.bookcaine.web.service;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

import com.bookcaine.web.entity.Book;
import com.bookcaine.web.entity.TypeView;

public class JdbcTypeViewService {

	public TypeView get(int id) {

		TypeView typeView = new TypeView();

		String sql = "SELECT * FROM TYPE_VIEW WHERE ID=" + id;

		String url = "jdbc:oracle:thin:@hi.namoolab.com:1521/xepdb1";

		try {
			Class.forName("oracle.jdbc.OracleDriver");
			Connection con = DriverManager.getConnection(url, "BOOK", "12345");

			Statement st = con.createStatement();
			ResultSet rs = st.executeQuery(sql);

			if (rs.next()) {
				String name = rs.getString("name");

				typeView.setId(id);
				typeView.setName(name);
			}

			rs.close();
			st.close();
			con.close();

		} catch (Exception e) {
			throw new ServiceException();
		}

		return typeView;

	}

}
