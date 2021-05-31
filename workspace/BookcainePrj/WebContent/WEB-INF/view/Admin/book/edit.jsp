<%@page import="com.bookcaine.web.entity.Author"%>
<%@page import="com.bookcaine.web.service.JdbcAuthorService"%>
<%@page import="com.bookcaine.web.service.AuthorService"%>
<%@page import="com.bookcaine.web.entity.Book"%>
<%@page import="com.bookcaine.web.service.JdbcBookService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>BookDetail</title>
    <link rel="stylesheet" href="../../css/book_edit2.css">
</head>

<body>
    <header id="header">
        <section>
            <h1 class="d-none">메인</h1>
            <section id="main-top">
                <h1>관리자 도서 수정 페이지 | Bookcaine</h1>
            </section>
        </section>
    </header>
    
    <main>
        <form id="form" action="edit" method="post">
            <section id="book-image">
                <h1 class="d-none">book-image</h1>
                <img src="../../images/book${book.id}.jpg" alt="">
            </section>
            <div class="zero">
                <div class="d-none">이미지</div>
                <input class="m-1" type="file">
            </div> 
            <section id="book-description">
                <h1 class="d-none">책 제목 저자</h1>
                <input class="book-name" type="text" value="${book.title}">
                <input class="writer" type="text" value="${book.author}">
            </section>
            <table id="table">
                <tr>
                    <th>분류</th>
                    <td>
                        <div class="one">
                            <select class="m">
                                <option>종합</option>
                                <option>소설</option>
                                <option>비소설</option>
                                <option>시사</option>
                                <option>자기계발</option>
                                <option>인문</option>
                                <option>역사</option>
                                <option>외국어</option>
                                <option>유아</option>
                                <option>기타</option>
                            </select> 
                        </div>
                    </td>
                </tr>
                <tr>
                    <th>진열여부</th>
                    <td>
                        <div class="five">
                            <select class="m">
                                <option>Y</option>
                                <option>N</option>
                            </select>
                        </div>
                    </td>
                </tr>
                <tr>
                    <th>별점 평균</th>
                    <td>9.8점</td>
                </tr>
                <tr>
                    <th>등록 리뷰</th>
                    <td>387건</td>
                </tr>
                <tr>
                    <th>개설 모임</th>
                    <td>1개</td>
                </tr>
                <tr>
                    <th>모임 참가자</th>
                    <td>478명</td>
                </tr>
            </table>
      
            <section id="book-details">
                <h1 class="d-none">책 디테일</h1>
                <textarea class="details" name="bookDetails">책 소개<br>${book.details}</textarea>
            </section>
            <section id="author-details">
                <h1 class="d-none">저자 디테일</h1>
                <textarea class="details" name="authorDetails">저자 소개<br>${author.details}</textarea>
            </section>

			
	        <section class="check_button">
	        	<input type="hidden" name="id" value="${book.id}">
	            <a href="../list/total"><input type="button" value="목록"></a>
	            <input type="submit" value="저장">
	            <a href="detail.jsp?id=${book.id}"><input type="button" value="취소"></a>
	            <input type="button" value="상품 삭제">
        	</section>
        </form>

    </main>
</body>

</html>