/*
 * Dian Wen
 * Team 11 Frappuccino
 * 5/27/2015
 * */
package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


public class Controller extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public void init() throws ServletException {
    	Action.add(new IndexAction());
    	Action.add(new ImportAction());
    	Action.add(new SaveAction());
    	Action.add(new PreviewAction());
    	Action.add(new UploadAction());
    }

    public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

    public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	String nextPage = performTheAction(request, response);
        sendToNextPage(nextPage, request, response);
    }
    
    /*
     * Extracts the requested action and (depending on whether the user is logged in)
     * perform it (or make the user login).
     * @param request
     * @return the next page (the view)
     */
    private String performTheAction(HttpServletRequest request, HttpServletResponse response) {
    	String servletPath = request.getServletPath();
		String action = getActionName(servletPath);

		if (action.equals("welcome")) {
			// User is logged in, but at the root of our web app
			return Action.perform("index.do", request);
		}
		if (action.equals("save.do") || action.equals("upload.do")) {
			// User is logged in, but at the root of our web app
			return Action.perform(action, request, response);
		}
		
		// Let the logged in user run his chosen action
		return Action.perform(action, request);
    }

    /*
     * If nextPage is null, send back 404
     * If nextPage ends with ".do", redirect to this page.
     * If nextPage ends with ".jsp", dispatch (forward) to the page (the view)
     *    This is the common case
     */
    private void sendToNextPage(String nextPage, HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
    	if (nextPage == null) {
    		response.sendError(HttpServletResponse.SC_NOT_FOUND,request.getServletPath());
    		return;
    	}
    	
    	if (nextPage.endsWith(".do")) {
			response.sendRedirect(nextPage);
			return;
    	}
    	
    	if (nextPage.endsWith(".jsp")) {
	   		RequestDispatcher d = request.getRequestDispatcher("WEB-INF/" + nextPage);
	   		d.forward(request, response);
	   		return;
    	}
    	
    	if (nextPage.equals("url")) {
    		response.sendRedirect((String) request.getAttribute("url"));
	   		return;
    	}
    	
    	throw new ServletException(Controller.class.getName()+".sendToNextPage(\"" + nextPage + "\"): invalid extension.");
    }

	/*
	 * Returns the path component after the last slash removing any "extension"
	 * if present.
	 */
    private String getActionName(String path) {
    	// We're guaranteed that the path will start with a slash
        int slash = path.lastIndexOf('/');
        return path.substring(slash+1);
    }
}