package sist.com.action;

import java.util.HashMap;

import javax.servlet.http.HttpServletRequest;

import sist.com.dao.MemberDao;
import sist.com.model.PagingProcess;

public class MemberListAction implements Action{
	private String path;
	private boolean redirect;
	private PagingProcess process=new PagingProcess();
	//DI. 의존객체에 PagingProcess를 넣어놓음
	
	public MemberListAction(String path, boolean redirect) {
		super();
		this.path = path;
		this.redirect = redirect;
	}

	@Override
	public ActionForWard execute(HttpServletRequest request) {
		// TODO Auto-generated method stub
/*		String query=request.getParameter("query");
		String data=request.getParameter("data");
		HashMap<String, Object>map=new HashMap<String,Object>();
		map.put("query",query);
		map.put("data",data);
		
		request.setAttribute("member",MemberDao.selectMember(map));
		
		if(query!=null&&data!=null) {
			path="jsp/memberView.jsp";
		}
		//System.out.println(path);
*/		
		process.makeProcess(request);
		return new ActionForWard(path,redirect);
	}

}
