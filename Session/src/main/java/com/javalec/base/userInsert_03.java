package com.javalec.base;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/userInsert_03")
public class userInsert_03 extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public userInsert_03() {
		super();
	}
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");

		String agree = request.getParameter("agree");
		
		if (agree.equals("agree")) {
			response.sendRedirect("userInsert_04.jsp");
		} else {
			request.getSession().invalidate();
			response.sendRedirect("userInsert_01.jsp");
			
		}

	}

}
