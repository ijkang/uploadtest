package service;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.HoneyDao;
import model.Honey;

public class HoneyList implements CommandProcess{

	public String requestPro(HttpServletRequest request, HttpServletResponse response) {
	   String pageNum = request.getParameter("pageNum");
		if(pageNum == null || pageNum.equals("")) pageNum="1";
		int currentPage = Integer.parseInt(pageNum);
		int rowPerPage = 15;
		int pagePerBlk =10;
		
		int startRow = (currentPage -1)*rowPerPage+1;
		int endRow = startRow+rowPerPage-1;
		HoneyDao hd = HoneyDao.getInstance();
	    List<Honey> list = hd.selectList(startRow,endRow);
	    
	    int total = hd.total();
	    int totalPage = (int)Math.ceil((double)total/rowPerPage); 
	    int startPage = (currentPage -1) /pagePerBlk * pagePerBlk +1;
	    int endPage = startPage + pagePerBlk;
        if(endPage > totalPage) endPage = totalPage;
        int rowCnt = total -startRow +1 ;
        
        request.setAttribute("list", list);
        request.setAttribute("rowPerPage",rowPerPage);
        request.setAttribute("currentPage", currentPage);
        request.setAttribute("pagePerBlk",pagePerBlk);
        request.setAttribute("total",total);
        request.setAttribute("totalPage",totalPage);
        request.setAttribute("startPage",startPage);
        request.setAttribute("endPage",endPage);
        request.setAttribute("rowCnt",rowCnt);
		
		return "honey/borderList.jsp";
	}
	

}
