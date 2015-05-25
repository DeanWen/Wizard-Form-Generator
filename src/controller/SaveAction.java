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
			
			QuestionairBean bean = new QuestionairBean();
			bean.setCompanyName(form.getCompanyName());
			bean.setReviseDate(form.getReviseDate());
			ArrayList<String> list = new ArrayList<String>();
			String[] vals=request.getParameterValues("personalInfoType");
		    for(String v : vals){
		    	list.add(v);
		    }
			bean.setPersonalInfoType(list);
			
		} catch (FormBeanException e1) {
			e1.printStackTrace();
		}
		if(!form.isPresent()) {
			return "index.jsp";
		}
		
		return "index.jsp";
	}

}
