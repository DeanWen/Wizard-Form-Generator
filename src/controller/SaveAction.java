package controller;
import java.util.*;
import org.mybeans.form.FormBeanException;
import org.mybeans.form.FormBeanFactory;
import bean.QuestionairBean;
import javax.servlet.http.HttpServletRequest;
import form.QuestionairForm;

public class SaveAction extends Action {
	private FormBeanFactory<QuestionairForm> formBeanFactory = FormBeanFactory
			.getInstance(QuestionairForm.class);
	
	@Override
	public String getName() {
		return "save.do";
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
			ArrayList<String> list = new ArrayList<String>();
			String[] vals = request.getParameterValues("personalInfoType");
		    for(String v : vals){
		    	list.add(v);
		    }
			bean.setPersonalInfoType(list);
			bean.setAffiliateProgram(form.isAffiliateProgram());
			bean.setShareAffiliateProgram(form.isShareAffiliateProgram());
			if (bean.isShareAffiliateProgram()) {
				bean.setAffiliateProgram(form.getAffiliateProgram());
			}
			bean.setShareNoneAffiliateProgram(form.isShareNoneAffiliateProgram());
			if (bean.isShareNoneAffiliateProgram()) {
				bean.setNoneAffiliateProgram(form.getNoneAffiliateProgram());
			}
			bean.setJointMarketing(form.isJointMarketing());
			if (bean.isJointMarketing()) {
				bean.setJointMarketing(form.getJointMarketing());
			}
			//boolean[] dysVals = request.getParameterValues("doYouShare");
			//bean.setDoYouShare(dysVals);
			//boolean[] cmlVals = request.getParameterValues("customerLimit");
			//bean.setDoYouShare(cmlVals);
			
			bean.setPhone(form.getPhone());
			bean.setWebsite(form.getWebsite());
			bean.setTwoOrMoreInstitute(form.isTwoOrMoreInstitute());
			if (bean.isTwoOrMoreInstitute()) {
				bean.setWhoseNotice(form.getWhoseNotice());
			}
			bean.setHowProtect(form.getHowProtect());
			
			ArrayList<String> clist = new ArrayList<String>();
			String[] cVals = request.getParameterValues("collect");
		    for(String v : cVals){
		    	clist.add(v);
		    }
		    bean.setCollect(clist);
		    
		    bean.setFromAff(form.isFromAff());
		    if (!bean.isFromAff()) {
		    	bean.setFromCompany(form.isFromCompany());
		    }
		    
		    bean.setPresentLaw(form.isPresentLaw());
		    bean.setWhatHappenWhenLimit(form.getWhatHappenWhenLimit());
		    bean.setStateLaw(form.getStateLaw());
		    
		    request.setAttribute("bean", bean);
		    return "preview.do";
		} catch (FormBeanException e1) {
			e1.printStackTrace();
		}
		
		return "preview.do";
	}
}
