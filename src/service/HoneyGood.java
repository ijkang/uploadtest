package service;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.HoneyDao;

public class HoneyGood implements CommandProcess {

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) {
		int wnum = Integer.parseInt(request.getParameter("wnum"));
		String pageNum = request.getParameter("pageNum");
		HoneyDao hd = HoneyDao.getInstance();
		int result = hd.goodHit(wnum);
		request.setAttribute("pageNum", pageNum);
		request.setAttribute("result", result);
		return "honey/good.jsp";
	}

}
