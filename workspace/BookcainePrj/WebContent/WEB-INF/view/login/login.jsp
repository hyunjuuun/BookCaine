<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>login</title>
    <link href="../css/login.css" type="text/css" rel="stylesheet">
	<script src="../js/login.js"></script>
	 
<%-- <%
//아이디 비번 틀린 경우 화면에 메시지 표시

	String msg = request.getParameter("msg");
	
%> --%>
 
</head>

<body>

    <div id="root"> 
        <header>
            <div id="header">
                <a href="/index" class="logo" target="_blank" title="메인화면링크">BookCaine</a>
            </div>
        </header>
        <div id="header-line"></div>

        <main id="main">
            <div id="login-info-form">
                
                <h1 class="d-none">로그인폼</h1> 
                <form id="loginForm" method="post" action="/login">
                    <div class="idForm">
	                    <label>아이디</label>
	                    <input class="id-input" type="text" name="id" maxlength="50">
                    </div>
                    <div class="pwdForm">
	                    <label>비밀번호</label>
	                    <input class="pwd-input" type="password" name="pwd" maxlength="50">
                    </div>
                </form>
                <c:if test="${not empty param.error }">
                <%-- <%if(msg != null && msg.equals("0")){%> --%>
              		<script type="text/javascript">
              			alert("아이디, 비밀번호를 다시 확인해주세요");
					</script>
               	<%-- <%} %> --%>
                </c:if>
            
                <section>
                    <label class="login-check"><input type="checkbox"> 로그인 상태유지</label>
                </section>
            </div>
            
            <div class="buttons">
                <nav class="login-button">
                    <h1 class="d-none">로그인버튼</h1>
                    <a class="login-button" href="javascript:void(0);"><button id="btnLogin" class="button" type="button">로그인</button></a>
                </nav>

                <nav class="other-button">
                    <h1 class="d-none">그 외 버튼</h1>
                    <a class="signup-button" href="/Sign_up"><input class="button" type="button" value="회원가입"></a>
                    <a class="find-idpw-button" href="#"><input class="button" type="button" value="ID/PW찾기"></a>
                </nav>
            </div>
        </main>
            
        <aside id="aside">
            <nav class="easy-login">
                <h1 class="d-none">간편로그인</h1>
                <ul>
                    <li><a class="icon kakao-login" href="../login/easy_login/easy_login.html">카카오</a></li>
                    <li><a class="icon facebook-login" href="../login/easy_login/easy_login.html">페이스북</a></li>
                    <li><a class="icon naver-login" href="../login/easy_login/easy_login.html">네이버</a></li>
                </ul>
            </nav>
        </aside>
        
    </div>
</body>
</html>