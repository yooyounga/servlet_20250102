package com.test.lesson01;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class UrlMappingEx01 extends HttpServlet {
	@Override
	public void doGet(HttpServletRequest request,HttpServletResponse response) throws IOException {
		//한글깨짐 방지
		response.setContentType("text/plain");
		response.setCharacterEncoding("utf-8");
		
		PrintWriter out=response.getWriter();
		out.println("안녕하세요!");
		
		Date now = new Date();
		out.println(now);
		
		//formatter
		//2025-04-03 오후 19:28:30
		//SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd a HH:mm:ss");
		//out.println(sdf.format(now));
		
		//오늘의 날짜는 20XX년 X월 XX일
		SimpleDateFormat sdf=new SimpleDateFormat("yyyy년 MM월 dd일");
		out.println("오늘의 날짜는 "+sdf.format(now));
		
		//현재 시간은 14시 52분 43초 입니다.
		SimpleDateFormat sdf2=new SimpleDateFormat("HH시 mm분 ss초");
		out.println("현재 시간은 "+sdf2.format(now)+"입니다");
	}
}
