package service;

import java.sql.Date;
import java.text.SimpleDateFormat;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.HoneyDao;
import dao.MemberDao;
import model.Honey;
import model.Member;

public class HoneyInsert3 implements CommandProcess {

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) {
		String id = request.getParameter("id");
		System.out.println(id);
		int mnum = Integer.parseInt(request.getParameter("mnum"));
		System.out.println(mnum);
		String title = request.getParameter("title");
		System.out.println(title);
		String content = request.getParameter("content");
		System.out.println(content);
		
		MemberDao md = MemberDao.getInstance();
		String pass = md.selectPass(id);
		String nic = md.selectNic(id);

		System.out.println(id + pass + "입니다!.");

		Honey honey = new Honey();
		honey.setNic(nic);
		honey.setId(id);
		honey.setPass(pass);
		honey.setMnum(mnum);
		honey.setTitle(title);
		honey.setContent(content);

		HoneyDao hd = HoneyDao.getInstance();
		int result = hd.insert(honey);
		System.out.println("result = " + result);
		
		if (result > 0){ 
		request.setAttribute("result", result);
		request.setAttribute("control",2);
		request.setAttribute("msg", "꿀팁 작성 완료");
		return "main2.jsp"; 
		}else {
			return "border.jsp";
		}

	}

}
