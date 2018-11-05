package service;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.HoneyDao;
import model.Honey;

public class HoneyBestList implements CommandProcess{

	public String requestPro(HttpServletRequest request, HttpServletResponse response) {
	
		HoneyDao hd = HoneyDao.getInstance();
	    List<Honey> list = hd.selectList();
        request.setAttribute("list", list);
		return "honey/bestHoney.jsp";
	}
}
