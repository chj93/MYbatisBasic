package sist.com.action;

import javax.servlet.http.HttpServletRequest;

public class ModifyAction implements Action{
	private String path;
	private boolean redirect;
	
	public ModifyAction(String path, boolean redirect) {
		super();
		this.path = path;
		this.redirect = redirect;
	}

	@Override
	public ActionForWard execute(HttpServletRequest request) {
		// TODO Auto-generated method stub
		String id=request.getParameter("id");
		
		//System.out.println("°ª"+id);
		
		return new ActionForWard(path,redirect);
	}
	
}
