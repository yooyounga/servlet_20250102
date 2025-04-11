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
<title>배탈의 민족 메뉴 검색</title>
</head>
<body>
<div class="container">
	<form method="post" action="/lesson02/quiz07_1.jsp" >
		<h1>메뉴검색</h1>
		<div class='d-flex align-items-end'>
			<input type=text name="searchmenu" class='form-control col-2'></input>
			<label class='mt-1'><input type=checkbox name="type" value='4.0' class='ml-2'>4점이하 제외</label>
		</div>
		<input type='submit' value='검색' class="btn btn-success mt-3"></input>
	</form>
</div>
</body>
</html>