package service;


import java.util.Calendar;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.DiaryDao;
import oracle.net.aso.e;


public class DiaryPageMoveAction implements CommandProcess {
	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) {
		
	  Calendar c = Calendar.getInstance(); 

	  int monthMove	= Integer.parseInt(request.getParameter("monthMove"));
	  c.add(c.MONTH, monthMove); // 다음달
	  
	  int curYear =c.get(Calendar.YEAR);
	  int curMonth = c.get(Calendar.MONTH)+1; 
	  int curDay = c.get(Calendar.DAY_OF_MONTH); 
	  int firstDayOfWeek = c.get(Calendar.DAY_OF_WEEK); 
	  int lastDayOfMonth = c.getActualMaximum(Calendar.DAY_OF_MONTH);
	  int lastDayOfLastWeek = c.getActualMaximum(Calendar.DAY_OF_WEEK);
	  
	  String curYear_S = Integer.toString(curYear);
	  String curMonth_S = Integer.toString(curMonth);
	
	  
	  String memoDate = null;
	  if(curYear_S.length()+curMonth_S.length()==6){
		  memoDate = curYear_S + curMonth_S;
	  }else{
		  memoDate = curYear_S +"0"+ curMonth_S;
	  }
	  
	  int mnum = Integer.parseInt(request.getParameter("mnum"));
	  System.out.println(mnum); 
	  System.out.println(memoDate);
	  DiaryDao dd = DiaryDao.getInstance(); 
	  List<model.Diary> list = dd.memoSelect(memoDate,mnum); 
	  
	  request.setAttribute("monthMove", monthMove);
	  request.setAttribute("curYear", curYear);
	  request.setAttribute("curMonth", curMonth);
	  request.setAttribute("curDay", curDay);
	  request.setAttribute("firstDayOfWeek", firstDayOfWeek);
	  request.setAttribute("lastDayOfMonth", lastDayOfMonth);
	  request.setAttribute("lastDayOfLastWeek", lastDayOfLastWeek);
		
	  request.setAttribute("list", list);
	  
		return "./diary/diaryView.jsp";
	}

}
