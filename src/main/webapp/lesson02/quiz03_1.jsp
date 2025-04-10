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
	double tall=Double.parseDouble(request.getParameter("tall"));
	double weight=Double.parseDouble(request.getParameter("weight"));
	//BMI =  몸무게 / ((키 / 100.0) * (키 / 100.0));
	double BMI=weight/ ((tall / 100.0) * (tall / 100.0));
	String BMIStr="";
	if(BMI<=20){
		BMIStr="저체중";
	}
	else if(BMI>=21 && BMI<=25){
		BMIStr="정상";
	}
	else if(BMI>=26 && BMI<=30){
		BMIStr="과체중";
	}
	else if(BMI>=31){
		BMIStr="비만";
	}
	%>
	<h1>당신의 측정결과입니다.</h1>
	<h1>당신은 <%=BMIStr %> 입니다.</h1>
</body>
</html>