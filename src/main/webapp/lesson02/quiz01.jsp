<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
String birthday="20120723";
String year = birthday.substring(0, 4);
out.print("year:"+year);
%>
<h1><%=birthday %></h1>
</body>
</html>