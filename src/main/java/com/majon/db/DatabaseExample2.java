package com.majon.db;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.majon.common.MysqlService;

@WebServlet("/db/example2_insert")
public class DatabaseExample2 extends HttpServlet{
	
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		
		response.setContentType("text/html");
				
		MysqlService mysqlService = MysqlService.getInstance();
		
		mysqlService.connect();
		
		String name = request.getParameter("webName");
		String url = request.getParameter("webUrl");
		
		String insertQuery = "INSERT INTO `bookmark` (`name`,`url`,`createdAt`,`updatedAt`) VALUE ('"+name+"','"+url+"',now(),now())";
		
		mysqlService.update(insertQuery);
		
		response.sendRedirect("/db/example2.jsp");
		
	}

}
