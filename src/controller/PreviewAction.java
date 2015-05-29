/*
 * Dian Wen
 * Team 11 Frappuccino
 * 5/27/2015
 * */
package controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.mybeans.form.FormBeanException;
import org.mybeans.form.FormBeanFactory;

import bean.QuestionairBean;
import form.QuestionairForm;

public class PreviewAction extends Action {
	private FormBeanFactory<QuestionairForm> formBeanFactory = FormBeanFactory
			.getInstance(QuestionairForm.class);
	
	@Override
	public String getName() {
		return "preview.do";
	}

	@Override
	public String perform(HttpServletRequest request) {
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
			
			bean.setAffiliate(form.getAffiliate());
			bean.setNoneaffiliate(form.getNoneaffiliate());
			bean.setOthers(form.getOthers());
			
			bean.setNoneAffiliateProgram(form.getNoneAffiliateProgram());
			bean.setJointMarketing(form.getJointMarketing());
		    bean.setStateLaw(form.getStateLaw());
		    
		    if (bean.getLawDetails() != null && !bean.getLawDetails().equalsIgnoreCase("-1")) {
		    	bean.setStateLaw(bean.getLawDetails() + bean.getStateLaw());
		    }
		    
		    request.setAttribute("bean", bean);
		
		} catch (FormBeanException e1) {
			e1.printStackTrace();
		}
		
		return "result.jsp";
	}

	@Override
	public String perform(HttpServletRequest request,
			HttpServletResponse response) {
		// TODO Auto-generated method stub
		return null;
	}
}
