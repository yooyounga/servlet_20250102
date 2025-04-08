package com.test.lesson01;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/lesson01/quiz03")
public class UrlMappingQuiz03 extends HttpServlet{
	public void doGet(HttpServletRequest request,HttpServletResponse response) throws IOException{
		//한글깨짐 방지
		response.setContentType("text/html");
		response.setCharacterEncoding("utf-8");
		
		PrintWriter out=response.getWriter();
		out.print("<html><head><title>마론달뉴스</title></head><body>");
		out.println("<font size=6><b>[단독] 고양이가 야옹해</b></font><br><br>");
		
		Date now = new Date();
		SimpleDateFormat sdf=new SimpleDateFormat("yyyy/MM/dd HH:mm:ss");
		out.println("기사 입력 시간 : "+sdf.format(now)+"<br>");
		out.println(" <hr> ");
		out.println("끝");
		out.print("</body></html>");
	}
}
