package sist.com.action;

import javax.servlet.http.HttpServletRequest;

import sist.com.dao.MemberDao;
import sist.com.model.MemberBean;

public class MemberModify implements Action{
	private String path;
	private boolean redirect;
	
	
	public MemberModify(String path, boolean redirect) {
		super();
		this.path = path;
		this.redirect = redirect;
	}


	@Override
	public ActionForWard execute(HttpServletRequest request) {
		// TODO Auto-generated method stub
		String no=request.getParameter("no");
		String id=request.getParameter("id");
		String password=request.getParameter("password");
		String gender=request.getParameter("gender");
		String birth=request.getParameter("birth");
		//System.out.println(no+" "+id+" "+password+" "+gender+" "+birth);

		MemberDao.updateMember(new MemberBean(Integer.parseInt(no),id,password,gender,birth));
		
		return new ActionForWard(path, redirect);
	}
	
	
	

}
