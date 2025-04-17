package com.test.lesson03;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.test.common.MysqlService;

@WebServlet("/lesson03/insert-quiz03")
public class InsertQuiz03Servlet extends HttpServlet {
 @Override
 public void doPost(HttpServletRequest request,HttpServletResponse response) {
	 //response header 세팅 생략
	 //request parameter 
	 String title=request.getParameter("title"); 		//제목
	 String price=request.getParameter("price"); 		//가격
	 String productUrl=request.getParameter("productUrl"); 		//물건url
	 String description=request.getParameter("description"); 	//물건설명
	 String sellerId=request.getParameter("sellerId"); 		//id
	 
	 //db연결
	 MysqlService ms=MysqlService.getInstance();
	 ms.connect();
	 
	 String s="insert into used_goods (sellerId,title,price,productUrl,description) "+
			  " values('"+sellerId+"','"+title+"',"+price+",'"+productUrl+"','"+description+"')";
	 try {
		ms.update(s);
	 } catch (SQLException e) {
		e.printStackTrace();
	 }
	 
	 //db연결해제
	 ms.disconnet();
	 
	 //즐겨찾기 목록화면으로 redirect
	 try {
		response.sendRedirect("/lesson03/quiz03.jsp");
	 } catch (IOException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
 }
}