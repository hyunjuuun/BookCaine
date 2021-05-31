package com.bookcaine.web.controller;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.bookcaine.web.entity.Member;
import com.bookcaine.web.service.JdbcLoginService;

@WebServlet("/login")
public class LoginController extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("UTF-8");
		resp.setCharacterEncoding("UTF-8");
		resp.setContentType("text/html; charset=UTF-8");
		
		HttpSession session = req.getSession();
		
		String id = req.getParameter("id");
		String pwd = req.getParameter("pwd");
		String returnURL = req.getParameter("returnURL");
		
		JdbcLoginService service = new JdbcLoginService();
	
		//String msg = ""; // url및 로그인관련 메시지
		
		try {
			Member member = service.actionLogin(id, pwd);
			
			session.removeAttribute("loginMember");
			//로그인 성공한 경우 세션에 현재 아이디 세팅
			if(member != null){
				session.setAttribute("loginMember", member);
				
				
				if(returnURL != null && returnURL.equals("")) {
					resp.sendRedirect(returnURL);
					return;
				}
				resp.sendRedirect("/index");
				return;	
			}
				
			else if(member == null){//아이디,비번틀린경우
				resp.sendRedirect("login?error=1");
			}
			
		} catch (Exception e) {
			// TODO: handle exception
		}
		
		//resp.sendRedirect("/index");

	}

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.getRequestDispatcher("/WEB-INF/view/login/login.jsp").forward(request, response);
	}
	
	
	
	

}
