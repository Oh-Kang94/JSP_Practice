package com.javalec.bbs.homecontroller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.javalec.bbs.command.BCommand;
import com.javalec.bbs.command.BContentCommand;
import com.javalec.bbs.command.BDeleteCommand;
import com.javalec.bbs.command.BListCommand;
import com.javalec.bbs.command.BModifyCommand;
import com.javalec.bbs.command.BWriteCommand;

/**
 * Servlet implementation class BFontController
 */
@WebServlet("*.do")
public class BFrontController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public BFrontController() {
		super();
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		System.out.println("doGet");
		actionDo(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		System.out.println("doPost");
		actionDo(request, response);
	}

	private void actionDo(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		System.out.println("actionDo");
		request.setCharacterEncoding("utf-8");

		String viewPage = null;
		BCommand command = null;

		String uri = request.getRequestURI();
		String conPath = request.getContextPath();

		String com = uri.substring(conPath.length());

		switch (com) {
		case ("/list.do"):
			command = new BListCommand();
			command.execute(request, response);
			viewPage = "list.jsp";
			break;
		case ("/write_view.do"):
			viewPage = "write_view.jsp";
			break;
		case ("/write.do"):
			command = new BWriteCommand();
			command.execute(request, response);
			viewPage = "list.do";
			break;
		case ("/content_view.do"):
			command = new BContentCommand();
			command.execute(request, response);
			viewPage = "content_view.jsp";
			break;
		case ("/modify.do"):
			command = new BModifyCommand();
			command.execute(request, response);
			viewPage = "list.do";
			break;
		case ("/delete.do"):
			command = new BDeleteCommand();
			command.execute(request, response);
			viewPage = "list.do";
			break;
			
		default:
			break;
		}
		RequestDispatcher dispatcher = request.getRequestDispatcher(viewPage);
		dispatcher.forward(request, response);
	}

}
