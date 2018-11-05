package service;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.HoneyDao;
import model.Honey;

public class HoneyCheck implements CommandProcess {

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) {
		int wnum = Integer.parseInt(request.getParameter("wnum"));
		String pageNum =request.getParameter("pageNum");
		
		HoneyDao hd = HoneyDao.getInstance();
		Honey hn = hd.select(wnum);
		String dbPass = hn.getPass();
		
		request.setAttribute("wnum", wnum);
		request.setAttribute("pageNum", pageNum);
		request.setAttribute("dbPass", dbPass);
		
		return "honey/pwCheck.jsp";
	}

}
