package com.javalec.bbs.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.javalec.bbs.command.AContentCommand;
import com.javalec.bbs.command.ADeleteCommand;
import com.javalec.bbs.command.AInsertCommand;
import com.javalec.bbs.command.AModifyCommand;
import com.javalec.bbs.command.ASearchCommand;
import com.javalec.bbs.command.Acommand;

/**
 * Servlet implementation class AFrontController
 */
@WebServlet("*.do")
public class AFrontController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public AFrontController() {
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
		System.out.println("doGet");
		actionDo(request, response);
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

	private void actionDo(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		System.out.println("actionDo");
		request.setCharacterEncoding("utf-8");

		String viewPage = null;
		Acommand command = null;

		String uri = request.getRequestURI();
		String conPath = request.getContextPath();

		String com = uri.substring(conPath.length());

		switch (com) {
		case ("/search.do"):
			command = new ASearchCommand();
			command.execute(request, response);
			viewPage = "list_view.jsp";
			break;
		case ("/list_content.do"):
			command = new AContentCommand();
			command.execute(request, response);
			viewPage = "list_content.jsp";
			break;
		case ("/insert.do"):
			command = new AInsertCommand();
			command.execute(request, response);
			viewPage = "search.do";
			break;
		case ("/modify.do"):
			command = new AModifyCommand();
			command.execute(request, response);
			viewPage = "search.do";
			break;
		case ("/delete.do"):
			System.out.println(213324);
			command = new ADeleteCommand();
			command.execute(request, response);
			viewPage = "search.do";
			break;

		default:
			break;
		}
		RequestDispatcher dispatcher = request.getRequestDispatcher(viewPage);
		dispatcher.forward(request, response);
	}

}
