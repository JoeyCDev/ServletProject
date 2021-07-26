package com.majon.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/servlet/example8")
public class ServletExample8 extends HttpServlet{
	
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html");
		
		PrintWriter out = response.getWriter();
		
		String keyword = request.getParameter("keyword");
		
		List<String> list = new ArrayList<>(Arrays.asList(
		        "강남역 최고 맛집 소개 합니다.", 
		        "오늘 기분 좋은 일이 있었네요.", 
		        "역시 맛집 데이트가 제일 좋네요.", 
		        "집에 가는 길에 동네 맛집 가서 안주 사갑니다.",
		        "자축 저 오늘 생일 이에요."));
		
		out.println("<html><head><title>검색기능</title></head>");
		out.println("<body>");
		
		// 수정된 repalce 이용 방법
		
		for(int i=0; i<list.size();i++) {
			if(list.get(i).contains(keyword)) {
				String newKeyword = "<b>"+keyword+"</b>";
				String newString = list.get(i).replace(keyword, newKeyword);
				out.println(newString + "<br><hr>");
			}
		}
		
		// 예전 substring 이용 방법
		
//		for(int i=0; i<list.size();i++) {
//			if(list.get(i).contains(keyword)) {
//				int position = list.get(i).indexOf(keyword);
//				out.println(list.get(i).substring(0,position) + "<b>" + list.get(i).substring(position,position+keyword.length()) + "</b>"+ 
//				list.get(i).substring(position+keyword.length())+ "<br><hr>");
//			}
//			
//		}
		
		out.println("</body></html>");
		
	}
	
		

	
		
	
}