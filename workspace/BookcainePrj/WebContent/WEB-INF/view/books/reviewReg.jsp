<%@page import="com.bookcaine.web.entity.Member"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>profile-edit</title>
    <link rel="stylesheet" href="../css/edit.css">
    <link rel="stylesheet" href="../css/write.css">
    <!-- <link rel="stylesheet" href="../header/header.css"> -->
</head>

<body>
    <form class="profile-form" action="/books/reg?id=<%=request.getParameter("id")%>" method="post">
        <h1 class="d-none">profile-edit</h1>
        <section>
            <h1 class="d-none">profile-edit-top</h1>
            <a href="/books/detail?id=<%=request.getParameter("id")%>">취소</a>
            <span>리뷰 작성</span>
            <input class="submit" type="submit" value="확인">
        </section>
        <hr>
        <textarea name="content" placeholder="이동진님의 생각을 글로 남겨주세요 :)"></textarea>
        <!-- <img src="../images/user.PNG" alt="profile-image">
        <p>
        <div>이름</div>
        <input class="input" type="text" name="name" value="홍길동">
        </p>
        <p>
        <div>소개</div>
        <input class="input" type="text" name="introduce" value="책을 좋아하는 사람 :)" placeholder="소개를 입력해주세요.">
        </p> -->
    </form>
    <script></script>
</body>

</html>