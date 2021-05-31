<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="com.bookcaine.web.entity.Member"%>    
<% Member member = (Member) request.getSession().getAttribute("loginMember"); %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link href="../css/signmemo.css" type="text/css" rel="stylesheet">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, user-scalable=no, target-densitydpi=medium-dpi" />
    <link rel="stylesheet" href="../header/header.css">
</head>
<body>
    <div id="root">
        <header id="header">
            <div class="float-content">
                <h1 class="logo"><div class="logo-1">책에 중독되는 순간</div> Bookcaine</h1>
                <section>
                    <h1 class="d-none">헤더</h1>
                    <a href="/account/edit"><i class="icon-cog"></i></a>
                    
                    <section class="book-search-form">
                        <h1 class="d-none">도서검색폼</h1>
                        <form action="">
                            <legend class="d-none">도서 검색 필드</legend>
                            <input class="form-input" type="text" name="search" placeholder="제목,저자,출판사 검색">
                            <input class="button" type="submit" value="검색">
                        </form>
                    </section>
        
                    <nav class="quick-menu">
                        <h1 class="d-none">퀵메뉴</h1>
                        <ul>
                            <li><a href="/index">홈</a></li>
                            <li><a href="">도전방</a></li>
                            <li class="profile"><a href="/profile/profile">프로필</a></li>
                        </ul>
                    </nav>
                </section>
            </div>
        </header>

        <main>
            <h1>정보변경</h1>
                <div>
                    <table class="table">
                    
                        <tr>
                            <th class="user-name">이름</th>
                            <td>
                                <span class="user-name">${sessionScope.loginMember.name }</span>
                                <a href="/sign/signout" class="leave-button">회원탈퇴</a>
                            </td>
                        </tr>
                        <tr>
                            <th>아이디</th>
                            <td>
                                <span class="id-name">${sessionScope.loginMember.id }</span>
                            </td>
                        </tr>

                        <tr>
                            <th>이메일</th>
                            <td>
                                <div>
                                    <p>${sessionScope.loginMember.email }</p>
                                    <p class="email">인증된 이메일 주소입니다.</p>

                                    
                                </div>
                                <div>
                                    <button class="email-ch">이메일 변경</button>
                                </div>
                            </td>
                        </tr>

                        <tr>
                            <th>비밀번호 변경</th>
                            <td>
                                <form>
                                    <div class="password">
                                        <input type="password" class="password-in" title="현재비밀번호입력">
                                    </div>

                                    <div class="password">
                                        <input type="password" class="password-in" >
                                    </div>

                                    <div class="password">
                                        <input type="password" class="password-in" >
                                    </div>
                                    
                                    <div class="password">
                                        <button type="submit" form="password-form" class="password-ch" >
                                         비밀번호 변경
                                        </button>
                                    </div>
                                </form>
                            </td>
                        </tr>

                       

                    </table>
                </div>

        </main>
    
    
        <footer>
    
        </footer>

        <script>
            
        </script>
    
</body>
</html>