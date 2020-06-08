package sist.com.action;

import javax.servlet.http.HttpServletRequest;

public class MvcInsertAction  implements Action{
	private String path;
	private boolean redirect;	
	
	public MvcInsertAction() {
		super();
	}
	public MvcInsertAction(String path, boolean redirect) {
		super();
		this.path = path;
		this.redirect = redirect;
	}

	@Override
	public ActionForWard execute(HttpServletRequest request) {
		// TODO Auto-generated method stub
		//dao.insert();
		String data=request.getParameter("data");
		//request.getSession().setAttribute("data", data);
		System.out.println("MvcInsertAction"+data+"Injection");
		//"mvcList.do?cmd=mvcList"
		path+="&data="+data;
		return new ActionForWard(path, redirect);
	}
	
	

}
