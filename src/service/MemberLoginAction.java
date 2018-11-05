package service;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import dao.MemberDao;

public class MemberLoginAction implements CommandProcess {

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) {

		HttpSession session =request.getSession();
		String id = request.getParameter("id");
		String pass = request.getParameter("pass");
		MemberDao md = MemberDao.getInstance();

		String DBpass = md.selectPass(id);
		int mnum = md.selectMnum(id);
		int idCheck = md.confirmId(id);
		
		if (idCheck == 0) {
			String msg = "아이디가 존재하지 않습니다";
			request.setAttribute("msg", msg);
			return "check/returnMainPage.jsp";
		}
		if (!pass.equals(DBpass)) {
			String msg = "비밀번호가 틀렸습니다.";
			request.setAttribute("msg", msg);
			return "check/returnMainPage.jsp";
		} else {
			
			session.setAttribute("id", id);
			session.setAttribute("mnum", mnum);
			
			return "main2.jsp";
		}
	}
}
