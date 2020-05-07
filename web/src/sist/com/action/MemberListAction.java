package sist.com.action;

import javax.servlet.http.HttpServletRequest;

public class MemberListAction implements Action{
	private String path;
	private boolean redirect;
	
	public MemberListAction(String path, boolean redirect) {
		super();
		this.path = path;
		this.redirect = redirect;
	}

	@Override
	public ActionForWard execute(HttpServletRequest request) {
		// TODO Auto-generated method stub
		return new ActionForWard(path,redirect);
	}

}
