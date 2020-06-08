package sist.com.action;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;

import sist.com.model.People;
import sist.com.model.Process;

public class EljstlAction  implements Action{
	private String path;
	private boolean redirect;	
	public EljstlAction(String path, boolean redirect) {
		super();
		this.path = path;
		this.redirect = redirect;
	}
	@Override
	public ActionForWard execute(HttpServletRequest request) {
		// TODO Auto-generated method stub
		String job=request.getParameter("job");
		ArrayList<People>list=new ArrayList<People>();
		list.add(new People("java", 30,new Process("AA")));
		list.add(new People("oracle", 50,new Process("BB")));
		list.add(new People("jsp", 10,new Process("CC")));
		list.add(new People("jQuery", 39));
		
		if(job!=null && job.equals("people")) {
			request.setAttribute("people", list);
			path="mvc/submvc/view2.jsp";
			redirect=false;
			
		}
		
		
		return new ActionForWard(path, redirect);
	}
	
	

}
