package com.javalec.bbs.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.javalec.bbs.dao.ADao;
import com.javalec.bbs.dto.ADto;

public class AContentCommand implements Acommand {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		String aId = request.getParameter("aId");

		ADao dao = new ADao();
		ADto dto = dao.contentView(aId);

		request.setAttribute("content_view", dto);

	}

}
