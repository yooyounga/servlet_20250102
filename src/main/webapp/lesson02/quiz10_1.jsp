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
<title>Melong</title>
</head>
<body>
<form method="post" action="/lesson02/quiz10_1.jsp">
<%
// 아티스트 정보 

    Map<String, Object> artistInfo = new HashMap<>();
    artistInfo.put("name", "아이유");
    artistInfo.put("debute", 2008);
    artistInfo.put("agency", "EDAM엔터테인먼트");
    artistInfo.put("photo", "http://image.genie.co.kr/Y/IMAGE/IMG_ALBUM/081/867/444/81867444_1616662460652_1_600x600.JPG");

	// 아이유 노래 리스트 
    List<Map<String, Object>> musicList = new ArrayList<>();

    Map<String, Object> musicInfo = new HashMap<>();
    musicInfo.put("id", 1);
    musicInfo.put("title", "팔레트");
    musicInfo.put("album", "Palette");
    musicInfo.put("singer", "아이유");
    musicInfo.put("thumbnail", "https://upload.wikimedia.org/wikipedia/ko/b/b6/IU_Palette_final.jpg");
    musicInfo.put("time", 217);
    musicInfo.put("composer", "아이유");
    musicInfo.put("lyricist", "아이유");
    musicList.add(musicInfo);

    musicInfo = new HashMap<>();
    musicInfo.put("id", 2);
    musicInfo.put("title", "좋은날");
    musicInfo.put("album", "Real");
    musicInfo.put("singer", "아이유");
    musicInfo.put("thumbnail", "https://upload.wikimedia.org/wikipedia/ko/3/3c/IU_-_Real.jpg");
    musicInfo.put("time", 233);
    musicInfo.put("composer", "이민수");
    musicInfo.put("lyricist", "김이나");
    musicList.add(musicInfo);

    musicInfo = new HashMap<>();
    musicInfo.put("id", 3);
    musicInfo.put("title", "밤편지");
    musicInfo.put("album", "palette");
    musicInfo.put("singer", "아이유");
    musicInfo.put("thumbnail", "https://upload.wikimedia.org/wikipedia/ko/b/b6/IU_Palette_final.jpg");
    musicInfo.put("time", 253);
    musicInfo.put("composer", "제휘,김희원");
    musicInfo.put("lyricist", "아이유");
    musicList.add(musicInfo);

    musicInfo = new HashMap<>();
    musicInfo.put("id", 4);
    musicInfo.put("title", "삐삐");
    musicInfo.put("album", "삐삐");
    musicInfo.put("singer", "아이유");
    musicInfo.put("thumbnail", "https://image.genie.co.kr/Y/IMAGE/IMG_ALBUM/081/111/535/81111535_1539157728291_1_600x600.JPG");
    musicInfo.put("time", 194);
    musicInfo.put("composer", "이종훈");
    musicInfo.put("lyricist", "아이유");
    musicList.add(musicInfo);

    musicInfo = new HashMap<>();
    musicInfo.put("id", 5);
    musicInfo.put("title", "스물셋");
    musicInfo.put("album", "CHAT-SHIRE");
    musicInfo.put("singer", "아이유");
    musicInfo.put("thumbnail", "https://image.genie.co.kr/Y/IMAGE/IMG_ALBUM/080/724/877/80724877_1445520704274_1_600x600.JPG");
    musicInfo.put("time", 194);
    musicInfo.put("composer", "아이유,이종훈,이채규");
    musicInfo.put("lyricist", "아이유");
    musicList.add(musicInfo);

    musicInfo = new HashMap<>();
    musicInfo.put("id", 6);
    musicInfo.put("title", "Blueming");
    musicInfo.put("album", "Love poem");
    musicInfo.put("singer", "아이유");
    musicInfo.put("thumbnail", "https://upload.wikimedia.org/wikipedia/ko/6/65/%EC%95%84%EC%9D%B4%EC%9C%A0_-_Love_poem.jpg");
    musicInfo.put("time", 217);
    musicInfo.put("composer", "아이유,이종훈,이채규");
    musicInfo.put("lyricist", "아이유");
    musicList.add(musicInfo);
    
    String searchbox=request.getParameter("searchbox");
    if(searchbox==null)
    	searchbox="";
    
    List<Map<String, Object>> albumList = new ArrayList<>();
    Map<String, Object> albumInfo = new HashMap<>();
    int bNext=0;
    for(Map<String, Object> item : musicList){
    	bNext=0;
    	if(!searchbox.isEmpty()){
    		if(searchbox.equalsIgnoreCase(item.get("title").toString()) || searchbox.equalsIgnoreCase(item.get("singer").toString())  
    		|| searchbox.equalsIgnoreCase(item.get("album").toString()) || item.get("composer").toString().contains(searchbox) 
    		|| searchbox.equalsIgnoreCase(item.get("lyricist").toString())){
    			bNext=1;
    		}
    	}
    	else if(request.getParameter("search").equals(item.get("id").toString())){
    		bNext=1;
    	}
    	if(bNext==1){
    		int minuteSet = (int)item.get("time") / 60;
    		int secondSet = (int)item.get("time") % 60;
    		
    		albumInfo = new HashMap<>();
    		//albumInfo =item;
	    	albumInfo.put("thumbnail", item.get("thumbnail"));
			albumInfo.put("title", item.get("title"));
			albumInfo.put("singer", item.get("singer"));
			albumInfo.put("album", item.get("album"));
			albumInfo.put("time", minuteSet +":"+secondSet);
			albumInfo.put("composer", item.get("composer"));
			albumInfo.put("lyricist", item.get("lyricist"));
			albumList.add(albumInfo);
    	}
    }
