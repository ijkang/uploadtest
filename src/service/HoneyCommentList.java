package service;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.HoneyDao;
import model.Honey;
import model.HoneyPlus;

public class HoneyCommentList implements CommandProcess {

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) {
//		String pageNum = request.getParameter("pageNum");
//		if(pageNum == null || pageNum.equals("")) pageNum="1";
		//null값을 체크하기위해 문자로 pageNum을받고 1을넣어줌
//		int currentPage = Integer.parseInt(pageNum);
		//문자 1을 숫자 1로 변경해서 넣는다
//		int rowPerPage = 10;
		System.out.println("wnum2 받기전");
//		int pagePerBlk =10;
		int wnum2 = Integer.parseInt(request.getParameter("wnum"));
		System.out.println("wnum2 :"+wnum2);
//		int startRow = (currentPage -1)*rowPerPage+1;
		//시작 페이지                    1 - 1 * 10 + 1 = 1 부터
//		int endRow = startRow+rowPerPage-1;
		             //1 + 10 -1 = 10까지
		HoneyDao hd = HoneyDao.getInstance();
//	    List<HoneyPlus> list = hd.commentList(startRow,endRow);
	    List<HoneyPlus> list = hd.commentList(wnum2);
	    
//	    int total = hd.total();
//	    int totalPage = (int)Math.ceil((double)total/rowPerPage); 
	    // 총게시물갯수/표시할페이지갯수 ceil -> 올림 12.2 =13
//	    int startPage = (currentPage -1) /pagePerBlk * pagePerBlk +1;
	                       //현재페이지 -1 / 10*10 +1
//	    int endPage = startPage + pagePerBlk;
//        if(endPage > totalPage) endPage = totalPage;
//        int rowCnt = total -startRow +1 ;
        
        request.setAttribute("list", list);
//        request.setAttribute("rowPerPage",rowPerPage);
//        request.setAttribute("currentPage", currentPage);
//        request.setAttribute("pagePerBlk",pagePerBlk);
//        request.setAttribute("total",total);
//        request.setAttribute("totalPage",totalPage);
//        request.setAttribute("startPage",startPage);
//        request.setAttribute("endPage",endPage);
//        request.setAttribute("rowCnt",rowCnt);
//		
        System.out.println("리턴전");
        
		return "honey/commentList.jsp";
	}

}
