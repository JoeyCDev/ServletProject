package com.majon.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/servlet/example10")
public class ServletExample10 extends HttpServlet{

	private final Map<String, String> userMap =  new HashMap<String, String>() {
	    {
	        put("id", "hagulu");
	        put("password", "asdf");
	        put("name", "김인규");
	    }
	};	
	
	String mapId = userMap.get("id");
	String mapPwd = userMap.get("password");
	String mapName = userMap.get("name");
	
	
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
		
			response.setContentType("text/html");
		
			PrintWriter out = response.getWriter();
			
			String id = request.getParameter("id");
			String pwd = request.getParameter("pwd");
			
			out.println("<html><head><title>validation</title></head>");
			out.println("<body>");
			
			if(!mapId.equals(id)) {
				out.println("<h1>id가 일치하지 않습니다</h1>");
			}
			else if(!mapPwd.equals(pwd)) {
				out.println("<h1>password가 일치하지 않습니다.</h1>");
			}
			else {
			out.println("<h1>" + mapName+ "님 환영 합니다.</h1>");
			
			}
			
			out.println("</body></html>");
			
			
			
		
		
	}

}

