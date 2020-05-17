package sist.com.action;
import javax.servlet.http.HttpServletRequest;
public class LocationAction implements Action{
	private String path;
	private boolean redirect;		
	public LocationAction() {
		super();
	}
	public LocationAction(String path, boolean redirect) {
		super();
		this.path = path;
		this.redirect = redirect;
	}
	@Override
	public ActionForWard execute(HttpServletRequest request) {
		// TODO Auto-generated method stub
		String job=request.getParameter("job");
		redirect=job==null;
		String []str={"Ja.v.a","O. r.acl.e","J.sp","C. ss"};
		request.setAttribute("str", str);	
		
		return new ActionForWard(path, redirect);
	}
	

}



