package com.javalec.bbs.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.javalec.bbs.dao.ADao;

public class AModifyCommand implements Acommand {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		String aId = request.getParameter("aId");
		String aName = request.getParameter("aName");
		String aPhone = request.getParameter("aPhone");
		String aAddress = request.getParameter("aAddress");
		String aEmail = request.getParameter("aEmail");
		String aRelation = request.getParameter("aRelation");

		// DAO
		ADao dao = new ADao();
		dao.modify(aId, aName, aPhone, aAddress, aEmail, aRelation);

	}

}
