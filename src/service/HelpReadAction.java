package service;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.HelperDao;

public class HelpReadAction implements CommandProcess {

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) {
		int wnum  = Integer.parseInt(request.getParameter("wnum"));
		System.out.println("W넘버는말이여 ..."+wnum);
		
		HelperDao hd = HelperDao.getInstance();
		int result = hd.HelpRead(wnum);

		request.setAttribute("result", result);
		request.setAttribute("control", 3);
		return "main2.jsp";
	}
}
