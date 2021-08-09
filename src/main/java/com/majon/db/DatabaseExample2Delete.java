package com.majon.db;

import java.io.IOException;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.majon.common.MysqlService;

@WebServlet("/db/example2_delete")
public class DatabaseExample2Delete extends HttpServlet {
	
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		
		response.setContentType("text/html");
		
		MysqlService mysqlService = MysqlService.getInstance();
		mysqlService.connect();
		
		String id = request.getParameter("id");
		
		String deleteQuery = "DELETE FROM `bookmark` WHERE `id`=" + id;
		
		mysqlService.update(deleteQuery);
		
		response.sendRedirect("/db/example2.jsp");

		
	}

}
