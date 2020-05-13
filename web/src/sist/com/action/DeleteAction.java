package sist.com.action;

import javax.servlet.http.HttpServletRequest;

import sist.com.dao.MemberDao;

public class DeleteAction implements Action{
	private String path;
	private boolean redirect;
	

	public DeleteAction(String path, boolean redirect) {
		super();
		this.path = path;
		this.redirect = redirect;
	}

	@Override
	public ActionForWard execute(HttpServletRequest request) {
		// TODO Auto-generated method stub
		
		String no=request.getParameter("no");
		String job=request.getParameter("job");
	
		
		//ajax로 넘어오는 것 - 하나만 삭제
		if(job!=null && job.equals("ajaxDel")) {
			MemberDao.deleteMember(Integer.parseInt(no));
		//비동기로 넘어오는 것 - 모두 삭제
		}else {
			String []nos=request.getParameterValues("nt");
			for(String n:nos) {
				MemberDao.deleteMember(Integer.parseInt(n));
			}
		}
		
		return new ActionForWard(path, redirect);
	}
	

}
