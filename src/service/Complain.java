package service;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.HoneyDao;
import model.Honey;

public class Complain implements CommandProcess {

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) {
		
		int hazard = Integer.parseInt(request.getParameter("hazard"));
		String title = request.getParameter("title");
		String content = request.getParameter("content");
		System.out.println("hazard = "+hazard);
		System.out.println("title = "+title);
		System.out.println("content = "+content);
		
		Honey hn = new Honey();
		hn.setHazard(hazard);
		hn.setTitle(title);
		hn.setContent(content);
		
		HoneyDao hd = HoneyDao.getInstance();
		
		 int result = hd.insert2(hn);
		 System.out.println("result = "+result);
		 
	     request.setAttribute("result", result);	 
	 
		 if(result > 0){
			 return "honey/compCommit.jsp"; 
			 
		 }else{
			 return "complain.jsp";
		 }
	}
}
