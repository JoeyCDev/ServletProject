package com.majon.db;

import java.io.IOException;


import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.majon.common.MysqlService;
import java.sql.ResultSet;
import java.sql.SQLException;

@WebServlet("/db/example3_insert")
public class DatabaseExample3Insert extends HttpServlet{
	
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
		
		response.setContentType("text/html");
		
		int id = 0;
		String nickname = request.getParameter("nickname");
		String title = request.getParameter("title");
		String price = request.getParameter("price");
		String description = request.getParameter("description");
		String picture = request.getParameter("picture");
		
		MysqlService mysqlService = MysqlService.getInstance();
		mysqlService.connect();
		
		// nickname에 따른 아이디 가져오기
		String selectQueryForId = "SELECT * FROM `seller`;";
		ResultSet result = mysqlService.select(selectQueryForId);
		
		try {
			while(result.next()) {
				if(result.getString("nickname").equals(nickname)) {
					id = result.getInt("id");
				}
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		
;
		
		
		
		
		String insertQueryUsedGoods  = "INSERT INTO `used_goods` (`sellerId`,`title`,`price`,`description`,`picture`,`createdAt`,`updatedAt`)\r\n"
				+ "VALUE('"+id+"','"+title+"',"+price+",'"+description+"','"+picture+"',now(),now());";
		
		mysqlService.update(insertQueryUsedGoods);
		
		mysqlService.disconnect();
		
		response.sendRedirect("/db/example3/example3.jsp");

	}

}
