package controller;
import java.io.*;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;


public class UploadAction extends Action {
	@Override
	public String getName() {
		return "upload.do";
	}
	
	@Override
	public String perform(HttpServletRequest request) {
		return null;
	}

	@Override
	public String perform(HttpServletRequest request,
			HttpServletResponse response) {
		try {
			Part filePart = request.getPart("file");
			String fileName = getFileName(filePart);
		    InputStream fileContent = filePart.getInputStream();
		    System.out.print(fileName);
		    System.out.print(fileContent);
		} catch (IllegalStateException | IOException | ServletException e) {
			e.printStackTrace();
		} 
		return "index.do";
	}
	
	private static String getFileName(Part part) {
	    for (String cd : part.getHeader("content-disposition").split(";")) {
	        if (cd.trim().startsWith("filename")) {
	            String fileName = cd.substring(cd.indexOf('=') + 1).trim().replace("\"", "");
	            return fileName.substring(fileName.lastIndexOf('/') + 1).substring(fileName.lastIndexOf('\\') + 1); // MSIE fix.
	        }
	    }
	    return null;
	}
}