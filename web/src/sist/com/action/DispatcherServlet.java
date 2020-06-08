package sist.com.action;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class DispatcherServlet extends HttpServlet{

	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//super.service(req, resp);
		//System.out.println("DispatcherServlet");
		
		request.setCharacterEncoding("UTF-8"); //post방식일떄만 이곳에서.
		//~~.do로 들어오는값들을 cmd로 받아서 각각 서비스되도록
		String cmd=request.getParameter("cmd");
		Action action = ActionFactory.getAction(cmd);
		
		ActionForWard af=action.execute(request);
		if(af.isRedirect()) {
		//af.isRedirect()== true 리다이렉트
		//서블릿-> 개별 서비스
		//url이 바뀔때 마다 서비스가 바뀌기 때문에 request, response는 다시! -> url이 변동되지 않도록
		//세션, 어플리케이션, 디스패쳐, 쿠키는  X
			//af.isRedirect()가 true면 리다이렉트로
			response.sendRedirect(af.getPath());
			
		}else {
			//af.isRedirect()== false 디스페쳐
			//url 바뀜.
			RequestDispatcher rd=request.getRequestDispatcher(af.getPath());
			rd.forward(request, response);
		}
	}
	
}
