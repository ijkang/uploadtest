 package service;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import dao.MemberDao;

public class JoinForm implements CommandProcess {
	public String requestPro(HttpServletRequest request, HttpServletResponse response) {
		String member = request.getParameter("member");
		
		MemberDao mb = MemberDao.getInstance();
		
		request.setAttribute("member",member);
		return "/join/joinForm.jsp";
	}
}