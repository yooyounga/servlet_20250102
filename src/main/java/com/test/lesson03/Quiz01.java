package com.test.lesson03;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.test.common.MysqlService;

@WebServlet("/lesson03/quiz01")
public class Quiz01 extends HttpServlet {
	@Override
	public void doGet(HttpServletRequest req,HttpServletResponse response) throws IOException {
		response.setContentType("text/plain");
		//DB연결
		MysqlService ms=MysqlService.getInstance();
		ms.connect();
		/*
		String insertQuery="insert into review(id,storeName,menu,userName,point,review) values(29,'스시마루','스시12','박보검',4.5,'너무 알찬 구성')";
		try {
			ms.update(insertQuery);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		*/
		//쿼리실행
		PrintWriter out = response.getWriter();
		String selectQuery="select * from review order by id desc limit 10";
		try {
			ResultSet res=ms.select(selectQuery);
			int i=1;
			while(res.next()) {
				out.println(i+". 상호명:"+res.getString("storeName")+" 메뉴:"+res.getString("menu") +" 사용자:"+res.getString("userName"));
				i++;
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		//DB닫기
		ms.disconnet();
	}
}
