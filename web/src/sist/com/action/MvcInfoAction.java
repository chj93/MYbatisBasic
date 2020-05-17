package sist.com.action;

import javax.servlet.http.HttpServletRequest;

public class MvcInfoAction implements Action{
	private String path;
	private boolean redirect;
	public MvcInfoAction() {
		super();
	}
	public MvcInfoAction(String path, boolean redirect) {
		super();
		this.path = path;
		this.redirect = redirect;
	}
	@Override
	public ActionForWard execute(HttpServletRequest request) {
		// TODO Auto-generated method stub	
		String no=request.getParameter("no");
		String page=request.getParameter("page");
		String data=request.getParameter("data");
		System.out.println("InfoAction:"+no+" "+page+" "+data);
		return new ActionForWard(path, redirect);
	}

}
