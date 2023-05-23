package com.javalec.base;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/Sum100")
public class Sum100 extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public Sum100() {
        super();
    }
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int total =0;
		for(int i=1;i<=100;i++) {
			total+=i;
		}
		
		request.setAttribute("result",total);
		
		
		RequestDispatcher rd = request.getRequestDispatcher("Sum100.jsp");
		rd.forward(request, response);
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
