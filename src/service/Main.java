package service;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.*;

import dao.MemberDao;
import service.CommandProcess;

public class Main implements CommandProcess{
	public String requestPro(HttpServletRequest request,HttpServletResponse response){
		
		HttpSession session =request.getSession();
		String id =(String)session.getAttribute("id");
		MemberDao md =MemberDao.getInstance();
		Member member =md.select(id);
		

		return "/main2.jsp";
	}
}
