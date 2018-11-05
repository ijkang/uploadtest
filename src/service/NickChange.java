package service;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.MemberDao;

public class NickChange implements CommandProcess {

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) {
		
		int result = 0 ; 
		String nic = request.getParameter("nic");
		MemberDao md = MemberDao.getInstance();
		
		result = md.nicChange(nic);
		
		return "";
	}

}
