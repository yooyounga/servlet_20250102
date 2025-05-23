package com.test.lesson03;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.test.common.MysqlService;

@WebServlet("/lesson03/insert-ex02")
public class InsertEx02Servlet extends HttpServlet {
 @Override
 public void doPost(HttpServletRequest request,HttpServletResponse response) {
	 //response header 세팅 생략
	 //request parameter 
	 String name=request.getParameter("name"); 				//이름
	 String yyyymmdd=request.getParameter("yyyymmdd"); 		//생년월일
	 String email=request.getParameter("email"); 			//이메일
	 String introduce=request.getParameter("introduce"); 	//자기소개
	 
	 //db연결
	 MysqlService ms=MysqlService.getInstance();
	 ms.connect();
	 
	 String s="insert into new_user (name,yyyymmdd,email,introduce) values('"+name+"','"+yyyymmdd+"','"+email+"','"+introduce+"')";
	 try {
		ms.update(s);
	 } catch (SQLException e) {
		e.printStackTrace();
	 }
	 
	 //db연결해제
	 ms.disconnet();
	 
	 //유저목록화면으로 redirect
	 try {
		response.sendRedirect("/lesson03/ex02_user.jsp");
	 } catch (IOException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
	 
 }
}