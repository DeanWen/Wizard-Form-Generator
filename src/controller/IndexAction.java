/*
 * Dian Wen
 * Team 11 Frappuccino
 * 5/27/2015
 * */
package controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class IndexAction extends Action {	
	@Override
	public String getName() {
		return "index.do";
	}
	
	@Override
	public String perform(HttpServletRequest request) {
		return "index.jsp";
	}

	@Override
	public String perform(HttpServletRequest request,
			HttpServletResponse response) {
		// TODO Auto-generated method stub
		return null;
	}
}
