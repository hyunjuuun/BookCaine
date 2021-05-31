<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    

<!DOCTYPE html>
<html lang="en">
<head>
   
    <title>logout 처리 jsp</title>
    
</head>

<body>

<%
	session.invalidate(); // 모든 세션정보 삭제
	response.sendRedirect("/index"); // 메인으로 돌아감
%>

    
</body>
</html>