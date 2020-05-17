package sist.com.action;

import javax.servlet.http.HttpServletRequest;

import sist.com.dao.AjaxResultDao;
import sist.com.model.AjaxcrudBean;
//pojo规侥
// IOC规侥 : 力绢开青 > DI 规侥
public class AjaxResultAction implements Action {
	private String path;
	private boolean redirect;
	
	
	public AjaxResultAction() {
		super();
	}
	
	public AjaxResultAction(String path, boolean redirect) {
		super();
		this.path = path;
		this.redirect = redirect;
	}
	public String getPath() {
		return path;
	}
	public void setPath(String path) {
		this.path = path;
	}
	public boolean isRedirect() {
		return redirect;
	}
	public void setRedirect(boolean redirect) {
		this.redirect = redirect;
	}

	@Override
	public ActionForWard execute(HttpServletRequest request) {
		// TODO Auto-generated method stub
		String id=request.getParameter("id");
		String contents=request.getParameter("contents");
		AjaxResultDao.insertAjax(new AjaxcrudBean(id, contents));
		request.setAttribute("ajaxList", AjaxResultDao.selectAjax());
		System.out.println(id+" "+contents);
		//System.out.println(AjaxResultDao.selectAjax());
		return new ActionForWard(path,redirect);
	}
	
}
