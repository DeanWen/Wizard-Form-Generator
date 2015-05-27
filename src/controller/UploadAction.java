package controller;

import java.io.File;
import java.io.StringReader;
import java.util.List;
import java.util.Scanner;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;
import org.apache.commons.io.FilenameUtils;

import com.google.gson.Gson;
import com.google.gson.stream.JsonReader;

import bean.QuestionairBean;

public class UploadAction extends Action {

	@Override
	public String getName() {
		return "upload.do";
	}

	@Override
	public String perform(HttpServletRequest request) {
		return "index.jsp";
	}

	@Override
	public String perform(HttpServletRequest request,
			HttpServletResponse response) {
		try {
			List<FileItem> items = new ServletFileUpload(
					new DiskFileItemFactory()).parseRequest(request);
			for (FileItem item : items) {
				// Process the form file field (input type="file")
				String fileName = FilenameUtils.getName(item.getName());
				System.out.println("Filename -> " + fileName);
				String realPath = request.getServletContext().getRealPath("/");

				File file = new File(realPath + "/uploadFolder");
				file.mkdir();

				String prefix = FilenameUtils.getBaseName(fileName) + "_";
				String suffix = "." + FilenameUtils.getExtension(fileName);

				// Prepare filename prefix and suffix for an unique filename in
				// upload folder.
				File tempFile = File.createTempFile(prefix, suffix, file);
				System.out.println("tempFile -> " + tempFile);

				// File uploaded to "uploadFolder" in Web
				// Server Not database
				item.write(tempFile); 
				
				File jsonFile = tempFile;
				@SuppressWarnings("resource")
				Scanner scanner = new Scanner(jsonFile);
				StringBuilder sb = new StringBuilder();
				while (scanner.hasNextLine()) {
					sb.append(scanner.nextLine());
				}
				String json = sb.toString();
				System.out.print(json);

				Gson gson = new Gson();
				JsonReader reader = new JsonReader(new StringReader(json));
				reader.setLenient(true);
				QuestionairBean bean = new QuestionairBean();
				bean = gson.fromJson(reader, QuestionairBean.class);
				request.setAttribute("uploadBean", bean);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return "index.do";
	}
}