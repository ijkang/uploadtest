package service;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.HoneyDao;
import model.Honey;
import model.HoneyPlus;


public class HoneyComment implements CommandProcess {

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) {
          String content2 = request.getParameter("content2");
          int wnum2 = Integer.parseInt(request.getParameter("wnum")); 
          System.out.println("content2: "+content2);
          System.out.println("wnum2: "+wnum2);
          HoneyPlus hp = new HoneyPlus();
          hp.setContent2(content2);
          hp.setWnum2(wnum2);
          HoneyDao hd = HoneyDao.getInstance();
          int result = hd.insertCmt(hp);
          request.setAttribute("wnum2", wnum2);
          request.setAttribute("control", 5);
          if(result >0) return "main2.jsp";
		else{return "honey/comment.jsp";}
	}

	
}
