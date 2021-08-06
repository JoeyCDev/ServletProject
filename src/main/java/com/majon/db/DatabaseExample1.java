package com.majon.db;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.majon.common.MysqlService;

@WebServlet("/db/example1")
public class DatabaseExample1 extends HttpServlet {
	
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		response.setContentType("text/plain");
		PrintWriter out = response.getWriter();
		
		MysqlService mysqlService = MysqlService.getInstance();
		
		mysqlService.connect();
		
		// INSERT query
		
		String insertQuery = "INSERT INTO `real_estate`\r\n"
				+ "(`realtorId`,`address`,`area`,`type`,`price`,`rentPrice`,`createdAt`,`updatedAt`)\r\n"
				+ "VALUE(3, '헤라펠리스 101동 5305호', 350, '매매', 1500000, null, now(),now());";
		
		mysqlService.update(insertQuery);
		
		// SELECT query
		
		String selectQuery = "SELECT `address`, `area`, `type` FROM `real_estate`\r\n"
				+ "ORDER BY `id` DESC LIMIT 10;";
		
		ResultSet result = mysqlService.select(selectQuery);
		
		try {
			while(result.next()) {
				out.println("매물 주소 : "  + result.getString("address") + ", 면적 : " + result.getInt("area") + ", 타입 : " + result.getString("type"));
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}

}
