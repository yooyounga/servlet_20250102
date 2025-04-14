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
<title>책 목록</title>
</head>
<body>
<%
List<Map<String, Object>> list = new ArrayList<>();
Map<String, Object> map = new HashMap<String, Object>() {
    { 
        put("id", 1000);
        put("title", "아몬드"); 
        put("author", "손원평"); 
        put("publisher", "창비");
        //put("image", "http://image.kyobobook.co.kr/images/book/xlarge/267/x9788936434267.jpg");
        put("image", "https://contents.kyobobook.co.kr/sih/fit-in/200x0/pdt/9791198363503.jpg");
    } 
};
list.add(map);

map = new HashMap<String, Object>() {
    { 
        put("id", 1001);
        put("title", "사피엔스"); 
        put("author", "유발 하라리"); 
        put("publisher", "김영사");
       // put("image", "http://image.kyobobook.co.kr/images/book/xlarge/464/x9788934972464.jpg");
        put("image", "https://contents.kyobobook.co.kr/sih/fit-in/458x0/pdt/9788934972464.jpg");
    } 
};
list.add(map);

map = new HashMap<String, Object>() {
    { 
        put("id", 1002);
        put("title", "코스모스"); 
        put("author", "칼 세이건"); 
        put("publisher", "사이언스북");
        //put("image", "http://image.kyobobook.co.kr/images/book/xlarge/892/x9788983711892.jpg");
        put("image", "https://contents.kyobobook.co.kr/sih/fit-in/458x0/pdt/9788983711892.jpg");
    } 
};
list.add(map);

map = new HashMap<String, Object>() {
    { 
        put("id", 1003);
        put("title", "나미야 잡화점의 기적"); 
        put("author", "히가시노 게이고"); 
        put("publisher", "현대문학");
        //put("image", "http://image.kyobobook.co.kr/images/book/xlarge/194/x9788972756194.jpg");
        put("image", "https://contents.kyobobook.co.kr/sih/fit-in/458x0/pdt/9791167901484.jpg");
    } 
};
list.add(map);
%>
	<div class="container ">
		<h1 class='text-center'>책 목록</h1>
		<table class='table text-center'>
			<thead>
				<tr>
					<th>ID</th>
					<th>표지</th>
					<th>제목</th>
				</tr>
			</thead>
			<tbody>
			<%
		    for(Map<String,Object> item :list){%>
		    	<tr>
					<td><%= item.get("id") %></td>
					<td><img src='<%= item.get("image") %>' style='width:50px' alt="책표지"></td>
					<td><a href='/lesson02/quiz08_1.jsp?id=<%= item.get("id") %>'><%= item.get("title") %></a></td>
				</tr>
		    <%}%>
			</tbody>
		</table>
	</div>
</body>
</html>