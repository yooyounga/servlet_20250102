package com.test.lesson03;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

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
	 //db연결해제
	 //유저목록화면으로 redirect
 }
}
