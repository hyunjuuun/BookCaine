<%@page import="com.bookcaine.web.entity.Member"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    
<% Member member = (Member) request.getSession().getAttribute("loginMember"); %>
    
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>profile-edit</title>
    <link rel="stylesheet" href="../css/edit.css">
    <!-- <link rel="stylesheet" href="../header/header.css"> -->
</head>

<body>

    <form class="profile-form" action="/profile">
        <h1 class="d-none">profile-edit</h1>
        <section>
            <h1 class="d-none">profile-edit-top</h1>
            <a href="/profile">���</a>
            <span>�����ʺ���</span>
            <input class="submit" type="submit" value="Ȯ��">
        </section>
        <hr>
        <img src="../images/user.PNG" alt="profile-image">
        <p>
        <div>�г���</div>
        <input class="input" type="text" name="name" value="${sessionScope.loginMember.name }">
        </p>
        <p>
        <div>�Ұ�</div>
        <input class="input" type="text" name="introduce" value="å�� �����ϴ� ��� :)" placeholder="�Ұ��� �Է����ּ���.">
        </p>
        </section>
    </form>
    <script></script>
</body>

</html>