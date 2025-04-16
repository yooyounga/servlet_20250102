<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입</title>
</head>
<body>
	<!--1.가입:ex02.jsp ->InsertEx02(서블릿,DB로 insert) ->ex02_user.jsp(유저의 목록 출력)  -->
	<form method="post" action="/lesson03/insert-ex02">
	<p>
		<b>이름</b>
		<input type=text name="name"><br>
		<b>생년월일</b>
		<input type=text name="yyyymmdd"><br>
		<b>E-mail</b>
		<input type=text name="email"><br>
		<b>자기소개</b><br>
		<textarea rows="5" cols="50" name="introduce"></textarea>
	</p>
	<input type="submit" value="회원가입">
	</form>
</body>
</html>