/*
 * Dian Wen
 * Team 11 Frappuccino
 * 5/27/2015
 * */
package controller;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


public class ImportAction extends Action {
	@Override
	public String getName() {
		return "import.do";
	}
	
	@Override
	public String perform(HttpServletRequest request) {
		return "import.jsp";
	}

	@Override
	public String perform(HttpServletRequest request,
			HttpServletResponse response) {
		return "import.jsp";
	}
}