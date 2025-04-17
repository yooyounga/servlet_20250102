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
			<div class="w-100 text-center">
	 			<h3 class="bg-warning text-white">홍당무 마켓</h3>
	 		</div>
		</header>
		<nav class="contents bg-warning ">
			<ul class="nav nav-fill w-100 text-white">
 				<li class="nav-item"><a href="/lesson03/quiz03.jsp" class="nav-link text-white font-weight-bold">리스트</a></li>
 				<li class="nav-item"><a href="/lesson03/quiz03_input.jsp" class="nav-link text-white font-weight-bold">물건올리기</a></li>
 				<li class="nav-item"><a href="#" class="nav-link text-white font-weight-bold">마이페이지</a></li>
 			</ul>
		 </nav>	
		<%
		MysqlService ms =MysqlService.getInstance();
		ms.connect();
		String s="select a.nickname,b.productUrl ,b.title,b.price from seller a inner join used_goods b on a.id=b.sellerId";
		ResultSet res=ms.select(s);
		while(res.next()){%>
			<div class="contents border border-warning">
				<div class="mr-3">
					<img src='<%= res.getString("productUrl")%>' style='width:150px'>
					<div class='mt-3'><%= res.getString("title")%></div>
					<div><%= res.getDouble("price")%></div>
					<div><%= res.getString("nickname")%></div>
				</div>
			</div>
		<%} %>
	<footer>
		<hr>
		<small class="text-secondary">Copyright 2025. Hong All Rights Reserved.</small>
	</footer>
	</div>
</body>
</html>