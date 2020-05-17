package sist.com.action;

import javax.servlet.http.HttpServletRequest;

public class MvcListAction implements Action{
	private String path;
	private boolean redirect;	
	
	public MvcListAction(String path, boolean redirect) {
		super();
		this.path = path;
		this.redirect = redirect;
	}
	@Override
	public ActionForWard execute(HttpServletRequest request) {
		// TODO Auto-generated method stub
		//String data=(String)request.getSession().getAttribute("data");
		String data=request.getParameter("data");
		request.setAttribute("data", data);
		return new ActionForWard(path, redirect);
	}	
	
	
	

}
