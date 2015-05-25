package controller;

import org.mybeans.form.FormBeanException;
import org.mybeans.form.FormBeanFactory;
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
			
		} catch (FormBeanException e1) {
			e1.printStackTrace();
		}
		if(!form.isPresent()) {
			return "index.jsp";
		}
		
		return "index.jsp";
	}

}
