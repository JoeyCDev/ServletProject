package com.majon.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/servlet/example7")
public class ServletExample7 extends HttpServlet{
	
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html");
		
		PrintWriter out = response.getWriter();
		
		String address = request.getParameter("address");
		String cardName = request.getParameter("card_name");
		int price = Integer.parseInt(request.getParameter("price"));
		
		out.println("<html><head><title>주문</title></head>");
		out.println("<body>");

		if(!address.contains("서울시")){
			out.println("<h2>배달 불가 지역입니다</h2>");
			out.println("</body></html>");
		}else if(cardName.equals("신한카드")){
			out.println("<h2>결제 불가 카드 입니다.</h2>");
			out.println("</body></html>");
		}else {
			out.println("<h2>" + address + " 배달 준비중</h2>");
			out.println("<hr>");
			out.println("결제금액 : " + price + "원");
			out.println("</body></html>");

		}
		
	}

}
