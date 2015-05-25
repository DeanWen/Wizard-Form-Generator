package controller;

import javax.servlet.http.HttpServletRequest;

public class ImportAction extends Action {
	@Override
	public String getName() {
		return "import.do";
	}
	
	@Override
	public String perform(HttpServletRequest request) {
		return "import.jsp";
	}
}
