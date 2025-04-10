<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
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
	Date now = new Date();
	SimpleDateFormat sdf=new SimpleDateFormat("HH:mm:ss");
	SimpleDateFormat sdf2=new SimpleDateFormat("yyyy/MM/dd");
	
	if(request.getParameter("scope").equals("time")){
		out.print("현재 시간은 "+sdf.format(now));
	}
	else{
		out.print("현재 날짜는 "+sdf2.format(now));
	}
	%>
</body>
</html>