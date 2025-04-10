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
<title>GET Method(폼 태그)</title>
</head>
<body>
	<%
	double height=0;
	if(!request.getParameter("height").isEmpty())
		height=Double.parseDouble(request.getParameter("height"));
	
	double weight=0;
	if(!request.getParameter("weight").isEmpty())
		weight=Double.parseDouble(request.getParameter("weight"));
	
	//BMI =  몸무게 / ((키 / 100.0) * (키 / 100.0));
	double BMI=weight/ ((height / 100.0) * (height / 100.0));
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
	<div class='container'>
		<h1>당신의 측정결과입니다.</h1>
		<div class='display-4'>당신은 <span class='text-info'><%=BMIStr %></span>입니다.</div>
		<div class='display-4'>BMI수치:<%=BMI %></div>
	</div>
</body>
</html>