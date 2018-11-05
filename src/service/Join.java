package service;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.MemberDao;
import model.Member;

public class Join implements CommandProcess{
	public String requestPro(HttpServletRequest request, HttpServletResponse response) {
		Member member = new Member();
//		member.setMnum(Integer.parseInt(request.getParameter("mnum")));
		member.setName(request.getParameter("name"));
		member.setId(request.getParameter("id"));
		member.setPass(request.getParameter("pass"));
		member.setNic(request.getParameter("nic"));
		member.setGender(request.getParameter("gender"));
		member.setPnum(request.getParameter("pnum"));
		member.setAddr(request.getParameter("addr"));
//		member.setPoint(request.getParameter("point"));
		member.setEmail(request.getParameter("email"));
		MemberDao mb = MemberDao.getInstance();
		int result = mb.insert(member);
		if (result == 1 ){
			System.out.println("회원가입 성공");
			HttpSession session = request.getSession();
			session.setAttribute("id", member.getId());
			session.setAttribute("mnum", member.getMnum());
			request.setAttribute("id", member.getId());
			return "/join/joinForm.jsp";
		} else{
			System.out.println("회원가입 실패");
			request.setAttribute("result", result);
			
			return "/join/join.jsp";
		}
	}
}