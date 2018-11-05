package service;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.HelperDao;
import model.Helper;

public class HelpFromListAction implements CommandProcess {

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) {
	
		int mnum = Integer.parseInt(request.getParameter("mnum"));
		System.out.println(mnum);
		int count=0;
		int rowPerPage  = 10;	//pageSize
		int pagePerBlk  = 10;	

		String pageNum = request.getParameter("pageNum");
		if (pageNum == null || pageNum.equals("")) 	pageNum = "1";
		int currentPage = Integer.parseInt(pageNum);		
	    int startRow    = (currentPage - 1) * rowPerPage + 1;
	    int endRow      = startRow + rowPerPage - 1;
	    
		HelperDao md = HelperDao.getInstance();
		List<Helper> list = md.selectHelperFromList(startRow,endRow,mnum);
		int total   = md.helpFromcount(mnum);
		
		int totalPage   = (int)Math.ceil((double)total/rowPerPage);
		int startPage=(currentPage - 1) / pagePerBlk * pagePerBlk + 1;
		int endPage = startPage + pagePerBlk - 1;   
		if (endPage > totalPage) endPage = totalPage;
		int rowCnt  = total - startRow + 1;
		
		System.out.println("count: "+count);
		System.out.println("total: "+total);
		request.setAttribute("pagePerBlk", pagePerBlk);
		request.setAttribute("currentPage", currentPage);
		request.setAttribute("total", total);
		request.setAttribute("totalPage", totalPage);
		request.setAttribute("startPage", startPage);
		request.setAttribute("endPage", endPage);
		request.setAttribute("rowCnt", rowCnt);
		request.setAttribute("list", list);
		request.setAttribute("cnt", count);
		
		return "helper/helperFromList.jsp";
		
	}

}