%>
<div id='wrap' class="container ">
	<header class='text-warning d-flex justify-content-center mt-3'>
		<div class="col-2">
 			<h3 class="text-success">Melong</h3>
 		</div>
		<div class="input-group mb-3 ml-5">
		  	<input type="text" name="searchbox" class="form-control col-6" value="<%=searchbox%>">
		  	<div class="input-group-append">
		    	<!-- <button class="btn btn-secondary" type="button">검색</button> -->
		    	<input type='submit' value='검색' class="btn btn-secondary"></input>
		  	</div>
		</div>
	</header>
	<nav class="contents mt-3">
		<ul class="nav nav-fill w-100">
 				<li class="nav-item"><a href="#" class="nav-link text-dark font-weight-bold">멜롱차트</a></li>
 				<li class="nav-item"><a href="#" class="nav-link text-dark font-weight-bold">최신음악</a></li>
 				<li class="nav-item"><a href="#" class="nav-link text-dark font-weight-bold">장르음악</a></li>
 				<li class="nav-item"><a href="#" class="nav-link text-dark font-weight-bold">멜롱DJ</a></li>
 				<li class="nav-item"><a href="#" class="nav-link text-dark font-weight-bold">뮤직어워드</a></li>
 			</ul>
	 </nav>	
	 <%for(Map<String, Object> album : albumList){ %>
		 <h2 class='mt-3'>곡 정보</h2>
		 <section class='contents border border-success'>
			<div class="d-flex p-3">
				<div class="mr-3">
					<img src='<%= album.get("thumbnail")%>' style='width:150px'>
				</div>
				<div class="col">
					<h2><%= album.get("title")%></h2>
					<h4 class='text-success'><%= album.get("singer")%></h4>
					<div class='d-flex text-secondary mt-3'>
						<div>
							<div>앨범</div>
							<div>재생시간</div>
							<div>작곡가</div>
							<div>작사가</div>
						</div>
						<div class='ml-3'>
							<div><%= album.get("album")%></div>
							<div><%= album.get("time")%></div>
							<div><%= album.get("composer")%></div>
							<div><%= album.get("lyricist")%></div>
						</div>
					</div>
				</div>
			</div>
		 </section>
		 <h2 class='mt-3'>가사</h2>
		 <hr>
		 <div>가사정보 없음</div>
	<%} %>
	<footer>
		<hr>
		<small class="text-secondary">Copyright 2025. melong All Rights Reserved.</small>
	</footer>
</div>
</form>
</body>
</html>