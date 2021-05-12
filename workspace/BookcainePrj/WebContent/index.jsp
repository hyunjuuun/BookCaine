<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

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
            <h1 class="logo"><div class="logo-1">책에 중독되는 순간</div> Bookcaine</h1>
            <section>
                <h1 class="d-none">헤더</h1>
                <nav id="user">
                    <ul>
                        <li><a href="sign_up/Main_Sign_Up.html"><input class="button" type="button" value="회원가입"></a></li>
                        <li><a href="login/login.html"><input class="button" type="button" value="로그인"></a></li>
                    </ul>
                </nav>

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
                        <li class="home"><a href="#">홈</a></li>
                        <li><a href="">도전방</a></li>
                        <li><a href="profile/profile.html">프로필</a></li>
                    </ul>
                </nav>
            </section>
        </div>
    </header>

    <main>
        <h1 class="d-none">content</h1>
        <nav>
            <h1 class="section-title">사람들이 지금 많이 읽고 있는 책</h1>
            <ol class="book-list">
            <%for (int i=0; i<2; i++) { %>
            <div>
            	<%for (int j=0; j<3; j++) {%>
	            	<a href="books/book1.html">
	                        <img src="images/book<%=3*i+j+1 %>.jpg" alt="">
	                        <li>시대를<br>매혹한 철학</li>
	                </a>
	            <%} %>
            </div>
            <%} %>
                <!--<div>
                    <a href="books/book1.html">
                        <img src="images/book1.jpg" alt="">
                        <li>시대를<br>매혹한 철학</li>
                    </a>
                    <a href="">
                        <img src="images/book2.jfif" alt="">
                        <li>12가지<br>인생의 법칙</li>
                    </a>
                    <a href="">
                        <img src="images/book3.jfif" alt="">
                        <li>열한계단</li>
                    </a>
                </div>
                <div>
                    <a href="">
                        <img src="images/book4.jpg" alt="">
                        <li>연을 쫓는<br>아이</li>
                    </a>
                    <a href="">
                        <img src="images/book5.jpg" alt="">
                        <li>밤은<br>노래한다</li>
                    </a>
                    <a href="">
                        <img src="images/book6.jpg" alt="">
                        <li>행복의 가설</li>
                    </a>
                </div> -->
            </ol>
        </nav>
        <nav>
            <h1 class="section-title">BookCaine 추천</h1>
            <ul class="book-list">
                <div>
                    <a href="#">
                        <img src="images/book7.jfif" alt="">
                        <li>지리의 힘</li>
                    </a>
                    <a href="">
                        <img src="images/book8.jfif" alt="">
                        <li>코스모스</li>
                    </a>
                    <a href="">
                        <img src="images/book9.jfif" alt="">
                        <li>사피엔스</li>
                    </a>
                </div>
                <div>
                    <a href="">
                        <img src="images/book10.jfif" alt="">
                        <li>총, 균, 쇠</li>
                    </a>
                    <a href="">
                        <img src="images/book11.jfif" alt="">
                        <li>이기적<br>유전자</li>
                    </a>
                    <a href="">
                        <img src="images/book12.jfif" alt="">
                        <li>팩트풀니스</li>
                    </a>
                </div>

            </ul>
        </nav>
        <nav>
            <h1 class="section-title">베스트셀러</h1>
            <ol class="book-list">
                <div>
                    <a href="">
                        <img src="images/book13.jfif" alt="">
                        <li>역사의 쓸모</li>
                    </a>
                    <a href="#">
                        <img src="images/book14.jfif" alt="">
                        <li>부의<br>추월차선</li>
                    </a>
                    <a href="">
                        <img src="images/book15.jfif" alt="">
                        <li>정의란<br>무엇인가</li>
                    </a>
                </div>
                <div>
                    <a href="">
                        <img src="images/book16.jfif" alt="">
                        <li>아주 작은<br>습관의 힘</li>
                    </a>
                    <a href="">
                        <img src="images/book17.jfif" alt="">
                        <li>미라클 모닝</li>
                    </a>
                    <a href="">
                        <img src="images/book18.jfif" alt="">
                        <li>미움받을<br>용기</li>
                    </a>
                </div>
            </ol>
        </nav>
    </main>

</body>

</html>