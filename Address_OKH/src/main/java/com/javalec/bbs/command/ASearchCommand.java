package com.javalec.bbs.command;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.javalec.bbs.dao.ADao;
import com.javalec.bbs.dto.ADto;

public class ASearchCommand implements Acommand {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		String queryName ="";
		String queryContent ="";
		queryName = request.getParameter("query");
		System.out.println(queryName);
		queryContent = request.getParameter("content");
		System.out.println(queryContent);
		if(queryName ==null){/*첫 화면인 경우  */
			queryName ="address";
			queryContent ="";
		}
		
		// DAO
		ADao dao = new ADao();
		
		//	DTO
		ArrayList<ADto> dtos = dao.search(queryName, queryContent);
		request.setAttribute("list", dtos);

	}

}
