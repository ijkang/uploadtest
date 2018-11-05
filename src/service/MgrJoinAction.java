package service;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.ManagerDao;
import model.Manager;

public class MgrJoinAction implements CommandProcess {

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) {
		
		String master=request.getParameter("master");
		String masterId=request.getParameter("id");
		String masterPass=request.getParameter("pass");
		ManagerDao md = ManagerDao.getInstance();
		Manager mgr = new Manager();
		mgr.setMaster(master);
		mgr.setMasterId(masterId);
		mgr.setMasterPass(masterPass);
		 int result=md.insertMgr(mgr);
		 request.setAttribute("id", masterId);
		if(result>0){ 
			request.setAttribute("msg", "운영자 가입에 성공했습니다.");
			
			System.out.println("성공");
		
		return "mgr/mgrLoginForm.jsp";
	}else {System.out.println("실패"); 
			return "main.jsp";}
	}
}
