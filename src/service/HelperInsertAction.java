package service;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.websocket.Session;

import dao.HelperDao;
import dao.MemberDao;
import model.Helper;

public class HelperInsertAction implements CommandProcess {

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) {
		
		int mnum=Integer.parseInt(request.getParameter("mnum"));
		String context=request.getParameter("context");
		
		HelperDao hd = HelperDao.getInstance();
		MemberDao md = MemberDao.getInstance();
		int memberCount = md.count(); 	
		int snum;
		
		do{
		snum = (int)(Math.random()*memberCount)+1;
		}while(snum==mnum);
	
		Helper hp = new Helper(); 
		hp.setContext(context);
		hp.setMnum(mnum);
		hp.setSnum(snum);

		int result = hd.insert(hp);
		
		request.setAttribute("mnum", mnum);
		request.setAttribute("result", result);
		request.setAttribute("control",3 );
		
		return "main2.jsp";
	}

}
