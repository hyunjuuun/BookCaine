<%@page import="com.bookcaine.web.service.JdbcBookService"%>
<%@page import="com.bookcaine.web.entity.Book"%>
<%@page import="com.bookcaine.web.service.JdbcBookService"%>
<%@page import="java.util.List"%>
<%@page import="com.bookcaine.web.entity.Member"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    

<%

	Member member = (Member) request.getSession().getAttribute("loginMember");
	
%>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="css/style.css">
</head>

<body>
    <header id="header">
        <div class="float-content">
            <h1 class="logo"><a href="index"><div class="logo-1">책에 중독되는 순간</div> Bookcaine</a></h1>
            <section>
                <h1 class="d-none">헤더</h1>
                <nav id="user">
                    <ul>
                    	<%if (member != null ) { %>
			            	<li>환영합니다. ${sessionScope.loginMember.name } 님</li>
			            	<li><a href="logout"><input class="button" type="button" value="로그아웃"></a></li>
			            <%} else { %>
                        	<li><a href="/Sign_up"><input class="button" type="button" value="회원가입"></a></li>
                        	<li><a href="/login"><input class="button" type="button" value="로그인"></a></li>
                        <%} %>
                        <%-- <c:choose>
	                        <c:when test="${member} != null" >
				            	<li>환영합니다. ${sessionScope.loginMember.name } 님</li>
				            	<li><a href="login/logoutPro.jsp"><input class="button" type="button" value="로그아웃"></a></li>
				            </c:when>
				            <c:otherwise>
	                        	<li><a href="sign_up/Main_Sign_Up.html"><input class="button" type="button" value="회원가입"></a></li>
	                        	<li><a href="/login/login.do"><input class="button" type="button" value="로그인"></a></li>
	                        </c:otherwise>
                        </c:choose> --%>
                    </ul>
                </nav>

                <section class="book-search-form">
                    <h1 class="d-none">도서검색폼</h1>
                    <form action="index.jsp" method="get">
                        <legend class="d-none">도서 검색 필드</legend>
                        <input class="form-input" type="text" name="query" placeholder="제목,저자,출판사 검색">
                        <input class="button" type="submit" value="검색">
                    </form>
                </section>
    
                <nav class="quick-menu">
                    <h1 class="d-none">퀵메뉴</h1>
                    <ul>
                        <li class="home"><a href="index">홈</a></li>
                        <li><a href="/bookClub">도전방</a></li>
                        <li><a href="profile">프로필</a></li>
                        
                    </ul>
                </nav>
            </section>
        </div>
    </header>

    <main>
        <h1 class="d-none">content</h1>
        
        <nav>
            <h1 class="section-title">BookCaine 추천</h1>
            <ul class="book-list">
            	<c:forEach var="i" begin="0" end="5">
            		<div>
	                	<c:forEach var="j" begin="0" end="2">
		                	<a href="books/detail?id=${list.get(3*i+j).id}">
		                        <img src="images/book${list.get(3*i+j).id}.jpg" alt="">
		                        <li>${list.get(3*i+j).title}</li>
		                	</a>
	                	</c:forEach>
                	</div>
                </c:forEach>
           <%--  <%for (int i=0; i<6; i++) { %>
            <div>
            	<%for (int j=0; j<3; j++) {%>
	            	<a href="books/detail?id=<%=list.get(3*i+j).getId()%>">
	                        <img src="images/book<%=list.get(3*i+j).getId()%>.jpg" alt="">
	                        <li><%=list.get(3*i+j).getTitle() %></li>
	                </a>
	            <%} %>
            </div>
            <%} %> --%>
            </ul>
        </nav>
        
    </main>

</body>

</html>