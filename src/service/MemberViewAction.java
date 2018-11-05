package service;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.MemberDao;
import model.Member;

public class MemberViewAction implements CommandProcess {

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) {
		
		String mnum=request.getParameter("mnum");
		int pageNum = Integer.parseInt(request.getParameter("pageNum"));
		
		List<Member> list = null;
		
		MemberDao md = MemberDao.getInstance();
		
		list = md.memberView(mnum);
		
		request.setAttribute("list", list);
		request.setAttribute("pageNum", pageNum);
		
		return "mgr/memberView.jsp";
	}

}
