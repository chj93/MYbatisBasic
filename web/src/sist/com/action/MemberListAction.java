package sist.com.action;

import javax.servlet.http.HttpServletRequest;

import sist.com.dao.MemberDao;

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
		request.setAttribute("member",MemberDao.selectMember());
		return new ActionForWard(path,redirect);
	}

}
