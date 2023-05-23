package com.javalec.base;

import java.io.BufferedReader;
import java.io.FileReader;
import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class mart_04
 */
@WebServlet("/mart_04")
public class mart_04 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public mart_04() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.setContentType("text/html;charset=utf-8");
		request.setCharacterEncoding("utf-8");
		
		PrintWriter out = response.getWriter();
		
		BufferedReader reader = null;
		try {
			String filePath = getServletContext().getRealPath("/test.txt");
			reader = new BufferedReader(new FileReader(filePath));
			
			while (true) {
				String str = reader.readLine();
				if(str==null) break;
				out.println(str+"<br/>");
				
			}
		} catch (Exception e) {
			out.println("파일에 문제가 발생했습니다.");
		}finally {
			try {
				reader.close();
			} catch (Exception e) {

			}
		}
	}

}
