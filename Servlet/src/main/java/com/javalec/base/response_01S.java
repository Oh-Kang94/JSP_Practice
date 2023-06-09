package com.javalec.base;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class response_01S
 */
@WebServlet("/response_01S")
public class response_01S extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public response_01S() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.setContentType("text/html;chaset = utf-8");
		request.setCharacterEncoding("utf-8");
		
		String sitename = request.getParameter("sitename");
		switch (sitename) {
		case "naver":
			response.sendRedirect("https://www.naver.com");
			break;
		case "daum":
			response.sendRedirect("https://www.daum.net");
			break;
		case "google":
			response.sendRedirect("https://www.google.com");
			break;

		default:
			response.sendRedirect("https://www.yahoo.com");
			break;
		}
		
	}

}
