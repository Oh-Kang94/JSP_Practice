package com.javalec.bbs.command;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.javalec.bbs.dao.BDao;
import com.javalec.bbs.dto.BDto;

public class BListCommand implements BCommand {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		//	DAO
		BDao dao = new BDao();
		//	DTO
		ArrayList<BDto> dtos = dao.list();
		request.setAttribute("list", dtos);
	}

}
