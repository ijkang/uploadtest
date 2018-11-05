package service;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.DiaryDao;

public class DiaryEventPage implements CommandProcess {

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) {
		
		int mnum = Integer.parseInt(request.getParameter("mnum"));
		System.out.println(mnum);
		DiaryDao dd = DiaryDao.getInstance();
		List<model.Diary> list = dd.ddayMemo(mnum);
		request.setAttribute("list", list);
		return "diary/eventPage.jsp";
	}

}
