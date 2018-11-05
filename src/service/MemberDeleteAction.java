package service;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.MemberDao;

public class MemberDeleteAction implements CommandProcess {

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) {
		
		System.out.println("1");
		int result=0;
		int pageNum = Integer.parseInt(request.getParameter("pageNum"));
		int mnum = Integer.parseInt(request.getParameter("mnum"));
		
		MemberDao md = MemberDao.getInstance();
		System.out.println("2");
		result=md.deleteMember(mnum);
		
		if (result>0){
			
			request.setAttribute("result", result);
			return "memberList.do?pageNum="+pageNum;
		}else{
			request.setAttribute("msg", "여긴 멤버딜리트");
			return "memberView.do?mnum="+mnum+"&pageNum="+pageNum;	
			
		}
	}
}
