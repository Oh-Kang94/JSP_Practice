package com.javalec.base;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Userinfo_insert_01S
 */
@WebServlet("/Userinfo_insert_01S")
public class Userinfo_insert_01S extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Userinfo_insert_01S() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		
		String name = request.getParameter("name");
		String id = request.getParameter("id");
		String pw = request.getParameter("password");
		String gender = request.getParameter("gender");
		if(gender.equals("male")) {
			gender = "남자";
		}else {
			gender = "여자";
		}
		
		String inotice = request.getParameter("inotice");
		String pnotice = request.getParameter("pnotice");
		String dnotice = request.getParameter("dnotice");
		String inoticeR = notice2Korean(inotice);
		String pnoticeR = notice2Korean(pnotice);
		String dnoticeR = notice2Korean(dnotice);
		
		String job = request.getParameter("job");
		
		// ----
		PrintWriter out = response.getWriter();
		out.println("<html>");
		out.println("<head><title>개인정보 입력-결과화면</title></head>");
		out.println("<body>");
		out.println("이름:" +name + "<br/>");
		out.println("아이디:" +id + "<br/>");
		out.println("패스워드:" +pw + "<br/>");
		out.println("성별:" +gender + "<br/>");
		out.println("공지메일:" +inoticeR + "<br/>");
		out.println("광고메일:" +pnoticeR + "<br/>");
		out.println("배송확인메일:" +dnoticeR + "<br/>");
		out.println("직업:" +job + "<br/>");
		out.println("=======================<br/>");
		out.println("저장되었습니다."+ "<br/>");
		out.println("</body>");
		out.println("</html>");
		
	}

	private String notice2Korean(String notice) {
//		if(notice==null) {
//			return "받지 않음";
//		}else {
//			return "받음";
//		}
		// 삼항 연산자 활용
		return (notice ==null) ? "받지않음" : "받음";
	}
}
