<%@page import="java.sql.ResultSet"%>
<%@page import="com.test.common.MysqlService"%>
<%@page import="java.util.*"%>
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
<title>사용자목록</title>
</head>
<body>
	<div class="container ">
		<h1 class='text-center'>사용자목록</h1>
		<table class='table text-center'>
			<thead>
				<tr>
					<th>번호</th>
					<th>이름</th>
					<th>생년월일</th>
					<th>이메일</th>
					<th>자기소개</th>
					<th>삭제</th>
				</tr>
			</thead>
			<tbody>
			<%
			MysqlService ms=MysqlService.getInstance();
			ms.connect();
			String s="select * from new_user order by id desc";
		    ResultSet res=ms.select(s);
		    while(res.next()){%>
		    	<tr>
					<td><%= res.getInt("id") %></td>
					<td><%= res.getString("name") %></td>
					<td><%= res.getString("yyyymmdd") %></td>
					<td><%= res.getString("email") %></td>
					<td><%= res.getString("introduce") %></td>
					<td><a href='/lesson03/delete-ex02?id=<%=res.getInt("id")%>'>삭제</a></td>
				</tr>
		    <%}%>
			</tbody>
		</table>
	</div>
</body>
</html>