package service;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.HoneyDao;
import model.Honey;

public class HoneyView implements CommandProcess {

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) {
	     int wnum = Integer.parseInt(request.getParameter("wnum"));
	     String regip = request.getRemoteAddr();
	     HoneyDao hd = HoneyDao.getInstance();
	     Honey hn = hd.selectWnum(wnum);
	  //   hd.updateHit(wnum);
	     hd.readUpdate(wnum);
	     if(!regip.equals(hn.getRegip())){
				int click = hn.getClick();
				System.out.println("click1 = "+click);
				hn.setClick(click++);
				System.out.println("click2 = "+click);
				hd.setHoneyClick(click,wnum);
				
			}
	      
	     request.setAttribute("wnum", wnum);
	     request.setAttribute("hn", hn);
		
		return "honey/honeyView.jsp";
	}

}
