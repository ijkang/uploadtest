package service;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class HoneyBorder implements CommandProcess {

	public String requestPro(HttpServletRequest request, HttpServletResponse response) {

		return "honey/border.jsp";
	}

}
