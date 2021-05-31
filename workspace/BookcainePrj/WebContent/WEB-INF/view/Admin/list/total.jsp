<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
 
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link href="../../css/list_total.css" type="text/css" rel="stylesheet">
</head>

<body>
    <div id="root">
        <header id="header">
            <section>
                <h1 class="d-none">메인</h1>
                <section id="main-top">
                    <h1>관리자 도서 전체 리스트 | Bookcaine</h1>
                </section>
            </section>
        </header>
        <aside id="aside">
            <div class="font">
                <p>도서관리><b>도서리스트</b></p>
            </div>
            <form class=aside-search>
                <select name="f">
                    <option value="">전체</option>
                    <option value="ctg">분류</option>
                    <option value="title">제목</option>
                    <option value="author">저자</option>
                </select>
                <input type="search" name="q" value="${param.q}">
                <input type="submit" value="검색">
            </form>
        </aside>
        <section class="book_total_content">
            <h1><a href="total">책 전체 목록</a></h1>
            <c:forEach var="b" items="${list}">
            	<ul class="book_total_list"> 
	                <li class="book_total">
	                    <input class="check" type="checkbox">
	                    <a class="title" href="/Admin/book/detail?id=${b.id}">${b.title}</a>
	                    <img class="img" src="../../images/book${b.id}.jpg">
	                    <span class="info">
	                        <span>진열여부:Y</span>
	                    </span>
	                    <span class="customer">
	                        <span>별점평균:9.8점 |</span>
	                        <span>등록리뷰:387건</span>
	                    </span>
	                    <span class="meetup">
	                        <span>개설모임:1개 |</span>
	                        <span>모임참가자:478명</span>
	                    </span>
	                </li>
            	</ul>
            </c:forEach>
        </section>

        <section class="page-status mt-3">
            <h1 class="d-none">현재 페이지 정보</h1>
            <div>
				 <c:set var="lastPage" value="${count/5 + (count%10==0?0:1)}"/> 
				 <c:set var="lastPage" value="${fn:substringBefore(lastPage,'.')}"/>
            	<span class="text-strong">${(empty param.p)?1:param.p}</span> / ${lastPage} pages
            </div>
        </section>
        <nav class="pager mt-3">
            <h1 class="d-none">페이저</h1>
            <div class="button">이전</div>
            <ul>
            <c:set var="page" value="${empty param.p?1:param.p}"/>
           	<c:forEach var="num" begin="1" end="5">
           		<c:if test="${num <= lastPage}">
                	<li><a class="${(page==num)?'text-strong':''}" href="total?p=${num}&f=${param.f}&q=${param.q}">${num}</a></li>
            	</c:if>
            </c:forEach>
            </ul>
            <div class="button">다음</div>
        </nav>
            <h1 class="d-none">상품 관리</h1>
            <form class="check_button">
                <a href="../book/detail"><input type="button" value="상세 페이지"></a>
                <a href="/Admin/book/add"><input type="button" value="상품 등록"></a>
                <a href="../book/edit"><input type="button" value="상품 수정"></a>
                <input type="button" value="상품 삭제">
            </form>
    </div>
</body>
</html>