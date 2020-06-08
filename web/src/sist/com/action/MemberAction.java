package sist.com.action;

import java.util.HashMap;

import javax.servlet.http.HttpServletRequest;

import sist.com.dao.MemberDao;

public class MemberAction implements Action{
	private String path;
	private boolean redirect;
	
	public MemberAction(String path, boolean redirect) {
		super();
		this.path = path;
		this.redirect = redirect;
	}

	@Override
	public ActionForWard execute(HttpServletRequest request) {
		// TODO Auto-generated method stub
		
		//me
		HashMap<String, Object> map= new HashMap<String, Object>();
		request.setAttribute("memberList", MemberDao.selectMember(map));
		return new ActionForWard(path,redirect);
/*		
		//¿øº»
		request.setAttribute("memberList", MemberDao.selectMember());
		return new ActionForWard(path,redirect);*/
	}
	
	
}
