package com.test.lesson01;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/lesson01/quiz05")
public class UrlMappingQuiz05 extends HttpServlet{
	public void doGet(HttpServletRequest request,HttpServletResponse response) throws IOException {
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html");
		PrintWriter out=response.getWriter();
		
		/*if(request.getParameter("number")!=null && !request.getParameter("number").isEmpty()) {
			int num=Integer.parseInt(request.getParameter("number"));
			for(int i=1;i<10;i++) {
				out.println(request.getParameter("number")+"*"+i +"="+(num*i)+"</br>");
			}
		}
		else {*/
			out.print("<html><head><title>구구단</title></head><body>");
			out.println("<font size=5><b>구구단</b></font><br><br>");
			for(int i=2;i<10;i++) {
				out.println("<a href='http://localhost/lesson01/quiz03?number="+i+"'>"+i+"단</a></br>");
			}
			
			if(request.getParameter("number")!=null && !request.getParameter("number").isEmpty()) {
				out.println("<hr>");
				out.print("<ul>");	
				int num=Integer.parseInt(request.getParameter("number"));
				for(int i=1;i<10;i++) {
					out.println("<li>"+request.getParameter("number")+"*"+i +"="+(num*i)+"</li>");
				}
				out.print("</ul>");	
			}
			out.print("</body></html>");
		//}
	}
}
