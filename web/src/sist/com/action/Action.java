package sist.com.action;

import javax.servlet.http.HttpServletRequest;

public interface Action {
	public ActionForWard execute(HttpServletRequest request);
}
