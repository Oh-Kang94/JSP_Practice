package com.javalec.base;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class mart_02
 */
@WebServlet("/mart_02")
public class mart_02 extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public mart_02() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("utf-8");

		// 수량
		String num_T = request.getParameter("num");

		// 크기

		String size_T = "";
		String size = request.getParameter("size");
		if (size.equals("L")) {
			size_T = "대";
		}
		if (size.equals("M")) {
			size_T = "중";
		}
		if (size.equals("S")) {
			size_T = "소";
		}

		// 색상
		String color_T = request.getParameter("color");
		
		// file writing
		String filename = "test.txt";
		String result;
		PrintWriter writer = null;
		
		try {
			String filePath = getServletContext().getRealPath("/"+filename);
			writer = new PrintWriter(filePath);
			writer.println("수량:" +num_T);
			writer.println("크기:" +size_T);
			writer.println("색상:" +color_T);
			result = "success";
		} catch (Exception e) {
			result = "fail";
		}finally {
			try {
				writer.close();
			} catch (Exception e) {
				
				
			}
		}
		
		response.sendRedirect("mart_03.jsp?result="+result);
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
