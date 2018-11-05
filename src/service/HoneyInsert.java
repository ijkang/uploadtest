package service;

import java.io.IOException;
import java.sql.Date;
import java.text.SimpleDateFormat;
import java.util.Enumeration;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import dao.HoneyDao;
import dao.MemberDao;
import model.Honey;

public class HoneyInsert implements CommandProcess {

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) {

		// int mnum = Integer.parseInt(request.getParameter("mnum"));
		// String title = request.getParameter("title");
		// String content = request.getParameter("content");
		String realFolder = "";
		String filepath = "";
		MultipartRequest mr = null;
		String saveFolder = "/img";
		realFolder = request.getServletContext().getRealPath(saveFolder);
		int sizeLimit = 5 * 1024 * 1024;

		try {
			mr = new MultipartRequest(request, realFolder, sizeLimit, "utf-8", new DefaultFileRenamePolicy());
		} catch (IOException e) {
			System.out.println("사진문제 = " + e.getMessage());
		}
		Enumeration files = mr.getFileNames();

		while (files.hasMoreElements()) {
			String name = (String) files.nextElement();
			filepath = mr.getFilesystemName(name);
		}
		if(filepath ==null){
			filepath = "1";
		}

		int mnum = Integer.parseInt(mr.getParameter("mnum"));
		String title = mr.getParameter("title");
		String content = mr.getParameter("content");
		String id = mr.getParameter("id");
		String regip = request.getRemoteAddr();

		System.out.println("mnum=" + mnum);
		System.out.println("title = " + title);
		System.out.println("content = " + content);
		System.out.println("filepath = " + filepath);
		System.out.println("id="+id);
		MemberDao md = MemberDao.getInstance();
		String pass = md.selectPass(id);
		System.out.println("pass :"+pass);
		String nic = md.selectNic(id);
		System.out.println("nic :"+nic);
 
		Honey honey = new Honey();

		honey.setNic(nic);
		honey.setId(id);
		honey.setPass(pass);
		honey.setMnum(mnum);
		honey.setTitle(title);
		honey.setContent(content);
		honey.setRegip(regip);
		honey.setFilepath(filepath);

		HoneyDao hd = HoneyDao.getInstance();
		int result = hd.insert(honey);
		if (result > 0) {
			request.setAttribute("result", result);
			request.setAttribute("control", 2);
			request.setAttribute("msg", "꿀팁 작성 완료");
			return "main2.jsp";
		} else {
			return "border.jsp";
		}
	}

}
