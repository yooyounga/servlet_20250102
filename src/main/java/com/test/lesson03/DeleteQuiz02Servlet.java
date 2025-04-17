package com.test.lesson03;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.test.common.MysqlService;

@WebServlet("/lesson03/delete-quiz02")
public class DeleteQuiz02Servlet extends HttpServlet {
 @Override
 public void doGet(HttpServletRequest request,HttpServletResponse response) {
	 //response header 세팅 생략
	 //request parameter 
	 int id=0;
	 if(request.getParameter("id")!=null) {
		 id=Integer.parseInt(request.getParameter("id")); 		//id
	 }
	 //db연결
	 MysqlService ms=MysqlService.getInstance();
	 ms.connect();
	 
	 String s="delete from favorites where id="+id;
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