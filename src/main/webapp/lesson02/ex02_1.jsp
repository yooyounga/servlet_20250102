<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Get Method 두번째페이지</title>
</head>
<body>
	<h1>결과</h1>
	<b>아이디 :<%= request.getParameter("user_id")%></b><br/>
	<b>이름 :<%= request.getParameter("user_name")%></b><br/>
	<b>나이 :<%= request.getParameter("age")%></b>
</body>
</html>