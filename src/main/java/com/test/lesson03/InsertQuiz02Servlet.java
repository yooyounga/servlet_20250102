package com.test.lesson03;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.test.common.MysqlService;

@WebServlet("/lesson03/insert-quiz02")
public class InsertQuiz02Servlet extends HttpServlet {
 @Override
 public void doPost(HttpServletRequest request,HttpServletResponse response) {
	 //response header 세팅 생략
	 //request parameter 
	 String name=request.getParameter("name"); 		//이름
	 String url=request.getParameter("url"); 		//주소
	 
	 //db연결
	 MysqlService ms=MysqlService.getInstance();
	 ms.connect();
	 
	 String s="insert into favorites (name,url) values('"+name+"','"+url+"')";
	 try {
		ms.update(s);
	 } catch (SQLException e) {
		e.printStackTrace();
	 }
	 
	 //db연결해제
	 ms.disconnet();
	 
	 //즐겨찾기 목록화면으로 redirect
	 try {
		response.sendRedirect("/lesson03/quiz02.jsp");
	 } catch (IOException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
	 
 }
}