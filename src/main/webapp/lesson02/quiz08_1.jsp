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
<title>교보문고</title>
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
        put("image", "https://contents.kyobobook.co.kr/sih/fit-in/458x0/pdt/9791167901484.jpg");
    } 
};
list.add(map);

//아래 보여줄 책 한권 구성(map)
Map<String, Object> targetBook=new HashMap<String, Object>();
for(Map<String,Object> item :list){
    if(Integer.valueOf(request.getParameter("id"))==(int)item.get("id")){
    	targetBook.put("image", item.get("image"));
    	targetBook.put("title", item.get("title"));
    	targetBook.put("author", item.get("author"));
    	targetBook.put("publisher", item.get("publisher"));
    	
    	break;
    }
}
%>
<div class="container d-flex">
	<div>
		<img src='<%= targetBook.get("image")%>' style='width:300px'>
	</div>
	<div>
		<div class='display-2 font-weight-bold'><%= targetBook.get("title")%></div>
		<div class='display-3 text-info'><%= targetBook.get("author")%></div>
		<div class='display-4 text-secondary'><%= targetBook.get("publisher")%></div>
	</div>
	<%-- <%
    for(Map<String,Object> item :list){
	    if(item.get("id").toString().equals(request.getParameter("id"))){%>
	    	<table class='text-left'>
	    		<tr>
	    		<td><img src='<%= item.get("image")%>' style='width:300px'></td>
	    		<td>
			    	<label><h1 class='display-2 font-weight-bold'><%= item.get("title")%></h1></label><br>
			    	<label><h1 class='display-3 text-info '><%= item.get("author")%></h1></label><br>
			    	<label><h1 class='display-4 text-secondary'><%= item.get("publisher")%></h1></label><br>
			    </td>
	    	</table>
	    <%}
	 }%> --%>
	 
</div>
</body>
</html>