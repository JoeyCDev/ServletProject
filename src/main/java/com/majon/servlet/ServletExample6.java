package com.majon.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/servlet/quiz06")
public class ServletExample6 extends HttpServlet{
	
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		
		response.setCharacterEncoding("utf-8");
		response.setContentType("application/json");
		
		int num1 = Integer.parseInt(request.getParameter("number1"));
		int num2 = Integer.parseInt(request.getParameter("number2"));
		
		int sum = num1 + num2;
		int subtract = num1 - num2;
		int multi = num1 * num2;
		int divi = num1/num2;
		
		PrintWriter out = response.getWriter();
		out.println("{\"addition\": " + sum + ", \"subtraction\": " + subtract + ", \"multiplication\": " + multi + ", \"division\":" + divi + "}");
		
	}

}
