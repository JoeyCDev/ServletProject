package com.majon.db;

import java.io.IOException;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.majon.common.MysqlService;

@WebServlet("/db/example3_insert")
public class DatabaseExample3Insert extends HttpServlet{
	
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
		
		response.setContentType("text/html");
		
		String nickname = request.getParameter("nickname");
		String title = request.getParameter("title");
		String price = request.getParameter("price");
		String description = request.getParameter("description");
		String picture = request.getParameter("picture");
		int id = 0;
		
		MysqlService mysqlService = MysqlService.getInstance();
		mysqlService.connect();
		
;
		
		switch(nickname) {
			case "마로비": id =1;
			break;
			case "아메리카노": id =2;
			break;
			case "최준": id =3;
			break;
			case "빠다": id =4;
			break;
			case "하구루": id =5;
			break;
			case "다팔아": id =6;
			break;
		}
		
		
		String insertQueryUsedGoods  = "INSERT INTO `used_goods` (`sellerId`,`title`,`price`,`description`,`picture`,`createdAt`,`updatedAt`)\r\n"
				+ "VALUE('"+id+"','"+title+"',"+price+",'"+description+"','"+picture+"',now(),now());";
		
		mysqlService.update(insertQueryUsedGoods);
		
		mysqlService.disconnect();
		
		response.sendRedirect("/db/example3/example3.jsp");

	}

}
