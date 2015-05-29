/* Dian Wen
 * Team 11 Frappuccino
 * 5/27/2015
 * */
package controller;
import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.InputStream;
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
			if (request.getParameterValues("personalInfoType") != null) {
				String[] vals = request.getParameterValues("personalInfoType");
				bean.setPersonalInfoType(vals);
			}
		    bean.setAffiliatemarkettocus(form.getAffiliatemarkettocus());
		    bean.setIsoptout(form.getIsoptout());
		    if(bean.getIsoptout().equalsIgnoreCase("yes")) {
				if (request.getParameterValues("opt_out") != null) {
					String[] vals = request.getParameterValues("opt_out");
					bean.setOpt_out(vals);
				}
		    }
		    
		    bean.setQuestion1(form.getQuestion1());
		    bean.setQuestion1b(form.getQuestion1b());
		    bean.setQuestion2(form.getQuestion2());
		    bean.setQuestion2b(form.getQuestion2b());
		    bean.setQuestion3(form.getQuestion3());
		    bean.setQuestion3b(form.getQuestion3b());
		    bean.setQuestion4(form.getQuestion4());
		    bean.setQuestion4b(form.getQuestion4b());
		    bean.setQuestion5(form.getQuestion5());
		    bean.setQuestion5b(form.getQuestion5b());
		    bean.setQuestion6(form.getQuestion6());
		    bean.setQuestion6b(form.getQuestion6b());
		    
		    bean.setOptPhone(form.getOptPhone());
		    bean.setOptWebsite(form.getOptWebsite());
		    bean.setOptionsRadios(form.getOptionsRadios());
		    
		    bean.setCity(form.getCity());
		    bean.setAddress(form.getAddress());
		    bean.setState(form.getState());
		    bean.setZipcode(form.getZipcode());
		    bean.setThirdPartyCookie(form.getThirdPartyCookie());
		    bean.setDntoptput(form.getDntoptput());
		    bean.setNumOfDays(form.getNumOfDays());
		    bean.setPhoneText(form.getPhoneText());
		    bean.setWebsiteText(form.getWebsiteText());
		    bean.setWhoseNotice(form.getWhoseNotice());
		    bean.setHowProtect(form.getHowProtect());
		    
			if (request.getParameterValues("collect") != null) {
				String[] vals = request.getParameterValues("collect");
				bean.setCollect(vals);
			}
			
			bean.setCollectaffiliate(form.getCollectaffiliate());
			bean.setIsFromCompany(form.getIsFromCompany());
			bean.setIsPresentLaw(form.getIsPresentLaw());
			if (bean.getIsPresentLaw().equalsIgnoreCase("yes")) {
				bean.setLawDetails(form.getLawDetails());
			}
			bean.setWhatHappenWhenLimit(form.getWhatHappenWhenLimit());
			bean.setAffiliateProgram(form.getAffiliateProgram());
			bean.setNoneAffiliateProgram(form.getNoneAffiliateProgram());
			bean.setJointMarketing(form.getJointMarketing());
		    bean.setStateLaw(form.getStateLaw());
		    
		    if (bean.getLawDetails() != null && !bean.getLawDetails().equalsIgnoreCase("-1")) {
		    	bean.setStateLaw(bean.getLawDetails() + bean.getStateLaw());
		    }
		    
		    request.setAttribute("bean", bean);
		    
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