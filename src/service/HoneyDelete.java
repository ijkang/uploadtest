package service;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.HoneyDao;
import model.Honey;

public class HoneyDelete implements CommandProcess {

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) {
		
		int wnum = Integer.parseInt(request.getParameter("wnum"));
		System.out.println("wnum = "+wnum);
		String pageNum = request.getParameter("pageNum");
		HoneyDao hd = HoneyDao.getInstance();
		int result = hd.delete(wnum);
			
		request.setAttribute("control", 2);
		request.setAttribute("result", result);
		request.setAttribute("pageNum", pageNum);
		
		return "main2.jsp";
	}

}
