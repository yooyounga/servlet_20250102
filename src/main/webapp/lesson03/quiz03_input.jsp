<%@page import="java.sql.ResultSet"%>
<%@page import="com.test.common.MysqlService"%>
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
<title>홍당무 마켓</title>
</head>
<body>
	<div class="container ">
		<header class='text-warning d-flex justify-content-center mt-3'>
			<div class="col-2">
	 				<h3 class="text-success">홍당무 마켓</h3>
	 		</div>
		</header>
		<nav class="contents mt-3">
			<ul class="nav nav-fill w-100">
 				<li class="nav-item"><a href="/lesson03/quiz03.jsp" class="nav-link text-dark font-weight-bold">리스트</a></li>
 				<li class="nav-item"><a href="/lesson03/quiz03_input.jsp" class="nav-link text-dark font-weight-bold">물건올리기</a></li>
 				<li class="nav-item"><a href="#" class="nav-link text-dark font-weight-bold">마이페이지</a></li>
 			</ul>
	 </nav>	
	<form method="post" action='/lesson03/insert-quiz03'>
		<p>
			<div class="col-md-4">
				<b>아이디</b>
				<select name='sellerId' class="form-select form-select-sm">
				<%
				MysqlService ms =MysqlService.getInstance();
				ms.connect();
				String s="select * from seller ";
				ResultSet res = ms.select(s);
				while(res.next()){%>
					<option value='<%=res.getInt("id") %>'><%=res.getString("nickName") %></option>
				<%} %>
				</select>
			</div>
			<div class="col-md-4">
				<b class='ml-3'>제목</b>
				<input type=text name="title" class="form-control">
			</div>
			<div class="col-md-4">
				<b class='ml-3'>가격</b>
				<input type=text name="price" class="form-control"><br>
			</div>
			 <b class='ml-3'>내용</b>
			 <textarea name='description' cols="30" rows="5" class="form-control" style="resize: none;"></textarea>
			<b class='mt-3'>이미지</b>
			<input type=text name="productUrl" class='form-control'><br>
		</p>
		<input type="button" id='savebtn' class='btn btn-secondary btn-lg' value="저장">
	</form>
	<footer>
		<hr>
		<small class="text-secondary">Copyright 2025. Hong All Rights Reserved.</small>
	</footer>
	</div>
</body>
<script type="text/javascript"> 
 $('#savebtn').click(function () {
	 $("form").submit();
 });

</script> 
</html>