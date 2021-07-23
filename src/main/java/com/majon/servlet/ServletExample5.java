package com.majon.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/servlet/quiz05")
public class ServletExample5 extends HttpServlet{

	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {

		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html");

		int num = Integer.parseInt(request.getParameter("number"));

		PrintWriter out = response.getWriter();



		out.println("<html><head><title>구구단 링크</title><head>");
		out.println("<body><ul>");
		
		for(int i=1; i<=9; i++) {
			out.println("<li>");
			out.println(num + " X " + i + " = " + num*i);
			out.println("</li>");
		}
		
		out.println("</ul></body></html>");

	}
}
