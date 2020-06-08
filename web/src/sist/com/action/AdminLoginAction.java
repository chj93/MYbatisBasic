package sist.com.action;

import java.io.UnsupportedEncodingException;

import javax.servlet.http.HttpServletRequest;

public class AdminLoginAction implements Action{
	private String path;
	private boolean redirect;
	public AdminLoginAction() {
		super();
	}
	public AdminLoginAction(String path, boolean redirect) {
		super();
		this.path = path;
		this.redirect = redirect;
	}
	@Override
	public ActionForWard execute(HttpServletRequest request) {
		// TODO Auto-generated method stub

		String id=request.getParameter("id");
		String password=request.getParameter("password");
		//System.out.println(id+" "+password);
		
		if(id.equals("Admin")&&password.equals("1234")) {
			//path="list.jsp"; X
			path="memberList.do?cmd=memberList";
			request.getSession().setAttribute("id", id);
			request.getSession().setMaxInactiveInterval(60);
		}else {
			path="jsp/admin.jsp";
			redirect=true;
			//루트 주소 이후 기준
		}
		
		
		
		return new ActionForWard(path, redirect);
	}
	
	

}
