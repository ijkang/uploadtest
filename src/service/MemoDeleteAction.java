package service;

import java.util.Set;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.DiaryDao;

public class MemoDeleteAction implements CommandProcess {

	@Override 
	public String requestPro(HttpServletRequest request, HttpServletResponse response) {
		
		int wnum = Integer.parseInt(request.getParameter("wnum"));
		System.out.println("1");
		DiaryDao dd = DiaryDao.getInstance();
		System.out.println("2");
		int result = dd.deleteMemo(wnum);
		System.out.println("3");
		
		request.setAttribute("result", result);
		if(result>0){
		request.setAttribute("msg", "일정 삭제 성공");
			System.out.println("성공");
		}else{
			request.setAttribute("msg", "일정 삭제 실패");
			System.out.println("실패다인마");
		}
		System.out.println("4");
		return "check/memoCheck.jsp";
	}

}
