package service;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.ManagerDao;

public class MgrIdCheckAction implements CommandProcess {

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) {
		int result = 0;
		String id = request.getParameter("id");
		ManagerDao md = ManagerDao.getInstance();
		result = md.confirmId(id);
		request.setAttribute("result", result);		
		request.setAttribute("id", id);

		if(result>0){
			request.setAttribute("msg", "아이디가 중복입니다.");
			return "mgr/confirm.jsp" ;
		}else{
			request.setAttribute("msg", "사용 가능한 아이디입니다.");
			return "mgr/confirm.jsp" ;
		}
	}
}
