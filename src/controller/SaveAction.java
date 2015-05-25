package controller;

import org.mybeans.form.FormBeanException;
import org.mybeans.form.FormBeanFactory;
import javax.servlet.http.HttpServletRequest;
import form.Questionair;

public class SaveAction extends Action {
	private FormBeanFactory<Questionair> formBeanFactory = FormBeanFactory
			.getInstance(Questionair.class);
	
	@Override
	public String getName() {
		return "save.do";
	}

	@Override
	public String perform(HttpServletRequest request) {
		Questionair form = null;
		try{
			form = formBeanFactory.create(request);
		} catch (FormBeanException e1) {
			e1.printStackTrace();
		}
		if(!form.isPresent()) {
			return "changeEmpPWD.jsp";
		}
		request.setAttribute("form", form);
		return "index.jsp";
	}

}
