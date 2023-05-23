package com.javalec.base;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class MulTable_01S
 */
@WebServlet("/MulTable_01S")
public class MulTable_01S extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public MulTable_01S() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		
		int inputNum = Integer.parseInt(request.getParameter("inputNum")) ;
		PrintWriter out = response.getWriter();
		out.println("<html>");
		out.println("<head><title>"+Integer.toString(inputNum)+"단-결과화면</title></head>");
		out.println("<body>");
		out.println(dan(inputNum));
		out.println("</body>");
		out.println("</html>");
		
		
	}

	private String dan(int inputNum) {
		String result ="";
		for(int i=1;i<=9;i++) {
			result = result + Integer.toString(inputNum)+"x"+Integer.toString(i)+ "="+ Integer.toString(i*inputNum)+"<br/>";
//			html에 쓸때 <br/>을 써라. "\n"은 안먹는다.
		}
		return result;
	}

}
