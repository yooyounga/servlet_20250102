package com.test.lesson01;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/lesson01/quiz04")
public class UrlMappingQuiz04 extends HttpServlet{
	@Override
	public void doGet(HttpServletRequest request,HttpServletResponse response) throws IOException {
		//한글깨짐 방지
		response.setContentType("text/html");
		response.setCharacterEncoding("utf-8");
				
		PrintWriter out=response.getWriter();
		out.print("<html><head><title>출력</title></head><body>");
		out.print("<ul>");
		for(int i=1;i<=30;i++) {
			out.println("<li>"+i+"번째 리스트</li>");
		}
		out.print("</ul></body></html>");
	}
}
