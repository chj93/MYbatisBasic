package sist.com.action;

import javax.servlet.http.HttpServletRequest;

public class AjaxList implements Action{
	private String path;
	private boolean redirect;
	
	public String getPath() {
		return path;
	}
	public void setPath(String path) {
		this.path = path;
	}
	public boolean isRedirect() {
		return redirect;
	}
	public void setRedirect(boolean redirect) {
		this.redirect = redirect;
	}
	
	public AjaxList() {
		super();
	}
	public AjaxList(String path, boolean redirect) {
		super();
		this.path = path;
		this.redirect = redirect;
	}
	
	@Override
	public ActionForWard execute(HttpServletRequest request) {
		// TODO Auto-generated method stub
		request.setAttribute("Msg", "Hello");
		request.setAttribute("job", request.getParameter("job"));
		request.setAttribute("no", request.getParameter("no"));
		return new ActionForWard(path,redirect);
	}


}
