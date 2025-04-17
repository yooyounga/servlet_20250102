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
<title>회원가입</title>
</head>
<body>
	<!--1.등록:quiz02_input.jsp ->InsertQuiz02(서블릿,DB로 insert) ->quiz02.jsp(즐겨찾기 목록 출력)  -->
	<form method="post" action="/lesson03/insert-quiz02">
	<div>
		<div class="col-auto">
			<b>사이트명</b>
    		<input type="text" name="name" >
 		 </div>
		<b>사이트주소</b>
		<input type=text name="url" ><br>
	</div>
	<input type="submit" value="등록">
	</form>
</body>
</html>