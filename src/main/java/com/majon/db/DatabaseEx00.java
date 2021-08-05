package com.majon.db;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/db/ex00")
public class DatabaseEx00 extends HttpServlet{
	
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		response.setContentType("text/html");
		
		try {
			DriverManager.registerDriver(new com.mysql.jdbc.Driver());
			
			String url = "jdbc:mysql://localhost:3306/majon_0608";
			String userId = "root";
			String password = "vpfkfl68";
			
			Connection connection = DriverManager.getConnection(url,userId,password);
			Statement statement = connection.createStatement();
			
			String selectQuery = "SELECT * FROM used_goods";
			
			ResultSet resultSet = statement.executeQuery(selectQuery);
			
			PrintWriter out = response.getWriter();
			while(resultSet.next()) {
				
				out.println(resultSet.getString("title"));
				out.println(resultSet.getInt("price"));
				
			}
			
		} catch (SQLException e){
			e.printStackTrace();
		}
	}

}
