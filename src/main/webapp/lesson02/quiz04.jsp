<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<!-- bootstrap CDN link -->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-Fy6S3B9q64WdZWQUiU+q4/2Lc9npb8tCaSX9FK7E8HnRr0Jz8D6OP9dO5Vg3Q9ct" crossorigin="anonymous"></script>

<meta charset="UTF-8">
<title>POST Method(폼 태그)</title>
</head>
<body>
<%
/* cm를 입력받으면 인치, 야드, 피트, 미터의 단위로 변환하는 POST Method 폼을 submit 하세요.
체크박스에 선택된 단위들을 변환 결과 화면에서 출력합니다.
단위 변환 공식은 검색을 활용하세요. */
%>
<form action="/lesson02/quiz04_1.jsp" method="post">
<div class="container">
	<h1>길이 변환</h1>
	<input type=text name='length' ></input>cm <br/>
	인치<input type=checkbox name='inch'>
	야드<input type=checkbox name='yard'>
	피트<input type=checkbox name='feet'>
	미터<input type=checkbox name='meter'><br/>
	
	<input type='submit' value='변환하기' class="btn btn-success"></input>
</div>
</form>

</body>
</html>