package sist.com.action;

import javax.servlet.http.HttpServletRequest;

public class MvcHitAction implements Action{
	private String path;
	private boolean redirect;
	public MvcHitAction() {
		super();
	}
	public MvcHitAction(String path, boolean redirect) {
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
		System.out.println("HitAction:"+no+" "+page+" "+data);
		path+="&no="+no+"&page="+page+"&data="+data;
		return new ActionForWard(path, redirect);
	}	
	
	
	

}
