package service;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.MemberDao;
import model.Member;

public class Update implements CommandProcess {

	public String requestPro(HttpServletRequest request, HttpServletResponse response) {
		//		member.setMnum(Integer.parseInt(request.getParameter("mnum")));
				String Name = request.getParameter("name");
//				String Id = request.getParameter("id");
				String Pass = request.getParameter("pass");
				String Nic = request.getParameter("nic");
//				String Gender = request.getParameter("gender");
				String Pnum = request.getParameter("pnum");
				String Addr = request.getParameter("addr");
		//		member.setPoint(request.getParameter("point"));
				String Email = request.getParameter("email");
			
				HttpSession session = request.getSession();
					
				Member member =new Member();
				member.setId((String)session.getAttribute("id"));
				member.setName(Name);
				member.setPass(Pass);
				member.setNic(Nic);		
				member.setPnum(Pnum);;
				member.setAddr(Addr);
				member.setEmail(Email);
					
			MemberDao md =MemberDao.getInstance();
				md.update(member);
			return "/join/update.jsp";
	}

}
