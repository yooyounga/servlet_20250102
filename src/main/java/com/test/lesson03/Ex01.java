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

@WebServlet("/lesson03/ex01")
public class Ex01 extends HttpServlet {
	@Override
	public void doGet(HttpServletRequest req,HttpServletResponse response) throws IOException {
		
		response.setContentType("text/plain");
		
		//DB연결
		MysqlService ms=MysqlService.getInstance();
		ms.connect(); //실질적 DB연결
		
		/*
		 * //한행insert하기 String
		 * insertQuery="insert into singer(id,name,debut,agency) values(4,'박보검',2025,'박보검의 칸타빌레')"
		 * ; try { ms.update(insertQuery);
		 * 
		 * } catch (SQLException e) { e.printStackTrace(); }
		 */
		
		//DB select &출력
		PrintWriter out = response.getWriter();
		String selectQuery="select * from singer";
		try {
			ResultSet res=ms.select(selectQuery);
			while(res.next()) {//결과행이 있는 동안 수행
				out.println(res.getInt("id"));
				out.println(res.getString("name"));
				out.println(res.getString("debut"));
				out.println(res.getString("agency"));
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		//DB연결해제
		ms.disconnet();
	}
}
