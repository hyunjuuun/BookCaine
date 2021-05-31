package com.bookcaine.web.controller.profile;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.bookcaine.web.entity.Member;

@WebServlet("/profile")
public class ProfileController extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// 만약 현재 사용자가 login 프로세스를 통해 인증되지 않았다면
		HttpSession session = request.getSession();
		
		Member member = (Member) request.getSession().getAttribute("loginMember");
		//인증하고 오세요
		if(member == null) {
			response.sendRedirect("/login?returnURL=/profile");
			return;	
		}
		
		request.getRequestDispatcher("/WEB-INF/view/profile/profile.jsp").forward(request, response);
	}
}
