<%@page import="com.bookcaine.web.entity.Member"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    
<%
	Member member = (Member) request.getSession().getAttribute("loginMember");
%>
    
<header id="header">
        <div class="float-content">
            <h1 class="logo"><a href="index"><div class="logo-1">å�� �ߵ��Ǵ� ����</div> Bookcaine</a></h1>
            <section>
                <h1 class="d-none">���</h1>
                <nav id="user">
                    <ul>
                    	<%if (member != null ) { %>
			            	<li>ȯ���մϴ�. ${sessionScope.loginMember.name } ��</li>
			            	<li><a href="logout"><input class="button" type="button" value="�α׾ƿ�"></a></li>
			            <%} else { %>
                        	<li><a href="/Sign_up"><input class="button" type="button" value="ȸ������"></a></li>
                        	<li><a href="/login"><input class="button" type="button" value="�α���"></a></li>
                        <%} %>
                        <%-- <c:choose>
	                        <c:when test="${member} != null" >
				            	<li>ȯ���մϴ�. ${sessionScope.loginMember.name } ��</li>
				            	<li><a href="login/logoutPro.jsp"><input class="button" type="button" value="�α׾ƿ�"></a></li>
				            </c:when>
				            <c:otherwise>
	                        	<li><a href="sign_up/Main_Sign_Up.html"><input class="button" type="button" value="ȸ������"></a></li>
	                        	<li><a href="/login/login.do"><input class="button" type="button" value="�α���"></a></li>
	                        </c:otherwise>
                        </c:choose> --%>
                    </ul>
                </nav>

                <section class="book-search-form">
                    <h1 class="d-none">�����˻���</h1>
                    <form action="index.jsp" method="get">
                        <legend class="d-none">���� �˻� �ʵ�</legend>
                        <input class="form-input" type="text" name="query" placeholder="����,����,���ǻ� �˻�">
                        <input class="button" type="submit" value="�˻�">
                    </form>
                </section>
    
                <nav class="quick-menu">
                    <h1 class="d-none">���޴�</h1>
                    <ul>
                        <li class="home"><a href="index">Ȩ</a></li>
                        <li><a href="/bookClub">������</a></li>
                        <li><a href="profile">������</a></li>
                        
                    </ul>
                </nav>
            </section>
        </div>
    </header>
    