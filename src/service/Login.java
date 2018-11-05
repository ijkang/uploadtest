package service;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.MemberDao;
import model.Member;
import service.CommandProcess;

public class Login implements CommandProcess{
	public String requestPro(HttpServletRequest request,
			HttpServletResponse response){
		
			int result=0;
			
			String id =request.getParameter("id");
			String pass =request.getParameter("pass");
			
			System.out.println("id :"+id);
			System.out.println("pass :"+pass);
			
			MemberDao md =MemberDao.getInstance();
			Member member =new Member();
			member.setId(id);
			member.setPass(pass);
			result =md.check(member);
			request.setAttribute("result", result);
		
			if(result==1){
				HttpSession session=request.getSession();
				session.setAttribute("id", member.getId());
				session.setAttribute("pass", member.getPass());

				return "/menu/login.jsp";
			} else{
				
				return "/menu/login.jsp";
			}
				
		}
}
