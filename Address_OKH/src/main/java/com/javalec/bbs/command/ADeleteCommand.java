package com.javalec.bbs.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.javalec.bbs.dao.ADao;

public class ADeleteCommand implements Acommand {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		String aId = request.getParameter("aId");
		System.out.println("aId");
		System.out.println(1);

		ADao dao = new ADao();
		dao.delete(aId);

	}

}
