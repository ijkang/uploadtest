package service;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.DiaryDao;
import dao.MemberDao;

public class MemoViewAction implements CommandProcess {

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) {
		String curYear= request.getParameter("curYear");
		String curMonth = request.getParameter("curMonth");
		String curDay = request.getParameter("curDay");
		
		String memoDate=null;
		
		if(curYear.length()+curMonth.length()==6){
			memoDate = curYear+curMonth;
		}else{
			memoDate = curYear+"0"+curMonth;
		}
		
		if(curDay.length()==1){
			memoDate= memoDate+"0"+curDay;
		}else{
			memoDate=memoDate+curDay;
		}
	
		System.out.println("memoDate : "+ memoDate);
		int mnum= Integer.parseInt(request.getParameter("mnum"));
		System.out.println("mnum :"+mnum);
		
		DiaryDao dd = DiaryDao.getInstance();
		
		List<model.Diary> list = dd.memoView(mnum,memoDate); 
		request.setAttribute("list", list);
		return "diary/memoView.jsp";
	}

}
