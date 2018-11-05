package service;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.ManagerDao;
import model.Manager;

public class MgrLoginAction implements CommandProcess {

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) {
		
		String id = request.getParameter("id");
		String password = request.getParameter("password");
		System.out.print(id+""+password);
		ManagerDao md = ManagerDao.getInstance();
		String DBpass = md.selectPass(id);
		int idCheck = md.confirmId(id);
		if(idCheck==0){
			String msg= "ID 가 존재하지 않습니다.";
			request.setAttribute("msg", msg);
			return "check/returnPage.jsp";
		}
		if(!password.equals(DBpass)){
			String msg= "비밀번호가 틀렸습니다.";
			request.setAttribute("msg", msg);
			return "check/returnPage.jsp";
		}else{
			return "mgr/mgrHomego.jsp";
		}
	}
}
