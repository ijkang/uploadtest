package service;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.DiaryDao;
import dao.MemberDao;


public class DiaryWriteGo implements CommandProcess {

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) {
		String curYear= request.getParameter("curYear");
		String curMonth = request.getParameter("curMonth");
		String curDay = request.getParameter("curDay");
		String textDate = curYear+"-"+curMonth+"-"+curDay;
		
		System.out.println("textDate : "+textDate);
		
		SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");
		
		Date date=null;
		
		try {
			date = format.parse(textDate);
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
//		Date memoDate = null; 
//		SimpleDateFormat sd= new SimpleDateFormat("Y-M-d");
//		try {
//			memoDate= sd.parse(memoDat);
//		} catch (ParseException e) {
//			e.printStackTrace();
//			System.out.println(e.getMessage()+"날짜변환 실패");
//		}
		System.out.println("date : "+date);
		int monthMove= Integer.parseInt(request.getParameter("monthMove"));
		int mnum= Integer.parseInt(request.getParameter("mnum"));
		String id = request.getParameter("id");
		String open = request.getParameter("open");
		String memo = request.getParameter("memo");
		
		DiaryDao dd = DiaryDao.getInstance();
		model.Diary diary = new model.Diary(); 
		diary.setDday(date); 
		diary.setId(id);
		diary.setMemo(memo);
		diary.setMnum(mnum);
		diary.setOpen(open);
		MemberDao md = MemberDao.getInstance();
		String nic = md.selectNic(id);
		diary.setNic(nic);
		int result = dd.memoInsert(diary);
		
		request.setAttribute("result", result);
		request.setAttribute("monthMove", monthMove);
		request.setAttribute("control", 4);
		if(result==0){ request.setAttribute("msg", "작성 실패");
		}else{
			request.setAttribute("msg", "작성 완료");
		}
		return "./check/diaryCheck.jsp";
//		return "main2.jsp";
	}
 
}
