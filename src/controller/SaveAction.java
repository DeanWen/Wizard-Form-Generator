package controller;
import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.*;

import org.mybeans.form.FormBeanException;
import org.mybeans.form.FormBeanFactory;

import com.google.gson.Gson;

import bean.QuestionairBean;

import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import form.QuestionairForm;

public class SaveAction extends Action {
	private FormBeanFactory<QuestionairForm> formBeanFactory = FormBeanFactory
			.getInstance(QuestionairForm.class);
	
	@Override
	public String getName() {
		return "save.do";
	}

	@Override
	public String perform (HttpServletRequest request, HttpServletResponse response) {
		QuestionairForm form = null;
		try{
			form = formBeanFactory.create(request);
			request.setAttribute("form", form);
			if(!form.isPresent()) {
				return "index.jsp";
			}
			
			QuestionairBean bean = new QuestionairBean();
			bean.setCompanyName(form.getCompanyName());
			bean.setReviseDate(form.getReviseDate());
			ArrayList<String> list = new ArrayList<String>();
			if (request.getParameterValues("personalInfoType") != null) {
				String[] vals = request.getParameterValues("personalInfoType");
			    for(String v : vals){
			    	list.add(v);
			    }
			}
			
//			bean.setPersonalInfoType(list);
//			bean.setAffiliateProgram(form.isAffiliateProgram());
//			bean.setShareAffiliateProgram(form.isShareAffiliateProgram());
//			if (bean.isShareAffiliateProgram().equalsIgnoreCase("yes")) {
//				bean.setAffiliateProgram(form.getAffiliateProgram());
//			}
//			bean.setShareNoneAffiliateProgram(form.isShareNoneAffiliateProgram());
//			if (bean.isShareNoneAffiliateProgram().equalsIgnoreCase("yes")) {
//				bean.setNoneAffiliateProgram(form.getNoneAffiliateProgram());
//			}
//			bean.setJointMarketing(form.isJointMarketing());
//			if (bean.isJointMarketing().equalsIgnoreCase("yes")) {
//				bean.setJointMarketing(form.getJointMarketing());
//			}
//			boolean[] dysVals = request.getParameterValues("doYouShare");
//			bean.setDoYouShare(dysVals);
//			boolean[] cmlVals = request.getParameterValues("customerLimit");
//			bean.setDoYouShare(cmlVals);
//			
//			bean.setPhone(form.getPhone());
//			bean.setWebsite(form.getWebsite());
//			bean.setTwoOrMoreInstitute(form.isTwoOrMoreInstitute());
//			if (bean.isTwoOrMoreInstitute()) {
//				bean.setWhoseNotice(form.getWhoseNotice());
//			}
//			bean.setHowProtect(form.getHowProtect());
//			
//			ArrayList<String> clist = new ArrayList<String>();
//			String[] cVals = request.getParameterValues("collect");
//		    for(String v : cVals){
//		    	clist.add(v);
//		    }
//		    bean.setCollect(clist);
//		    
//		    bean.setFromAff(form.isFromAff());
//		    if (!bean.isFromAff()) {
//		    	bean.setFromCompany(form.isFromCompany());
//		    }
//		    
//		    bean.setPresentLaw(form.isPresentLaw());
//		    bean.setWhatHappenWhenLimit(form.getWhatHappenWhenLimit());
//		    bean.setStateLaw(form.getStateLaw());
//		    
//		    request.setAttribute("bean", bean);
		    
		    Gson gson = new Gson();
		    
			/*
			 *  convert java object to JSON format,
			 *  and returned as JSON formatted string
			 */
			String json = gson.toJson(bean);
			System.out.println(json);
		    
			/* 
			 * DownLoad as txt File 
			 * */
			response.setContentType("application/octet-stream");
	        response.setHeader("Content-Disposition","attachment;filename=data.txt");
			ServletOutputStream out;
			try {
				InputStream in = new ByteArrayInputStream(json.getBytes("UTF-8"));
				out = response.getOutputStream();
				byte[] outputByte = new byte[4096];
				//copy binary content to output stream
				while(in.read(outputByte, 0, 4096) != -1){
					out.write(outputByte, 0, 4096);
				}
				in.close();
				out.flush();
				out.close();
			} catch (IOException e) {
				e.printStackTrace();
			}
		} catch (FormBeanException e1) {
			e1.printStackTrace();
		}
		
		return "preview.do";
	}

	@Override
	public String perform(HttpServletRequest request) {
		// TODO Auto-generated method stub
		return null;
	}
}