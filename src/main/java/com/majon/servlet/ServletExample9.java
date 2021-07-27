package com.majon.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/servlet/example9")
public class ServletExample9 extends HttpServlet{
	
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
		
		response.setContentType("text/html");
		
		PrintWriter out = response.getWriter();
		
		String name = request.getParameter("name");
		String resume = request.getParameter("resume"); 
		
		out.println("<html><head><title>자기소개서</title></head>");
		out.println("<body>");
		out.println("<h1>" + name + "님 지원이 완료 되었습니다.</h1>");
		out.println("<hr>");
		out.println("지원내용<br>");
		out.println(resume);
		out.println("</body></html>");
		
	}

}
